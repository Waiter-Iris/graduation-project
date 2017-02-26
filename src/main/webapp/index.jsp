<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>房屋租赁系统的首页</title>
    <!--
			房屋租赁管理系统
        	作者：胡亚男
        	时间：2016-09-22
        	描述：这是这个项目的首页
        -->
        <!-- 导入页面所需要的css样式和js特效 -->
        
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/index.css" />
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/lr_header.css" />
    <script type="text/javascript" src="js/jquery.min.js" ></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script>
    	$(document).ready(function(){
    		$(".m_city").mouseenter(function(){
    			$(this).css('background','url(images/hot_city/city_back.jpg)');
    		});
    		$(".m_city").mouseleave(function(){
    			$(this).css('background','url(images/hot_city/city_out.jpg)');
    		});
    	});
    </script>
  </head>
  
  <body>
  	<!--页面头部导航开始-->
	<div class="header">
		<div class="header_all">
			<!--左边导航开始-->
			<div class="header_l">
				<div class="p_nav">
					<p>客服电话：400-123-123</p>
				</div>
				<a href="roomIndex.do">房源</a>
				<a href="index.jsp">首页</a>
				<div class="p_log">
					<p>租房网</p>
				</div>
			</div>
			<!--左边导航结束-->
			<!--左边导航开始-->
			<div class="header_r">
				<!--用户登录注册开始-->
				<div class="lr_did"></div>
				<div class="login_regist">
					<c:if test="${not empty user.userName}">
						<ul class="nav">
							<li  class="active" class="dropdown" style="float: left">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#">
									欢迎用户：${user.userName } <span class="caret"></span>
								</a>
								<ul class="dropdown-menu">
									<li><a href="getHouseByUId.do?u_id=${user.id }">个人中心</a></li>
								</ul>
							</li>
							<li style="float:left;"><a href="safeExit.do">安全退出</a></li>
						</ul>
					</c:if>
					<c:if test="${empty user.userName}">
					<a href="userLoginRegist.do" style="display: block; margin-top: 10px;">
						登录/注册
					</a>
					</c:if>
				</div>
				<!--用户登录注册结束-->
				<div class="seller_enlist">
					<c:if test="${not empty user.userName}">
						<a href="release_room_infor.jsp">免费发布房源</a>
					</c:if>
				</div>
			</div>
			<!--左边导航结束-->
		</div>
	</div>
	<!--页面头部导航结束-->
	<!--首页广告轮播开始-->
	<div class="carousel_intro">
		<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
			<!-- 轮播（Carousel）指标 -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>   
			<!-- 轮播（Carousel）项目 -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/carousel01.jpg" alt="First slide" style="height: 440px;width: 100%;">
				</div>
				<div class="item">
					<img src="images/carousel02.jpg" alt="Second slide" style="height: 440px;width: 100%;">
				</div>
				<div class="item">
					<img src="images/carousel03.jpg" alt="Third slide" style="height: 440px;width: 100%;">
				</div><div class="item">
					<img src="images/carousel04.jpg" alt="Third slide" style="height: 440px;width: 100%;">
				</div>
			</div>
		</div> 				
	</div>
	<!--首页广告轮播结束-->
