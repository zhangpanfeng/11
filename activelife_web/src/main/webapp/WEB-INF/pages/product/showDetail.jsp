<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>

<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<base href="<%=basePath%>"> 

<base target="_blank">
<meta charset="utf-8">
<title>态，生态生活，绿色，健康，回归源生态</title>

<meta name="keywords" content="态生活,绿色,源生态,健康生活" />
<meta name="description" content="态生活,绿色,源生态,共赢健康生活" />
<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="icon" href="favicon.ico" mce_href="favicon.ico"
	type="image/x-icon">
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/showDetail.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<!-- 放大镜 -->
<script src="js/jquery.jqzoom.min.js" type="text/javascript"></script>
<script src="js/common.js" type="text/javascript"></script>

<script type="text/javascript">
	function addCar(){
		var proId = $("#proId").html();
		var proName = $("#name").html();
		var proStandard = $("#proStan").html();
		var proPrice = $("#proPrice").html();
		var num = $("#bug_num").val();
		var urlStr = '${pageContext.request.contextPath }/addShoppCar.do';
		$.ajax({
			url: urlStr,
			type: "POST",
			data:{"proId":proId,"proName":proName,"proStandard":proStandard,"proPrice":proPrice,"num":num},
			dataType: "json",
			success:function(date){
				if(date.result==0){
					$.ajax({
						url : "${pageContext.request.contextPath }/getProCount.do",
						type : "POST",
						success : function(date) {
							if(date!=0){
								$("#em").show();
								$("#em").html(date);
							}else{
								$("#em").hide();
							}
						},
						error : function(XMLHttpRequest, textStatus, errorThrown) {
							alert(XMLHttpRequest + "__" + textStatus + "__" + errorThrown);
						}
					});
					alert("添加成功");
				}else if(date.result==2){
					alert("超出此商品购买上限");
				}else{
					alert("请先登录");
					window.location='${pageContext.request.contextPath }/login_web.do';
				}
			},
			error : function (XMLHttpRequest, textStatus, errorThrown) {
				alert(XMLHttpRequest + "_" +textStatus);
			}
		});
	}
</script>

