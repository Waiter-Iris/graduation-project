<%@page import="com.dream.rent.pojo.RentHouse"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
a{
	text-decoration: none;
	color:gray;
}
a:hover{
	font-weight:bold;
}

#top {
	width: 1250px;
	height: 100px;
	text-align: center;
}

#keyword-box {
	width: 500px;
	height: 50px;
	font-size: 30px;
}

#center {
	width: 1250px;
	height: 500px;
}

#h {
	font-size: 30px;
	line-height: 60px;
}

#two {
	margin-top: -20px;
}

#four {
	width: 400px;
	height: 300px;
}

#body {
	width: 1250px;
	height: 80px;
	font-size:20px;
	margin-top:50px;
	border:2px solid gray;
}

#body a{
	padding-left:150px;
	
}

#seven {
	list-style: none;
}

li {
	float: left;
	list-style: none;
	margin-left: 50px;
}

a {
	text-decoration: none
}

#eight {
	background-color: #39ac6a;
	width: 1250px;
	height: 1000px;
	margin-top: 50px;
}

#box {
	width: 1250px;
	margin: 0 auto;
}

#find {
	border: 1px solid gray;
	width: 100px;
	height: 56px;
	font-size: 30px;
	background-color: #63a232;
}

.btnContainer {
	height: 400px;
	margin-top: 30px;
	border: 2px solid gray;
}

#detailImage {
	margin-top: 25px;
	margin-left: 25px;
	width: 400px;
	height: 350px;
	width: 400px;
	float: left;
}

#five {
	float: left;
	height: 350px;
	width: 300px;
	margin-left: 100px;
	margin-top: 40px;
}

.brokerInfo {
	float: left;
	margin-top: 80px;
	margin-left: 70px;
	text-align:center;
}

.brokerInfoText{
  	padding-top:20px;
}