<!--页面内容模块开始-->
<div class="myContainer">
	<!--轮播下面的简介开始-->
	<div class="myCon_ad">
		<div class="myCon_ad_css">
			<div class="myCon_ad_per">
				<div class="myCon_ad_per_top">满足一家人住宿</div>
				<div class="myCon_ad_per_bottom">和家一样的温暖</div>
			</div>
			<div class="myCon_ad_per">
				<div class="myCon_ad_per_top">家一般的舒适</div>
				<div class="myCon_ad_per_bottom">这个和家一样的地方让你心情愉悦</div>
			</div>
			<div class="myCon_ad_per">
				<div class="myCon_ad_per_top">家一般的舒适</div>
				<div class="myCon_ad_per_bottom">这个和家一样的地方让你心情愉悦</div>
			</div>
			<div class="myCon_ad_per">
				<div class="myCon_ad_per_top">家一般的舒适</div>
				<div class="myCon_ad_per_bottom">这个和家一样的地方让你心情愉悦</div>
			</div>
		</div>
	</div>
	<!--轮播下面的简介结束-->
	<!--热门短租城市开始-->
	<div class="short_rent_hotCity">
		<div class="srhc_title">
			<div class="tit_top">热门城市</div>
			<div class="tit_bottom">在美好的城市中相遇</div>	
		</div>
		<div class="srhc_intro">
			<ul>
				<li>
					<img src="images/hot_city/shanghai.jpg" />
					<a href="room_index.jsp" class="m_city">上海</a>
				</li>
				<li>
					<img src="images/hot_city/xian.jpg" />
					<a href="room_index.jsp" class="m_city">西安</a>
				</li>
				<li>
					<img src="images/hot_city/guangzhou.jpg" />
					<a href="room_index.jsp" class="m_city">广州</a>
				</li>
				<li>
					<img src="images/hot_city/shenzhen.jpg"/>
					<a href="room_index.jsp" class="m_city">深圳</a>
				</li>
				<li>
					<img src="images/hot_city/beijing.jpg" />
					<a href="room_index.jsp" class="m_city">北京</a>
				</li>
				<li>
					<img src="images/hot_city/xiamen.jpg" />
					<a href="room_index.jsp" class="m_city">厦门</a>
				</li>
				<li>
					<img src="images/hot_city/hangzhou.jpg" />
					<a href="room_index.jsp" class="m_city">杭州</a>
				</li>
				<li>
					<img src="images/hot_city/sanya.jpg" />
					<a href="room_index.jsp" class="m_city">三亚</a>
				</li>
			</ul>
		</div>
	</div>
	<!--热门短租城市结束-->
	<!--当地热门长期出租房开始-->
	<div class="long_rent_hotRoom">
		<div class="lrh_c">
		<div class="lrhr_title">a
			<div class="tit_top">热门房源</div>
			<div class="tit_bottom">在温馨中度过每一天</div>
		</div>
		<!--热门房源开始-->
		<div class="lrhr_intro">
			<ul>
				<li>
					<a href="room_per.jsp"><img src="images/hot_room/01.jpg"/></a>
					<a href="room_per.jsp"><p>宽窄巷子 人民公园天府广场</p></a>
					<a href="room_per.jsp" class="a_css"><p class="p_css">4.4分</p></a>
					<a href="room_per.jsp" class="a_css"><p class="p_css">23条评论</p></a>
					<a href="room_per.jsp" class="a_css"><p class="p_css">可住5人</p></a>
				</li>
				<li>
					<a href="room_per.jsp"><img src="images/hot_room/02.jpg"/></a>
					<a href="room_per.jsp"><p>宽窄巷子 人民公园天府广场</p></a>
					<a href="room_per.jsp" class="a_css"><p class="p_css">4.4分</p></a>
					<a href="room_per.jsp" class="a_css"><p class="p_css">23条评论</p></a>
					<a href="room_per.jsp" class="a_css"><p class="p_css">可住5人</p></a>
				</li>
				<li>
					<a href="room_per.jsp"><img src="images/hot_room/03.jpg"/></a>
					<a href="room_per.jsp"><p>宽窄巷子 人民公园天府广场</p></a>
					<a href="room_per.jsp" class="a_css"><p class="p_css">4.4分</p></a>
					<a href="room_per.jsp" class="a_css"><p class="p_css">23条评论</p></a>
					<a href="room_per.jsp" class="a_css"><p class="p_css">可住5人</p></a>
				</li>
				<li>
					<a href="room_per.jsp"><img src="images/hot_room/04.jpg"/></a>
					<a href="room_per.jsp"><p>宽窄巷子 人民公园天府广场</p></a>
					<a href="room_per.jsp" class="a_css"><p class="p_css">4.4分</p></a>
					<a href="room_per.jsp" class="a_css"><p class="p_css">23条评论</p></a>
					<a href="room_per.jsp" class="a_css"><p class="p_css">可住5人</p></a>
				</li>
				<li>
					<a href="room_per.jsp"><img src="images/hot_room/05.jpg"/></a>
					<a href="room_per.jsp"><p>宽窄巷子 人民公园天府广场</p></a>
					<a href="room_per.jsp" class="a_css"><p class="p_css">4.4分</p></a>
					<a href="room_per.jsp" class="a_css"><p class="p_css">23条评论</p></a>
					<a href="room_per.jsp" class="a_css"><p class="p_css">可住5人</p></a>
				</li>
				<li>
					<a href="room_per.jsp"><img src="images/hot_room/06.jpg"/></a>
					<a href="room_per.jsp"><p>宽窄巷子 人民公园天府广场</p></a>
					<a href="room_per.jsp" class="a_css"><p class="p_css">4.4分</p></a>
					<a href="room_per.jsp" class="a_css"><p class="p_css">23条评论</p></a>
					<a href="room_per.jsp" class="a_css"><p class="p_css">可住5人</p></a>
				</li>
			</ul>
		</div>
		<!--热门房源结束-->
		</div>
	</div>
	<!--当地热门长期出租房结束-->
</div>
<!--页面内容模块结束-->

