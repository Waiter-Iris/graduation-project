package com.dream.rent.fileupload;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class FileUpload extends HttpServlet {
	 public void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        request.setCharacterEncoding("utf-8");  //���ñ���
	        //��ô����ļ���Ŀ����
	        DiskFileItemFactory factory = new DiskFileItemFactory();
	        //��ȡ�ļ���Ҫ�ϴ�����·��
	        String path = "F:\\��ѵ����\\JSP\\frameworkspace\\rent\\src\\main\\webapp\\images";
	        request.getRealPath(path);
//	      String path = "c:/upload1";
	        //���û�����������õĻ����ϴ���� �ļ� ��ռ�� �ܶ��ڴ棬
	        //������ʱ��ŵ� �洢�� , ����洢�ң����Ժ� ���մ洢�ļ� ��Ŀ¼��ͬ
	        /**
	         * ԭ�� �����ȴ浽 ��ʱ�洢�ң�Ȼ��������д�� ��ӦĿ¼��Ӳ���ϣ� 
	         * ������˵ ���ϴ�һ���ļ�ʱ����ʵ���ϴ������ݣ���һ������ .tem ��ʽ�� 
	         * Ȼ���ٽ�������д�� ��ӦĿ¼��Ӳ����
	         */
	        factory.setRepository(new File(path));
	        //���� ����Ĵ�С�����ϴ��ļ������������û���ʱ��ֱ�ӷŵ� ��ʱ�洢��
	        factory.setSizeThreshold(1024*1024) ;
	        //��ˮƽ��API�ļ��ϴ�����
	        ServletFileUpload upload = new ServletFileUpload(factory);
	        try {
	        	//�����ϴ�����ļ�
	            List<FileItem> list = (List<FileItem>)upload.parseRequest(request);
	            for(FileItem item : list){
	                //��ȡ������������
	                String name = item.getFieldName();
	                //�����ȡ�� ����Ϣ����ͨ�� �ı� ��Ϣ
	                if(item.isFormField()){
	                    //��ȡ�û�����������ַ��� ���������ͦ�ã���Ϊ���ύ�������� �ַ������͵�
	                    String value = item.getString() ;
	                    request.setAttribute(name, value);
	                }else{//�Դ���ķ� �򵥵��ַ������д��� ������˵�����Ƶ� ͼƬ����Ӱ��Щ
	                    /**
	                     * ������������Ҫ��ȡ �ϴ��ļ�������
	                     */
	                    //��ȡ·����
	                    String value = item.getName() ;
	                    //���������һ����б��
	                    int start = value.lastIndexOf("\\");
	                    //��ȡ �ϴ��ļ��� �ַ������֣���1�� ȥ����б�ܣ�
	                    String filename = value.substring(start+1);
	                    request.setAttribute(name, filename);
	                    //����д��������
	                    //���׳����쳣 ��exception ��׽
	                    //item.write( new File(path,filename) );//�������ṩ��
	                    //�ֶ�д��
	                    OutputStream out = new FileOutputStream(new File(path,filename));
	                    InputStream in = item.getInputStream() ;
	                    int length = 0 ;
	                    byte [] buf = new byte[1024] ;
	                  //  System.out.println("��ȡ�ϴ��ļ����ܹ���������"+item.getSize());
	                    // in.read(buf) ÿ�ζ��������ݴ����   buf ������
	                    while( (length = in.read(buf) ) != -1){
	                        //��   buf ������ ȡ������ д�� ���������������
	                        out.write(buf, 0, length);
	                    }
	                    
	                    Class.forName("com.mysql.jdbc.Driver");
	                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rent","root","123456");
	                    String sql="insert into picture(picture_one) values(?)";
	                    
	                    
	                    PreparedStatement ps = conn.prepareStatement(sql);
	                    ps.setString(1, path+"\\"+filename);
	                    int row  = ps.executeUpdate();
	                    System.out.println(row);
	                    
	                    in.close();
	                    out.close();
	        }
	            }
	        }catch (FileUploadException e) {
	            e.printStackTrace();
	        }catch (Exception e) {
	            e.printStackTrace();
	        }
	        request.getRequestDispatcher("filedemo.jsp").forward(request, response);
	    }

	    public void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        doGet(request, response);
	    }
	}     