.title{
	font-size:20px;
	font-weight:bold;
	display:block;
	line-height:50px;
}
.featureContent{
	display:block;
	line-height:30px;
	height:200px;

}
#record{
	display:block;
	height:200px;
	width:100%;

}
.row,.header{
	width:250px;
	height:200px;
	float:left;
	
}
.row{
	padding-left:50px;
}
#rows,.header{
	float:left;
}
.panel{
	clear:left;
	width:100%;
	text-align:center;
}
</style>
</head>
<body>
	<div id="box">
		<div id="top">
			<img src="images/banner.jpg" style="width: 1250px;" />
		</div>
		<input name="keyword" autocomplete="off"
			placeholder="请输入区域、商圈或小区名开始找房" id="keyword-box">
		<button type="submit" id="find">找房</button>

		<div class="title-wrapper" id="center">
			<div class="title">
				<h1 class="main" id="h">大连明珠 3室2厅 15000元</h1>
				<div class="sub" id="two">
					和平现代城，3室，南北通透，办公好房，实用面积大，装修好，地角便利，方便签约
					<button id="follow">关注房源</button>
				</div>
			</div>
			<div class="btnContainer">
				<div class="thumbnail">
					<img src="images/carousel01.jpg" id="detailImage" />


					<div class="content" id="five">
						<div class="price ">
							<span class="total"><%=((RentHouse) request.getAttribute("renthouse"))
					.getRenthousePrice()%></span>
							<span class="unit"> <i></i><span>元/月</span>
							</span>
							<div class="removeIcon"></div>
						</div>
						<div class="zf-room">
							<p class="lf">
								<i>面积：</i><%=((RentHouse) request.getAttribute("renthouse"))
					.getRenthouseArea()%>平米
							</p>
							<p class="lf">
								<i>房屋户型：</i><%=((RentHouse) request.getAttribute("renthouse"))
					.getRenthouseHousetype()%>
							</p>
							<p class="lf">
								<i>楼层：</i>低楼层 (共32层)
							</p>
							<p class="lf">
								<i>房屋朝向：</i>西南
							</p>
							<div class="clear"></div>
							<p>
								<i>地铁：</i>距地铁1号线富国街站304米
							</p>
							<p>
								<i>小区：</i><a href="/xiaoqu/1311041916085/">和平现代城</a> - <a
									href="/zufang/c1311041916085/">68套出租中</a>
							</p>
							<p>
								<i>位置：</i><a href="/zufang/shahekou/"><%=((RentHouse) request.getAttribute("renthouse"))
					.getRenthouseAddress()%></a> 
							</p>
							<p class="lf">
								<i>时间：</i>17天前发布
							</p>
							<div class="clear"></div>
						</div>
					</div>

					<div class="brokerInfo" log-mod="zufang_detail_diamond-first">
						<a href="http://20192381.dianpu.lianjia.com"> <img
							class="LOGCLICK"  id="six" data-bl="agent"
							data-el="1000000020192381"
							src="images/jingjiren/1.jpg"
							alt="">
						</a>
						<div class="brokerInfoText">
							<div class="brokerName">
								<a href="images/jingjiren/1.jpg"
									class="name LOGCLICK" data-log_id="20001" data-bl="agent"
									data-el="1000000020192381">孙悟空</a> <span class="tag ">高级经纪人</span>
								<a class="lianjiaim-createtalkAll LOGCLICK" data-log_id="20001"
									data-bl="agentim" data-el="1000000020192381"
									style="display: none;" title="在线咨询"
									data-role="lianjiaim-createtalk" data-ucid="1000000020192381">
								</a>
							</div>
							<div class="evaluate">
								<span class="rate"> 评分:5.0/<a
									href="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1487668526807&di=71d1931534d9422cb05b674066b73eb5&imgtype=0&src=http%3A%2F%2Fpic.qiantucdn.com%2F58pic%2F17%2F34%2F56%2F40958PICRz6_1024.jpg">16人评价</a>
								</span> <span class="time">本房带看：3次</span>
							</div>
							<div class="phone">
								4008956286 <span>转</span> 3445
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="body">
			<ul
				style="position: relative; top: 0px; z-index: 1000; width: 1000px;"
				id="seven">
				<li><a class="force" href="#introduction">房源介绍</a></li>
				<li><a href="#brokerList" class="">联系经纪人</a></li>
				<li><a href="#record" class="">看房记录</a></li>
			</ul>

		</div>
		<div id="eight">
			<div class="introduction">
				<div class="title" id="house1">房源介绍</div>
				<div class="introContent">
					<div class="base">
						<div class="name">基本属性</div>
						<div class="content">
							<ul>
								<li><span class="label">租赁方式：</span>暂无数据</li>
								<li><span class="label">付款方式：</span> 暂无数据</li>
								<li><span class="label">房屋现状：</span>暂无数据</li>
								<li><span class="label">供暖方式：</span>集中供暖</li>
							</ul>
						</div>
					</div>
					<div class="feature">
						<div class="name">房源特色</div>
						<div class="zf-tag">
							<div class="clear"></div>
						</div>
						<div class="featureContent">
							<ul>
								<li><span class="label">出租原因：</span> <span class="text">房主房屋空闲，长期出租，希望租给长期客户，一年起租，有钥匙，随时看房</span>
								</li>
								<li><span class="label">房源亮点：</span> <span class="text">南北通透，五明户型，家电家具齐全，您可以拎包入住。干净舒适，给您家的感觉</span>
								</li>
								<li><span class="label">周边配套：</span> <span class="text">周边配套齐全，医院、广场、幼儿园、小学应有尽有，特别适合明星小学陪读</span>
								</li>
								<li><span class="label">装修描述：</span> <span class="text">房子精装修，保持好，房主每次收回房子都找保洁收拾，特别干净整洁</span>
								</li>
								<li><span class="label">户型介绍：</span> <span class="text">房子两室两厅，南北通透，南北卧室，中间是卫生间，南客厅，北厨房，卫生间有窗，五明户型</span>
								</li>
								<li><span class="label">交通出行：</span> <span class="text">距解放路不到200米，交通便利，小区门口有521路公交青云街站（捷凤街--青泥洼桥及大连火车站），解放路沿线公交：2路（青泥洼桥-虎滩新区），5路（青泥洼桥-森林动物园），403路（景山小区-北海街），501路。</span>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>


			<div class="content" style="height:200px;margin-top:50px;">
				<div class="header">
					<span class="title">联系经纪人</span> <span class="subTitle">您可以通过拨打电话或在线咨询的方式联系经纪人</span>

					<span class="btn"> <span class="pre disable"
						data-log_id="20001" data-bl="switch"><i></i></span> <span
						class="next LOGCLICK" data-log_id="20001" data-bl="switch"><i></i></span>
					</span>

				</div>
				<ul>

					<li><a href="http://20158095.dianpu.lianjia.com"><img
							src="images/jingjiren/6.jpg"
							alt="" class="LOGCLICK" data-log_id="20001" data-bl="agent"
							data-el="1000000020158095" data-log_index="1"></a>
						<div class="desc">
							<div class="title">
								<a href="http://20158095.dianpu.lianjia.com"
									class="name LOGCLICK" data-log_id="20001" data-bl="agent"
									data-el="1000000020158095" data-log_index="1">李佳慧</a> <a
									class="lianjiaim-createtalkAll LOGCLICK" style="display: none;"
									title="在线咨询" data-role="lianjiaim-createtalk"
									data-ucid="1000000020158095" data-log_id="20001"
									data-bl="agentim" data-el="1000000020158095" data-log_index="1">
								</a>
								<div class="rate">
									<span class="level">经纪人</span> 评分:5.0/<a
										href="http://20158095.dianpu.lianjia.com/?w=pingjia">2人评价
									</a>

								</div>
							</div>
							<div class="phone">4008679576转1508</div>
						</div></li>

					<li><a href="http://20190453.dianpu.lianjia.com"><img
							src="images/jingjiren/5.jpg"
							alt="" class="LOGCLICK" data-log_id="20001" data-bl="agent"
							data-el="1000000020190453" data-log_index="2"></a>
						<div class="desc">
							<div class="title">
								<a href="http://20190453.dianpu.lianjia.com"
									class="name LOGCLICK" data-log_id="20001" data-bl="agent"
									data-el="1000000020190453" data-log_index="2">赵英利</a> <a
									class="lianjiaim-createtalkAll LOGCLICK" style="display: none;"
									title="在线咨询" data-role="lianjiaim-createtalk"
									data-ucid="1000000020190453" data-log_id="20001"
									data-bl="agentim" data-el="1000000020190453" data-log_index="2">
								</a>
								<div class="rate">
									<span class="level">经纪人</span> 评分:5.0/<a
										href="http://20190453.dianpu.lianjia.com/?w=pingjia">9人评价
									</a>

								</div>
							</div>
							<div class="phone">4008955269转6639</div>
						</div></li>

					<li><a href="http://20323243.dianpu.lianjia.com"><img
							src="images/jingjiren/4.jpg"
							alt="" class="LOGCLICK" data-log_id="20001" data-bl="agent"
							data-el="1000000020323243" data-log_index="3"></a>
						<div class="desc">
							<div class="title">
								<a href="http://20323243.dianpu.lianjia.com"
									class="name LOGCLICK" data-log_id="20001" data-bl="agent"
									data-el="1000000020323243" data-log_index="3">郭照江</a> <a
									class="lianjiaim-createtalkAll LOGCLICK" style="display: none;"
									title="在线咨询" data-role="lianjiaim-createtalk"
									data-ucid="1000000020323243" data-log_id="20001"
									data-bl="agentim" data-el="1000000020323243" data-log_index="3">
								</a>
								<div class="rate">
									<span class="level">助理经纪人</span> 暂无评价

								</div>
							</div>
							<div class="phone">4008601022转4974</div>
						</div></li>

					<li class="fix_align"></li>
					<li class="fix_align"></li>
					<li class="fix_align"></li>
				</ul>
			</div>





			<div class="record" id="record">
				<div class="list">
					<div class="title" style="clear:both;">
						看房记录 <span class="next "><i></i></span> <span class="pre disable"><i></i></span>

					</div>
					<div class="content">
						<div class="header">
							<div class="item">带看时间</div>
							<div class="item">带看经纪人</div>
							<div class="item">本房总带看</div>
							<div class="phone">咨询电话</div>
						</div>

						<div id="rows">
						<div class="row">
							<div class="item">2017-02-19</div>
							<div class="item">
								<a href="http://20190233.dianpu.lianjia.com"><img
									src="images/jingjiren/1.jpg"
									alt=""> <span>徐扬</span></a> <a class="lianjiaim-createtalk"
									style="display: none;" title="在线咨询"
									data-role="lianjiaim-createtalk" data-ucid="1000000020190233">
								</a>
							</div>
							<div class="item">9次</div>
							<div class="phone">4008052606转3490</div>
						</div>

						<div class="row">
							<div class="item">2017-02-16</div>
							<div class="item">
								<a href="http://20190453.dianpu.lianjia.com"><img
									src="images/jingjiren/2.jpg"
									alt=""> <span>赵英利</span></a> <a class="lianjiaim-createtalk"
									style="display: none;" title="在线咨询"
									data-role="lianjiaim-createtalk" data-ucid="1000000020190453">
								</a>
							</div>
							<div class="item">7次</div>
							<div class="phone">4008955269转6639</div>
						</div>

						<div class="row">
							<div class="item">2017-02-10</div>
							<div class="item">
								<a href="http://20158095.dianpu.lianjia.com"><img
									src="images/jingjiren/3.jpg"
									alt=""> <span>李佳慧</span></a> <a class="lianjiaim-createtalk"
									style="display: none;" title="在线咨询"
									data-role="lianjiaim-createtalk" data-ucid="1000000020158095">
								</a>
							</div>
							<div class="item">8次</div>
							<div class="phone">4008679576转1508</div>
						</div>
					</div>

					</div>
				</div>
				<div class="panel">
					<div class="title">近7天带看次数</div>
					<div class="count">2</div>
					<div class="totalCount">
						- 总带看<span>38</span>次 -
					</div>
				</div>
			</div>
		</div>
</body>
</html>