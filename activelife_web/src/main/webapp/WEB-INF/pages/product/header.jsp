<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld"%>
<script src="js/common.js" type="text/javascript"></script>
<script type="text/javascript">
$(function() {
	$.ajax({
		url : "${pageContext.request.contextPath }/allClassfily.do",
		type : "POST",
		success : function(date) {
			var j = 1; // div的id序号
			var ul = ""; // 菜单栏显示的ul标签
			var a = ""; // ul标签中子级的超链接
			var divson = ""; // 子级显示的div
			var dd = ""; // 子级显示的div中的a标签
			var d = ""; // 子级显示的div中的dl标签
			var sp = ""; // 存储最高级的菜单的信息
			var c = ""; // 中间变量
			var v = "";
			var l = 1;
			var arr1 = new Array();
			// 循环遍历出菜单栏显示的父级菜单信息
			for (var i = 0; i < date.length; i++) {
				if (date[i].proClassfilyParentId == null) {
					for (var k = 0; k < date.length; k++) {
						if (date[k].proClassfilyParentId != null) {
							if (date[i].proClassfilyCode == date[k].proClassfilyParentId) {
								a += "<a href='" + date[k].proClassfilyId + "'>"
										+ date[k].proClassfilyName
										+ "</a>";
								}
							}
						}
					// 将父级菜单信息存入数组中
					arr1[j] = date[i].proClassfilyCode + "." + j;
					ul += "<li id=\"category_item" + j + "\"><h4>"
							+ date[i].proClassfilyName + "</h4><p>"
							+ a + "</p></h4></li>";
					a = "";
					j++;
				}
			}
			// 循环遍历出子级菜单信息并添加到div中
			for (var b = 1; b < arr1.length; b++) {
				for (var i = 0; i < date.length; i++) {
					if (date[i].proClassfilyParentId != null) {
						for (var k = 0; k < date.length; k++) {
							if (date[k].proClassfilyParentId != null) {
								sp = arr1[b].split(".");
								if (date[i].proClassfilyParentId == sp[0]) {
									if (date[i].proClassfilyCode == date[k].proClassfilyParentId) {
										dd += "<a href=\"" + date[k].proClassfilyId + "\">"
												+ date[k].proClassfilyName
												+ "</a>";
										}
									}
								}
							}
						}
					// 按要求将菜单信息添加到对应的div中
					if (dd != "") {
						if (date[i].proClassfilyParentId == sp[0]) {
							if (l == 1) {
								d += "<dl><dt>"
										+ date[i].proClassfilyName
										+ "</dt><dd>" + dd
										+ "</dd></dl>";
								c = date[i].proClassfilyParentId;
								l++;
							} else {
								if (date[i].proClassfilyParentId == c) {
									d += "<dl><dt>"
											+ date[i].proClassfilyName
											+ "</dt><dd>" + dd
											+ "</dd></dl>";
									if (b == arr1.length - 1) {
										divson = "<div id=\"layer_item" + sp[1] + "\" class=\"clearfix\">"
												+ d + "</div>";
									}
								} else {
									if (b != arr1.length) {
										v += "<div id=\"layer_item"
											+ (sp[1] - 1)
											+ "\" class=\"clearfix\">"
											+ d + "</div>";
									}
									c = date[i].proClassfilyParentId;
									d = "<dl><dt>"
										+ date[i].proClassfilyName
										+ "</dt><dd>" + dd
										+ "</dd></dl>";
								}
							}
						}
					}
					dd = "";
				}
			}
			$("#ulli").html(ul);
			$("#dorpdown_layer").html(v + divson);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest + "__" + textStatus + "__" + errorThrown);
		}
	});

	// 购物车数量显示
	$.ajax({
		url : "${pageContext.request.contextPath }/getProCount.do",
		type : "POST",
		success : function(date) {
			if(date!=0){
				$("#em").html(date);
			}else{
				$("#em").hide();
			}
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest + "__" + textStatus + "__" + errorThrown);
		}
	});
});
</script>
<!-- toolbar start -->
<div id="toolbar">
	<div class="m_auto_rl area clearfix">
		<ul class="f_l">
			<li><i>欢迎来到态生活</i></li>
			 <c:if test="${sessionScope.customer.cellphone == null}">
				<li><a href="${pageContext.request.contextPath }/login_web.do">请登录</a></li>
				<li><a href="${pageContext.request.contextPath }/register_web.do">注册</a></li>
			 </c:if>
			 <c:if test="${sessionScope.customer.cellphone != null}">
			 	<li>欢迎  <a>${sessionScope.customer.cellphone }</a></li>
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
		<a href="${pageContext.request.contextPath }"> <img alt="" src="images/logo.png"></img>
		</a>
	</div>
	<div id="cart" class="f_r">
		<button onclick="window.location='${pageContext.request.contextPath }/getCarInfo.do'">购物车</button>
		<em id="em"></em>
	</div>
	<div id="seach" class="m_auto_rl">
		<input class="f_l" type="text" />
		<button class="f_l">搜索</button>
		<label id="seach_placeholder">态生活</label>
		<div>
			<a href="javascript:void(0);">食疗</a><a href="javascript:void(0);">医疗</a>
			<a href="javascript:void(0);">食疗</a><a href="javascript:void(0);">医疗</a>
		</div>
	</div>
</div>
<!-- header end -->
<!-- nav start -->
<div id="nav">
	<div class="m_auto_rl area clearfix">
		<div id="category" class="f_l">
			<h3>全部分类</h3>
			<div id="category_tree">
				<ul id="ulli">
				</ul>
			</div>
			<div id="dorpdown_layer" class="none"></div>
		</div>
		<ul id="nav_menu" class="f_l">
			<li><a href="javascript:void(0);">首页</a></li>
			<li><a href="javascript:void(0);">知名品牌</a></li>
			<li><a href="javascript:void(0);">健康知识</a></li>
			<li><a href="javascript:void(0);">绿色食材</a></li>
		</ul>
		<a class="f_r nav_hdshop" href="javascript:void(0);">好友邀请</a> <a
			class="f_r nav_hdshop" href="javascript:void(0);">好友邀请</a>
	</div>
</div>
