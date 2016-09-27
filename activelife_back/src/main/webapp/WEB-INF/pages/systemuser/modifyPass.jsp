<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form  action="modifyPass.do" method="post">
			<table align="center">
				<tr>
					<td>用户名：</td>
					<td><input type="text" readonly="readonly" value="${sessionScope.systemUser.userName}" name="userName"> </td>
				</tr>
				<tr>
					<td>用户id：</td>
					<td><input type="text" readonly="readonly" value="${sessionScope.systemUser.userId}" name="userId"> </td>
				</tr>
				<tr><td>新密码</td>
					<td><input type="password" name="password" id="${sessionScope.systemUser.password}"></td>
				</tr>
				<tr><td>确认密码</td>
					<td><input type="password" name="agpassword" id="agpassword" onblur="check_ag()">
						<span style="font-size: 9" id="tixing"></span>
					</td>
				</tr>
				<tr>
				<td><input type="submit" value="提交"/></td>
				<td><input type="reset" value="重置"/></td>
				</tr>
			</table>
		</form>
</body>
</html>