</head>
<body>
	<!-- header -->
	<jsp:include flush="true" page="header.jsp"></jsp:include>
	<!-- content -->
	<!--bread  -->
	<div class="area m_auto_rl clearfix bread_crumbs">
		<a href="javascript:void(0);"><span>膳食营养</span></a> <span
			class="icon_btn_vbarrow"></span> <a href="javascript:void(0);"><span>维生素/矿物质</span></a>
		<span class="icon_btn_vbarrow"></span> <a href="javascript:void(0);"><span>钙</span></a>
		<span class="icon_btn_vbarrow"></span> <a href="javascript:void(0);"><span>自然之宝
				加维生素D 吸收好 免邮</span></a>
	</div>
	<!--bread end -->
	<!-- goods -->
	<div class="goods_area area m_auto_rl">
		<div class="clearfix">
			<div id="goods_preview">
				<div id="goods_img" class="img">
					<div class="goods_tabd">
						<span class="tab_bs">保税直发</span>
					</div>
					<div class="jqzoom">
						<img class="lazy" alt=" goods_img"
							jqimg="images/goods_detail/style_1.jpg"
							src="images/goods_detail/style_1.jpg">
					</div>
				</div>
				<div id="goods_gallery">
					<div class="left_m prev"></div>
					<div class="right_m next"></div>
					<div class="goods_gallery">
						<ul>
							<li><img alt="" jqimg="images/goods_detail/style_1.jpg"
								src="images/goods_detail/style_min_1.png"></li>
							<li><img alt="" jqimg="images/goods_detail/style_2.jpg"
								src="images/goods_detail/style_min_2.png"></li>
							<li><img alt="" jqimg="images/goods_detail/style_1.jpg"
								src="images/goods_detail/style_min_1.png"></li>
							<li><img alt="" jqimg="images/goods_detail/style_2.jpg"
								src="images/goods_detail/style_min_2.png"></li>
							<li><img alt="" jqimg="images/goods_detail/style_1.jpg"
								src="images/goods_detail/style_min_1.png"></li>
							<li><img alt="" jqimg="images/goods_detail/style_2.jpg"
								src="images/goods_detail/style_min_2.png"></li>
							<li><img alt="" jqimg="images/goods_detail/style_1.jpg"
								src="images/goods_detail/style_min_1.png"></li>
							<li><img alt="" jqimg="images/goods_detail/style_2.jpg"
								src="images/goods_detail/style_min_2.png"></li>


						</ul>
					</div>

				</div>
			</div>
			<div id="goods_info">
				<h2 id="name">${pro.productName }</h2>
				<div id="goods_pri">
					<span>促销价</span><strong id="proPrice">￥${pro.price }</strong><em>市场价</em>
					<del>￥${ pro.oldPrice}</del>
				</div>
				<!-- 促销信息 -->
				<div id="goods_cx">
					<div class="clearfix">
						<em class="f_l">剩余<strong>40</strong>小时<strong>23</strong>分<strong>5</strong>秒
						</em> <em class="f_r">剩余<strong>20</strong>件
						</em>
					</div>
					<div class="cx_info">
						<p>限时促销</p>
						<p>快快抢购</p>
					</div>
				</div>
				<div class="info clearfix">
					<span>产品编号</span>
					<div class="info_r f_l">
						<p id="proId">${pro.productCode }</p>
						<p>
							<i>抵用卷</i>&nbsp;&nbsp;&nbsp;<a>点击领取</a>
						</p>
					</div>
				</div>
				<div class="info clearfix">
					<span>产品规格</span>
					<div class="info_r f_l">
						<p id="proStan">345mg*60</p>
					</div>
				</div>
				<div class="info clearfix">
					<span>购买数量</span>
					<div class="info_r f_l">
						<div class="choose">
							<a class="reduce"></a><input id="bug_num" type="text" value="1" /><a
								class="add"></a>
						</div>
					</div>
				</div>
				<div id="btn_bug">
					<button class="f_l">立即购买</button>
					<button class="btn_cart f_l" onclick="addCar()">加入购物车</button>
				</div>
			</div>
		</div>
		<!-- tab  -->
		<div class="tab">
			<div class="hd clearfix">
				<ul class="f_l">
					<li>商品详情</li>
					<li>价格说明</li>
					<li>健康小贴士</li>
				</ul>
			</div>
			<div class="bd clearfix">
				<ul>
					<li><div class="goods_detail">
							<ul class="detail_list clearfix">
								<li title="品牌 ：康宝莱/Herbalife">品牌 ：康宝莱/Herbalife</li>
								<li
									title="主要成分 ：布枯叶精华、茅草、玉米穗丝精华、大型褐藻、杜松果浆精华、绣球花、熊果叶精华、卵磷脂、苹果醋、维生素c、钾、铁等草本精华营养素">主要成分
									：布枯叶精华、茅草、玉米穗丝精华、大型褐藻、杜松果浆精华、绣球花、熊果叶精华、卵磷脂、苹果醋、维生素c、钾、铁等草本精华营养素</li>
								<li title="主要成分含量 ：每份含：维生素C83mg、钙77mg、铁1mg、钾99mg、草本配方152mg。">主要成分含量
									：每份含：维生素C83mg、钙77mg、铁1mg、钾99mg、草本配方152mg。</li>
								<li title="产地 ：美国">产地 ：美国</li>
								<li title="商品原产地 ：美国">商品原产地 ：美国</li>
								<li title="是否礼盒装 ：否">是否礼盒装 ：否</li>
								<li title="是否进口 ：是">是否进口 ：是</li>
								<li title="产品剂型 ：片剂">产品剂型 ：片剂</li>
								<li title="包装方式 ：包装">包装方式 ：包装</li>
								<li title="包装种类 ：罐装">包装种类 ：罐装</li>
								<li title="厂名 ：herbalife international of amierica">厂名
									：herbalife international of amierica</li>
								<li
									title="厂址 ：800w.OlYMpic blvd，suite 406,Los Angeles,CA 900015,">厂址
									：800w.OlYMpic blvd，suite 406,Los Angeles,CA 900015,</li>
								<li title="厂家联系方式 ：866-617-4273">厂家联系方式 ：866-617-4273</li>
								<li
									title="配料表 ：硬脂酸、苹果醋、大豆卵磷脂、二氧化硅、Acacia、麦芽糊精、磷酸氢钙、乳糖、玉米淀粉、羟甲基纤维素钠、糊精、葡萄糖、磷酸三钙、柠檬酸钠和十二烷基酸钠、包含牛奶和大豆成分。">配料表
									：硬脂酸、苹果醋、大豆卵磷脂、二氧化硅、Acacia、麦芽糊精、磷酸氢钙、乳糖、玉米淀粉、羟甲基纤维素钠、糊精、葡萄糖、磷酸三钙、柠檬酸钠和十二烷基酸钠、包含牛奶和大豆成分。</li>
								<li title="储藏方法 ：密封，置阴凉干燥处">储藏方法 ：密封，置阴凉干燥处</li>
								<li title="保质期 ：24个月">保质期 ：24个月</li>
								<li title="服用方法 ：1天3次，每次饭前1-2粒配一杯水，搭配康宝莱混合奶昔使用，减肥效果更佳！">服用方法
									：1天3次，每次饭前1-2粒配一杯水，搭配康宝莱混合奶昔使用，减肥效果更佳！</li>
								<li title="生产企业 ：herbalife international of amierica">生产企业
									：herbalife international of amierica</li>
								<li title="上架时间 ：2015-Q2">上架时间 ：2015-Q2</li>
								<li title="适用性别 ：通用">适用性别 ：通用</li>
								<li title="计价单位 ：mg">计价单位 ：mg</li>
							</ul>
							<div>
								<h2 class="dTitle">产品介绍</h2>
								<img class="img_i" alt="" src="images/goods_detail/detail_1.jpg">
							</div>
						</div></li>
				</ul>
				<ul>
					<li><div>
							<h2 class="dTitle">产品介绍</h2>
							<img class="img_i" alt="" src="images/goods_detail/detail_1.jpg">
						</div></li>
				</ul>
				<ul>
					<li><div>
							<h2 class="dTitle">产品介绍</h2>
							<img class="img_i" alt="" src="images/goods_detail/detail_1.jpg">
						</div></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- footer -->
	<jsp:include flush="true" page="footer.jsp"></jsp:include>
	<script type="text/javascript">
		$(document).ready(
				function() {
					//隐藏菜单
					$("#category_tree").addClass("none");
					//商品图
					jQuery("#goods_gallery").slide({
						mainCell : ".goods_gallery ul",
						vis : 4,
						autoPage : true,
						effect : "left"
					});
					$(".goods_gallery li").mouseover(
							function() {
								$('.goods_gallery li').removeClass();
								$(this).addClass("ware_pic_hover");
								$('#goods_img img').attr(
										'src',
										$(this).children('img:first').attr(
												'jqimg'));
								$('#goods_img img').attr(
										'jqimg',
										$(this).children('img:first').attr(
												'jqimg'));
							});
					//		    放大镜
					$(".jqzoom").jqueryzoom({
						xzoom : 400, //放大图的宽度(默认是 200)
						yzoom : 400, //放大图的高度(默认是 200)
						offset : 5, //离原图的距离(默认是 10)
						position : "right", //放大图的定位(默认是 "right")
						preload : 1
					});
					//购买数量加减
					$(".reduce").click(function() {
						var num = parseInt($("#bug_num").val());
						if (1 == num) {
							return;
						} else {
							$("#bug_num").val(num - 1);
						}
					});
					$(".add").click(function() {
						var num = parseInt($("#bug_num").val());
						if(num>9){
							alert("抱歉！此商品一次性最多购买十件");
							$("#bug_num").val(1);
						}else{
							$("#bug_num").val(num + 1);
						}
					});
					$("#bug_num").keyup(function(){
						var val = parseInt(this.value);
						if (isNaN(val) || val <= 0) {
							val = 1;
						}
						if(val > 9){
							alert("抱歉！此商品一次性最多购买十件");
							val = 1;
						}
						if (this.value != val) {
							this.value = val;
						}
					});
					//tab
					jQuery(".tab").slide({
						trigger : "click"
					});
				});//
	</script>
</body>
</html>