<!--页面尾部模块开始-->
<div class="footer">
	<<div class="partner"><span class="partner_friend">合作伙伴：</span><ul><li><a href="http://dl.xdf.cn" target="_blank">大连英语培训</a></li><li><a href="http://www.0759home.com" target="_blank">湛江购房网</a></li><li><a href="http://dalian.baixing.com" target="_blank">大连百姓网</a></li><li><a href="http://dl.ganji.com" target="_blank">大连赶集网</a></li><li><a href="http://www.jzhome.cn" target="_blank">锦州房产网</a></li><li><a href="http://oldhouse.fdc.com.cn" target="_blank">武汉二手房</a></li><li><a href="http://dl.city8.com" target="_blank">大连地图</a></li><li><a href="http://dl.58.com" target="_blank">大连分类信息</a></li><li><a href="http://www.jufengshang.com" target="_blank">世界名表</a></li><li><a href="http://www.dllp.cn/" target="_blank">精品楼盘网</a></li><li><a href="http://www.5sw.com/" target="_blank">五星写字楼网</a></li><li><a href="http://www.22bw.com/" target="_blank">农家乐</a></li><li><a href="http://sdfdc.com/" target="_blank">山东房地产</a></li><li><a href="http://www.baixingmall.com/" target="_blank">郑州建材</a></li><li><a href="http://piaojia.114piaowu.com/" target="_blank">火车票价查询</a></li><li><a href="http://dl.fccs.com/" target="_blank">大连房产网</a></li><li><a href="http://bj.fang.anjuke.com/loupan/daquan/" target="_blank">北京楼盘大全</a></li><li><a href="http://dl.goufang.com/" target="_blank">大连房产网</a></li><li><a href="http://bj.tuniu.com/" target="_blank">北京旅游网</a></li><li><a href="http://www.anjuke.com/baike/93791" target="_blank">房产证上加名字</a></li><li><a href="http://www.anjuke.com/zhinan/maifang" target="_blank">二手房交易流程</a></li><li><a href="http://yc.fccs.com/" target="_blank">银川房产超市网</a></li><li><a href="http://dalian.tianqi.com/" target="_blank">大连天气</a></li><li><a href="http://dalian.cncn.com/" target="_blank">大连旅游</a></li><li><a href="http://dalian.edeng.cn" target="_blank">大连易登网</a></li><li><a href="http://dalian.liebiao.com/" target="_blank">大连列表网</a></li><li><a href="http://dl.58.com/" target="_blank">大连58同城</a></li><li><a href="http://language.koolearn.com/" target="_blank">小语种学习</a></li><li><a href="http://dl.fang.anjuke.com/huxing/" target="_blank">大连户型大全</a></li><li><a href="http://www.bstzcs.com/ " target="_blank">农村房屋设计图</a></li><li><a href="http://dl.bendibao.com" target="_blank">大连本地宝</a></li><li><a href="http://y.liuxue86.com/" target="_blank">  网址导航</a></li><li><a href="http://www.liuxue86.com/rudangshenqingshu/" target="_blank">入党申请书</a></li><li><a href="http://suzhou.liebiao.com/" target="_blank">苏州二手房</a></li></ul></div>
</div>
<!--页面尾部模块结束-->

<div id="topic" style="text-align:center;padding-top:16px;border-top:1px #E0E0E0 solid; color: #666">
    <span class="link_span"><a href="http://dalian.anjuke.com/help/question/1" rel="nofollow">关于安居客</a></span>|
    <span class="link_span"><a href="http://job.anjuke.com/" rel="nofollow">人才招聘</a></span>|
    <span class="link_span"><a href="http://dalian.anjuke.com/help/question/4" rel="nofollow">联系我们</a></span>|
    <span class="link_span"><a href="http://dalian.anjuke.com/help/question/7" rel="nofollow">用户协议</a></span>|
    <!-- <span class="link_span"><a href="http://dalian.anjuke.com/help" rel="nofollow">使用帮助</a></span>| -->
    <span class="link_span"><a href="http://dalian.anjuke.com/friendlink" rel="nofollow">友情链接</a></span>|
    <span class="link_span"><a href="javascript:void(0);" id="show_map_list">网站地图</a></span>|
    <span class="link_span"><a href="javascript:;" id="show_city_list" rel="nofollow">其它城市</a></span>|
    <span class="link_span"><a href="javascript:void(0);" id="show_house_list">最新房源</a></span>|
    <span class="link_span"><a href="javascript:void(0);" id="show_commm_list">小区大全</a></span>|
    <span class="link_span"><a href="http://dalian.anjuke.com/wenti/">最新问答</a></span>|
    <span class="link_span"><a href="http://www.anjuke.com/calculator/loan" target="_blank">房贷计算器</a></span>|
    <span class="link_span"><a href="http://www.zx110.org/cxs/index.html" target="_blank" rel="nofollow">放心搜</a></span>|
    <span class="link_span"><a href="http://about.anjuke.com/chanpin/?from=home_foot_tgy" target="_blank" rel="nofollow">推广服务</a></span></div>

  </body>
</html>

