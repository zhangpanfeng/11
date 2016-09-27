<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
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
<link href="css/cart_submit.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="js/common.js" type="text/javascript"></script>
<script src="js/cart.js" type="text/javascript"></script>
</head>
<body>

	<!-- toolbar start -->
	<div id="toolbar">
		<div class="m_auto_rl area clearfix">
			<ul class="f_l">
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
			</ul>
			<ul class="f_r">
				<li>健康来自源生态，态生活为您打造生态生活</li>
				<li><a>手机版</a></li>
				<li><a>消费者告知书</a></li>
				<li><a>帮助中心</a></li>
			</ul>
		</div>
	</div>
	<!-- toolbar end -->
	<!-- header start -->
	<div id="header" class="m_auto_rl area clearfix">
		<div id="logo" class="f_l" height="60px">
			<a href="${pageContext.request.contextPath }"> <img
				alt="" src="images/logo.png"></img>
			</a>
		</div>
		<div class="f_r my_cart_d">
			<div>
				<dl class="doing">
					<dt class="doing">1</dt>
					<dd>我的购物车</dd>
				</dl>
				<dl>
					<dt>2</dt>
					<dd>确认订单</dd>
				</dl>
				<dl>
					<dt>3</dt>
					<dd>成功提交订单</dd>
				</dl>
			</div>
		</div>
	</div>
	<!-- cart list -->
	<div class="m_auto_rl area clearfix">
		<c:if test="${list == null }">
			<h3>
				您的购物车空空如也，快去<a 
					onclick="window.location='${pageContext.request.contextPath }'"> 添加商品  > </a>吧^-^
			</h3>
		</c:if>
		<c:if test="${list != null }">
			<table id="cart_list" cellspacing="0" cellpadding="0">
				<thead>
					<tr>
						<th width="70">
							<div>
								<input name="chkAll" id="checkall" class="checked_all" checked="checked"
									type="checkbox"> <span>全选</span>
							</div>
						</th>
						<th colspan="2" width="472">商品</th>
						<th width="140">单价</th>
						<th width="140">数量</th>
						<th width="140">小计</th>
						<th width="100">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list }" var="cart">
						<tr>
							<td><input name="message" id="message" checked="checked"
								class="message" value="${cart.ord_id}" type="checkbox">
							</td>
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
									<a class="reduce">-</a> <input name="qty"
										value="${cart.product_num }" type="text" /> <a class="add">+</a>

								</div>
							</td>
							<td><strong class="font_18 c_orange">￥${cart.product_num * cart.product_price }</strong></td>
							<td><a class="delete" >删除</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="checkout">
				<div class="f_l">
					<input name="checkall2" id="checkall2"
						class="checked_all margin_right30" checked="checked"
						type="checkbox"> <a id="deleteAll" class="margin_right30">删除</a>
					<a
						onclick="window.location='${pageContext.request.contextPath }/get_data.do'"
						class="margin_right30">继续购物</a>
				</div>
				<div class="f_r" id="total">
					<span class="margin_right30">已选 <strong class="c_orange"
						id="c_orange"></strong> 件商品
					</span> <span class="margin_right30">合计（不含运费）: <strong
						class="c_orange font_18" id="payTotal"></strong></span> <a
						class="btn_checkout" id="SubmitCheckOut">结算</a>
				</div>
		</c:if>
	</div>
	</div>
	<jsp:include flush="true" page="footer.jsp"></jsp:include>
</body>

