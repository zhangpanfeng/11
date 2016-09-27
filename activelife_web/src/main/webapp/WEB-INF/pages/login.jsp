<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link href="css/login.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js" type="text/javascript"></script>
</head>
<body>

	<!-- header start -->
	<div id="header">
		<div class="m_auto_rl area clearfix">
			<div id="logo" class="f_l" height="60px">
				<a href="http://www.baidu.com"> <img alt=""
					src="images/logo.png"></img>
				</a>
			</div>
			<h1 class="f_l">欢迎来到态生活</h1>
		</div>
	</div>
	<!-- header end -->
	<div id="login_reg" class="m_auto_rl">
		<div class="lr_left f_l"></div>
		<div class="lr_right f_l">
			<div class="title clearfix">
				<h2 class="f_l">请登录</h2>
				<a href="${pageContext.request.contextPath }/register_web.do" class="f_r">立即注册</a>
			</div>
			<div>
				<div id="tencent" class="none"></div>
				<div>
					<form action="${pageContext.request.contextPath }/loginWeb.do" method="post">
						<div class="con">
							<div class="item">
								<label class="lr_label name_label"></label> <input class="itxt" name="mobile"
									placeholder="请输入您的手机号"></input>
							</div>
							<div class="item">
								<label class="lr_label pmd_label"></label> <input class="itxt" name = "password"
									placeholder="请输入您的密码"></input>
							</div>
							<div class="item">
								<label class="lr_label pmd_label"></label> <input class="itxt" name = "pwd"
									placeholder="请输入您的密码"></input>
							</div>
							<div class="item">
								<input class="itxt_core f_l" placeholder="请输入验证码"></input> <img
									id="randcode" class="f_l" /><a class="f_r">看不清换一张</a>
							</div>
							<div class="item">
								<input class="itxt_core f_l itxt_core_l" placeholder="请输入手机验证码"></input>
								<button class="core_btn">获取手机验证码</button>
							</div>
						</div>
						<div>
							<input id="re_me" checked="" type="checkbox" name="checked" /><label
								for="re_me">我已阅读并同意《 态生活注册条款 》</label>
						</div>
						<input class="btn_green" type="submit" value="立即注册" />
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		
	</script>
</body>
</html>
