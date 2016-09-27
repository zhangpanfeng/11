<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>企业信息管理系统_用户登录</title>
 <link rel="stylesheet" href="css/style.css">
<script src="js/jquery-1.8.3.js"></script>
<script>
    $(document).ready(function() {
        $("#validateCodeImg").click(function() {
            $("#validateCodeImg").attr("src", "validateCode.do?_=" + (new Date).getTime());
            return;
        });
    });
</script>

</head>
<body>

  <section class="container">
    <div class="login">
      <h1>用户登录</h1>
      <form action="login.do" method="post">
        <p>用户名：<input type="text" name="login"></p>
        <p>密 &码：<input type="password" name="password"></p>
        <p>验证码：<input type="text" name="validateCode" class="login_input"><img src="validateCode.do" id="validateCodeImg" alt="验证码"></p>
                                                      
        <p class="remember_me">
          <label>
            <input type="checkbox" name="remember_me" id="remember_me">
            记住密码
          </label>
        </p>
        <p class="submit"><input type="submit" name="commit" value="登录"></p>
      </form>
    </div>

    <div class="login-help">
      <p>忘记密码? <a href="index.html">点击修改</a>.</p>
      ${clientMessage.message}
    </div>
  </section>

</body>
</html>