<script type="text/javascript">
	var selectedTotal = document.getElementById("c_orange"); // 购买总数
	var priceTotal = document.getElementById("payTotal"); // 总价
	var table = document.getElementById("cart_list"); // 购物车表格
	var tr = table.children[1].rows; //行
	var deleteAll = document.getElementById("deleteAll"); // 删除全部按钮
	$(function() {
		//为每行元素添加事件
		for (var i = 0; i < tr.length; i++) {
			//将点击事件绑定到tr元素
			tr[i].onclick = function(e) {
				var e = e || window.event;
				var el = e.target || e.srcElement; //通过事件对象的target属性获取触发元素
				var cls = el.className; //触发元素的class
				var countInout = this.getElementsByTagName('input')[1]; // 数目input
				var value = parseInt(countInout.value); //数目
				//通过判断触发元素的class确定用户点击了哪个元素
				switch (cls) {
				case 'add': //点击了加号
					if(value<10){
						countInout.value = value + 1;
						getSubtotal(this);
					}
					break;
				case 'reduce': //点击了减号
					if (value > 1) {
						countInout.value = value - 1;
						getSubtotal(this);
					}
					break;
				case 'delete': //点击了删除
					 var conf = confirm('确定删除此商品吗？');
	                    if (conf) {
	                        this.parentNode.removeChild(this);
	    					$.ajax({
	    						url : "${pageContext.request.contextPath }/delCar.do?cartid="+ this.getElementsByTagName('input')[0].value,
	    						type : "POST",
	    						success : function(date) {
	    							if(date==1 && tr.length==0){
	    								window.location="${pageContext.request.contextPath }/getCarInfo.do";
	    							}
	    						},
	    						error : function(XMLHttpRequest, textStatus, errorThrown) {
	    							alert(XMLHttpRequest + "__" + textStatus + "__" + errorThrown);
	    						}	
	    					}); 
	                    }
					break;
				}
				getTotal();
			}
			// 给数目输入框绑定keyup事件
			tr[i].getElementsByTagName('input')[1].onkeyup = function() {
				var val = parseInt(this.value);
				if (isNaN(val) || val <= 0) {
					val = 1;
				}
				if (this.value != val) {
					this.value = val;
				}
				getSubtotal(this.parentNode.parentNode.parentNode); //更新小计
				getTotal(); //更新总数
			}
		}
		getTotal();
	});

	// 更新总数和总价格，已选浮层
	function getTotal() {
		var seleted = 0;
		var price = 0;
		var HTMLstr = '';
		for (var i = 0, len = tr.length; i < len; i++) {
			if (tr[i].getElementsByTagName('input')[0].checked) {
				seleted += parseInt(tr[i].getElementsByTagName('input')[1].value);
				price += parseFloat(tr[i].getElementsByTagName('strong')[0].innerHTML.split("￥")[1]);
			}
		}
		selectedTotal.innerHTML = seleted;
		priceTotal.innerHTML = "￥" + price.toFixed(2);
	}

	// 计算单行价格
	function getSubtotal(tr) {
		var cells = tr.cells;
		var price = tr.getElementsByTagName('div')[0]; //单价
		var subtotal = tr.getElementsByTagName('strong')[0]; //小计
		var countInput = tr.getElementsByTagName('input')[1]; //数目
		//写入HTML
		if (countInput.value > 10) {
			countInput.value = 10;
		}
		subtotal.innerHTML = "￥" + (parseInt(countInput.value) * parseFloat(price.innerHTML.split("￥")[1])).toFixed(2);
		$.ajax({
			url : "${pageContext.request.contextPath }/updateCart.do?carid="
				+ tr.getElementsByTagName('input')[0].value
				+ "&count=" + countInput.value,
			type : "POST",
			success : function(date) {
				
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				alert(XMLHttpRequest + "__" + textStatus + "__" + errorThrown);
			}	
		}); 
	}

	// 点击全部删除
	deleteAll.onclick = function() {
		if (selectedTotal.innerHTML != 0) {
			var con = confirm('确定删除所选商品吗？'); //弹出确认框
			if (con) {
				for (var i = 0; i < tr.length; i++) {
					// 如果被选中，就删除相应的行
					if (tr[i].getElementsByTagName('input')[0].checked) {
						$.ajax({
    						url : "${pageContext.request.contextPath }/delCar.do?cartid="+ tr[i].getElementsByTagName('input')[0].value,
    						type : "POST",
    						success : function(date) {
    							window.location="${pageContext.request.contextPath }/getCarInfo.do";
    						},
    						error : function(XMLHttpRequest, textStatus, errorThrown) {
    							alert(XMLHttpRequest + "__" + textStatus + "__" + errorThrown);
    						}	
    					}); 
					}
				}
			}
		} else {
			alert('请选择商品！');
		}
		getTotal(); //更新总数
	}

	$("#SubmitCheckOut").click(function(){
			var cartids = "";
			for (var j = 0; j < $(".message").length; j++) {
				if ($(".message")[j].checked) {
					cartids += $(".message")[j].value + ",";
				}
			}
			window.location = "${pageContext.request.contextPath }/Allorder.do?cartId="+ cartids;
		});
	
	//--列头全选框被单击---
	$("#checkall").click(function() {
		if ($("#checkall").is(":checked")) {
			$(".message").prop("checked", true);
			$("#checkall2").prop("checked", true);
		} else {
			$(".message").removeAttr("checked");
			$("#checkall2").removeAttr("checked");
		}
		getTotal();
	});
	// --子复选框---
	$(".message").click(function() {
		for (var i = 0; i < $(".message").length; i++) {
			if (!$(".message")[i].checked) {
				$("#checkall").removeAttr("checked");
				$("#checkall2").removeAttr("checked");
				return;
			}
		}
		$("#checkall").prop("checked", true);
		$("#checkall2").prop("checked", true);
		getTotal();
	});
	//--末尾全选框被单击---
	$("#checkall2").click(function(){
		if ($("#checkall2").is(":checked")) {
			$(".message").prop("checked", true);
			$("#checkall").prop("checked", true);
		} else {
			$(".message").removeAttr("checked");
			$("#checkall").removeAttr("checked");
		}
		getTotal();
	});
</script>

</html>