<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
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
<link href="css/cart_submit.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="js/common.js" type="text/javascript"></script>
</head>
<body>

	<!-- toolbar start -->
	<div id="toolbar">
		<div class="m_auto_rl area clearfix">
			<li><i>欢迎来到态生活</i></li>
			<c:if test="${sessionScope.customer.cellphone == null}">
				<li><a href="${pageContext.request.contextPath }/login_web.do">请登录</a></li>
				<li><a
					href="${pageContext.request.contextPath }/register_web.do"">注册</a></li>
			</c:if>
			<c:if test="${sessionScope.customer.cellphone != null}">
				<li>欢迎 <a>${sessionScope.customer.cellphone }</a></li>
				<li><a href="${pageContext.request.contextPath }/logout.do">退出</a></li>
			</c:if>
		</div>
	</div>
	<!-- toolbar end -->
	<!-- header start -->
	<div id="header" class="m_auto_rl area clearfix">
		<div id="logo" class="f_l" height="60px">
			<a href="${pageContext.request.contextPath }"> <img alt=""
				src="images/logo.png"></img>
			</a>
		</div>
		<div class="f_r my_cart_d">
			<div>
				<dl class="done">
					<dt class="done">1</dt>
					<dd>我的购物车</dd>
				</dl>
				<dl class="doing">
					<dt class="doing">2</dt>
					<dd>确认订单</dd>
				</dl>
				<dl>
					<dt>3</dt>
					<dd>成功提交订单</dd>
				</dl>
			</div>
		</div>
	</div>
	<!-- order info -->

	<script type="text/javascript">
	$(function(){
		$.ajax({
			url : "${pageContext.request.contextPath }/getAllAdd.do",
			type : "POST",
			success : function(date) {
				if(date=="" || date==null){
					$("#addr_list").hide();
				}else{
					$("#new_addr").hide();
					var li = "";
					for (var i = 0; i < date.length; i++) {
						if(date[i].address != "" && date[i].address != null){
							li +="<li id = "+date[i].addressId+"><h3><span class='lprovince'>"+date[i].address.substring(0,date[i].address.indexOf("省")+1)+"</span><span class='lcity'>"+date[i].address.substring(date[i].address.indexOf("省")+1,date[i].address.indexOf("市")+1)+"</span>（<spanclass='lusername'>"+date[i].consignee+"</span> 收）"
								+"</h3><p class='addr_detail'><span class='lcounty'>"+date[i].address.substring(date[i].address.indexOf("市")+1,date[i].address.indexOf("区")+1)+"</span><span class='ldetail'>"+date[i].address.substring(date[i].address.indexOf("区")+1)+"</span></p>"
								+"<p class='lphone'>"+date[i].cellphone.substring(0,3)+"****"+date[i].cellphone.substring(7,12)+"</p><div class='addr_setbtn'><a>默认</a> <a class='none'>设为默认</a></div>"
								+"<div class='addr_editbtn'><a>修改</a> <a onclick=\"window.location='${pageContext.request.contextPath }/delAddress.do?addressId="+date[i].addressId +"'\">删除</a></div></li>";
						}	
					}
					$(".bd ul").html(li);
				}
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				alert(XMLHttpRequest + "__" + textStatus + "__" + errorThrown);
			}	
		}); 
		
		$(".f_r").click(function(){
			$("#new_addr").show();
		});
	});
