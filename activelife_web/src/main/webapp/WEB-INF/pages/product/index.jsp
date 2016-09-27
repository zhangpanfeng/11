<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld" %>
<!DOCTYPE html >
<html>
<head>
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
<link href="css/mian.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="js/common.js" type="text/javascript"></script>
</head>
<body>
	<!-- header -->
	<jsp:include flush="true" page="header.jsp"></jsp:include>
	<!-- content -->
	<!-- fullSlide  -->
	<div id="fullslide">
		<div class="bd">
			<ul>
				<li>
					<div class="slide_item">
						<a><img src="images/mian/1160--400-1.jpg" /></a>
					</div>
				</li>
				<li>
					<div class="slide_item">
						<a><img src="images/mian/1160--400-2.jpg" /></a>
					</div>
				</li>
				<li>
					<div class="slide_item">
						<a><img src="images/mian/1160--400-3.jpg" /></a>
					</div>
				</li>

			</ul>
		</div>
		<div class="hd">
			<ul>
				<li>自然之宝</li>
				<li>汤臣备健</li>
				<li>海外大牌</li>
			</ul>
		</div>
	</div>
	<!-- 产品秒杀 -->
	<div id="m_c" class="m_auto_rl area clearfix m_top">
		<div id="m_c_t" class="b_btm">
			<span>今日特推<b>限时秒杀</b></span> <i></i> <span>每日<b>10:00</b></span>
		</div>
		<ul class="clearfix">
		<c:forEach items="${list }" var="pro">
			<li><a href="${pageContext.request.contextPath }/get_pro_info.do?proid=${ pro.productId}">
					<div><img src="images/mian/style.jpg" /></div>
					<div class="seckill_proInfo">
						<h3 class="seckill_line seckill_hf">
							优质蛋白<span>3.5折</span>
						</h3>
						<p class="seckill_line seckill_pi"><c:out value="${ pro.productName}"></c:out></p>
						<div class="seckill_p clearfix">
							<div class="seckill_price f_l">
								<div class="seckill_pl f_l">
									<p class="seckill_pla">秒杀价</p>
									<p class="seckill_plb">参考价<c:out value="${ pro.oldPrice}"></c:out></p>
								</div>
								<div class="seckill_pr f_l"><c:out value="${ pro.price}"></c:out></div>
							</div>
							<div class="seckill_btn f_l">
								<span>立即抢购〉</span>
							</div>
						</div>
					</div>
			</a></li>
		</c:forEach>
		</ul>
	</div>
	<div id="brand" class="m_auto_rl area clearfix m_top">
		<h2>
			品牌特惠<span></span>
		</h2>
		<ul id="brand_list" class="clearfix">
			<li><img src="images/mian/logo (1).jpg"></li>
			<li><img src="images/mian/logo (3).jpg"></li>
			<li><img src="images/mian/logo (4).jpg"></li>
			<li><img src="images/mian/logo (5).jpg"></li>
			<li><img src="images/mian/logo (6).jpg"></li>
			<li><img src="images/mian/logo (1).jpg"></li>
			<li><img src="images/mian/logo (3).jpg"></li>
			<li><img src="images/mian/logo (4).jpg"></li>
			<li><img src="images/mian/logo (5).jpg"></li>
			<li><img src="images/mian/logo (6).jpg"></li>

		</ul>
	</div>
	<div id="family" class="m_auto_rl area clearfix m_top none">
		<h2>
			家庭成员<span></span>
		</h2>
		<div class="modfamily clearfix">
			<div class="mod_left f_l">
				<div class="f_l mod_left01"></div>
				<div class="f_l mod_left02"></div>
				<div class="f_l mod_left03"></div>
				<div class="f_l mod_left04"></div>
			</div>
			<div class="mod_right f_l">
				<div class="f_l mod_left05"></div>
				<div class="f_l mod_left06"></div>
				<div class="f_l mod_left07"></div>
				<div class="f_l mod_left08"></div>
				<div class="f_l mod_left09"></div>
			</div>
		</div>
	</div>
	<!-- 产品列表 -->
	<div class="m_auto_rl area clearfix m_top">
		<div class="index_title">
			<h2>
				营养蔬菜<span></span>
			</h2>
		</div>
		<div class="clearfix">
			<div class="pro_left_ad f_l">
				<a><img src="images/mian/left_ad.jpg" /></a>
			</div>
			<div class="pro_right_list f_l">
				<ul class="clearfix">
					<li><a><img src="images/mian/left_ad.jpg" /></a></li>
					<li><a><img src="images/mian/left_ad.jpg" /></a></li>
					<li><a><img src="images/mian/left_ad.jpg" /></a></li>
					<li><a><img src="images/mian/left_ad.jpg" /></a></li>
				</ul>
			</div>
		</div>
	</div>
	<jsp:include flush="true" page="footer.jsp"></jsp:include>
	<script type="text/javascript">
		/* 图片轮询 */
		jQuery("#fullslide").slide({
			mainCell : ".bd ul",
			delayTime : 300,
			autoPlay : true
		});
		$(document).ready(function() {

		});//
	</script>
</body>
</html>