</script>

	<div class="m_auto_rl area clearfix">
		<div id="add_addr" class="orderinfo_item">
			<h2>
				选择收件信息<a class="f_r">添加新地址</a>
			</h2>
			<!-- 没有收件地址 显示添加 -->
			<div id="new_addr">
				<dl>
					<dt>收件人：</dt>
					<dd>
						<input id="consignee" class="itxt_w260" placeholder="" type="text">
					</dd>
				</dl>
				<dl>
					<dt>收货地址：</dt>
					<dd>
						<div id="province" class="select_area">
							<span>省/直辖市</span>
							<ul class="dialog_area none">
								<li class="province" id="100160000"><a
									href="javascript:void(0);">河南省</a></li>
							</ul>
							<div class="area_line none"></div>
						</div>
					</dd>

					<dd>
						<div id="city" class="select_area none">
							<span>郑州市</span>
							<ul class="dialog_area none">
								<li id="100160100"><a href="javascript:void(0);">郑州市</a></li>
							</ul>
							<div class="area_line none"></div>
						</div>
					</dd>
					<dd>
						<div id="county" class="select_area none">
							<span>中原区</span>
							<ul class="dialog_area none">
								<li id="100160102"><a href="javascript:void(0);">中原区</a></li>
								<li id="100160103"><a href="javascript:void(0);">二七区</a></li>
								<li id="100160104"><a href="javascript:void(0);">管城回族区</a></li>
								<li id="100160105"><a href="javascript:void(0);">金水区</a></li>
								<li id="100160106"><a href="javascript:void(0);">上街区</a></li>
								<li id="100160107"><a href="javascript:void(0);">邙山区</a></li>
								<li id="100160108"><a href="javascript:void(0);">中牟县</a></li>
								<li id="100160109"><a href="javascript:void(0);">巩义市</a></li>
								<li id="100160110"><a href="javascript:void(0);">荥阳市</a></li>
								<li id="100160111"><a href="javascript:void(0);">新密市</a></li>
								<li id="100160112"><a href="javascript:void(0);">新郑市</a></li>
								<li id="100160113"><a href="javascript:void(0);">登封市</a></li>
								<li id="100160114"><a href="javascript:void(0);">惠济区</a></li>
								<li id="100160115"><a href="javascript:void(0);">郑东新区</a></li>
								<li id="100160116"><a href="javascript:void(0);">高新技术开发区</a></li>
							</ul>
							<div class="area_line none"></div>
						</div>
					</dd>
				</dl>
				<dl>
					<dt>街道地址：</dt>
					<dd>
						<input id="useraddr" class="itxt_w400" placeholder="" type="text">
					</dd>
				</dl>
				<dl>
					<dt>手机号码：</dt>
					<dd>
						<input id="cellphone" class="itxt_w120" placeholder="" type="text">
					</dd>
				</dl>
				<dl>
					<dt>&nbsp;&nbsp;</dt>
					<dd>
						<input class="addsave" value="保存" type="submit">
					</dd>
				</dl>
			</div>
			<!-- 收货地址列表 -->
			<div id="addr_list">
				<div class="hd">
					<a class="prev prevStop">&lt;</a> <a class="next nextStop">&gt;</a>
				</div>
				<div class="bd">
					<ul>
						<!-- <li class="select_addr">
							<h3>
								<span class="lprovince">上海市</span><span class="lcity" id="">市辖区</span>（<span
									class="lusername">logan</span> 收）
							</h3>
							<p class="addr_detail">
								<span class="lcounty">虹口区</span> <span class="ldetail">提篮桥东大名路</span>
							</p>
							<p class="lphone">189*****932</p>
							<div class="addr_setbtn">
								<a>默认</a> <a class="none">设为默认</a>
							</div>
							<div class="addr_editbtn">
								<a>修改</a> <a>删除</a>
							</div>
						</li>
						<li>
							<h3>
								<span class="lprovince">上海市</span><span class="lcity" id="">市辖区</span>（<span
									class="lusername">logan</span> 收）
							</h3>
							<p class="addr_detail">
								<span class="lcounty">虹口区</span> <span class="ldetail">提篮桥东大名路</span>
							</p>
							<p class="lphone">189*****932</p>
							<div class="addr_setbtn">
								<a class="none">默认</a> <a>设为默认</a>
							</div>
							<div class="addr_editbtn">
								<a>修改</a> <a>删除</a>
							</div>
						</li> -->
					</ul>
				</div>
			</div>

		</div>
		<!-- 支付方式 -->
		<div id="pay_m" class="orderinfo_item">
			<h2>
				支付方式 <span>态生生活提醒：货到付款需要支付15元运费，在线支付免运费，建议您使用支付宝付款</span>
			</h2>
			<ul class="clearfix">
				<li>
					<div class="radioBox">
						<input checked="checked" name="zf" type="radio">
					</div>
					<div class="payment_type">支付宝</div>
				</li>
				<li>
					<div class="radioBox">
						<input name="zf" type="radio">
					</div>
					<div class="payment_type">快捷支付</div>
				</li>
			</ul>
		</div>
		<div class="orderinfo_item">
			<h2>
				商品信息 <a class="f_r"
					href="${pageContext.request.contextPath }/getCarInfo.do">返回购物车</a>
			</h2>
		</div>
		<table id="cart_list" cellspacing="0" cellpadding="0">
			<thead>
				<tr>
					<th colspan="2" style="text-align: left; padding-left: 40px;">商品</th>
					<th width="140">单价</th>
					<th width="140">数量</th>
					<th width="140">小计</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list }" var="cart">
					<tr>
						<td colspan="2">
							<dl class="goodsimg_con">
								<dt>
									<a href="http://www.yapingguo.com/item/292546937"><img
										src="http://p.ypgimg.com/292/546/937/292546937/thumb/cf1a44adb13551d6.jpg"
										alt="" height="80" width="80"></a>
								</dt>
								<dd>
									<p class="goodsname">
										<a href="http://www.yapingguo.com/item/292546937"><c:out
												value="${cart.pro_name }"></c:out></a>
									</p>
									<p class="goodstag">
										<em class="tab">保税直发</em>
									</p>
								</dd>
							</dl>
						</td>
						<td>
							<div class="margin_btm10">
								￥
								<c:out value="${cart.product_price }"></c:out>
							</div>
						</td>
						<td>
							<div class="cart_choose">
								<c:out value="${cart.product_num }"></c:out>
							</div>
						</td>
						<td class="total"><strong class="font_18 c_orange">￥${cart.product_num * cart.product_price }</strong></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="cart_total">
			<div class="clearfix">
				<div class="f_r clear">
					<dl>
						<dt>商品金额：￥</dt>
						<dd id="payTotal">0</dd>
					</dl>
					<dl>
						<dt>运费：￥</dt>
						<dd id="yf">0.00</dd>
					</dl>
					<dl>
						<dt>优惠：￥</dt>
						<dd id="yh">-0.00</dd>
					</dl>
					<dl>
						<dt>可用返现：￥</dt>
						<dd id="fx">-1.00</dd>
					</dl>
				</div>
				<div class="f_r total clear">
					<p>
						应付金额：<strong id="sum">￥0</strong>
					</p>
					<p>
						<button id="submit" type="button" class="btn_zhifu">提交订单</button>
					</p>
				</div>
			</div>

		</div>
	</div>
	<jsp:include flush="true" page="footer.jsp"></jsp:include>
	<script type="text/javascript">
		$(function() {
			var province;
			var city;
			var county;
			
			// 商品总价 
			var total = 0;
			for (var i = 0; i < $("tbody strong").length; i++) {
				var pay = $("strong").html().split("￥")[1];
				total += parseFloat(pay);
			}
			$("#payTotal").html(total.toFixed(2));
			$("#yf").html();
			$("#yh").html();
			$("#fx").html();
			var t = parseFloat(parseFloat($("#payTotal").html()) + parseFloat($("#yf").html()) + parseFloat($("#yh").html()) + parseFloat($("#fx").html())).toFixed(2);
			$("#sum").html("￥" + t);
			
			//收件地址list 移动
			jQuery("#addr_list").slide({
				mainCell : ".bd ul",
				vis : 4,
				autoPage : true,
				effect : "left"
			});
			//三级联动
			//省、直辖市
			$("#province span").click(function() {
				$("#province ul").show();
				$("#province .area_line").show();
			});
			$("#province").on("click", "li", function() {
				$("#province ul").hide();
				$("#province .area_line").hide();
				$("#province span").text($(this).text());
				province = $(this).text();
				$("#city").show();
				$(".select_area").css("color", "#666666");
			});
			//地区，市
			$("#city span").click(function() {
				$("#city ul").show();
				$("#city .area_line").show();
			});
			$("#city").on("click", "li", function() {
				$("#city ul").hide();
				$("#city .area_line").hide();
				$("#city span").text($(this).text());
				city = $(this).text();
				$("#county").show();
			});
			//县 区
			$("#county span").click(function() {
				$("#county ul").show();
				$("#county .area_line").show();
			});
			$("#county").on("click", "li", function() {
				$("#county ul").hide();
				$("#county .area_line").hide();
				$("#county span").text($(this).text());
				county = $(this).text();
			});

			// 获取地址信息
			$(".addsave").click(function(){
				var useraddr = $("#useraddr").val();
				var consignee = $("#consignee").val();
				var cellphone = $("#cellphone").val();
				$.ajax({
					url : "${pageContext.request.contextPath }/saveAdd.do",
					type : "POST",
					data:{"province":province,"city":city,"county":county,"useraddr":useraddr,"consignee":consignee,"cellphone":cellphone},
					success : function(date) {
						if(date == 1){
							$.ajax({
								url : "${pageContext.request.contextPath }/getAllAdd.do",
								type : "POST",
								success : function(date) {
									$("#addr_list").show();
									$("#new_addr").hide();
									var li = "";
									for (var i = 0; i < date.length; i++) {
										if(date[i].address != "" && date[i].address != null){
											li +="<li id = "+date[i].addressId+"><h3><span class='lprovince'>"+date[i].address.substring(0,date[i].address.indexOf("省")+1)+"</span><span class='lcity'>"+date[i].address.substring(date[i].address.indexOf("省")+1,date[i].address.indexOf("市")+1)+"</span>（<spanclass='lusername'>"+date[i].consignee+"</span> 收）"
												+"</h3><p class='addr_detail'><span class='lcounty'>"+date[i].address.substring(date[i].address.indexOf("市")+1,date[i].address.indexOf("区")+1)+"</span><span class='ldetail'>"+date[i].address.substring(date[i].address.indexOf("区")+1)+"</span></p>"
												+"<p class='lphone'>"+date[i].cellphone.substring(0,3)+"****"+date[i].cellphone.substring(7,12)+"</p><div class='addr_setbtn'><a>默认</a> <a class='none'>设为默认</a></div>"
												+"<div class='addr_editbtn'><a>修改</a> <a>删除</a></div></li>";
										}	
									}
									$(".bd ul").html(li);
								},
								error : function(XMLHttpRequest, textStatus, errorThrown) {
									alert(XMLHttpRequest + "__" + textStatus + "__" + errorThrown);
								}	
							}); 
						}else{
							alert("添加的地址有误");
						}
					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
						alert(XMLHttpRequest + "__" + textStatus + "__" + errorThrown);
					}	
				});
			}); 
			
			//点击 联动选择div 外 div 隐藏
			$(document).on('click',function(e) {
				$(".select_area").each(function() {
					var _span = $(this).find("span");
					var _ul = $(this).find("ul");
					if ((!_span.is(e.target) && _span.has(e.target).length === 0) && (!_ul.is(e.target) && _ul.has(e.target).length === 0)) { // Mark 1
							_ul.hide();
							$(this).find(".area_line").hide();
					}
				})
			});
		});//
	</script>
</body>
</html>