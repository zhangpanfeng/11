<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/back.css">
</head>
<body>

    <div class="header">
        <span class="crumb_icon"></span> <span class="crumb_left">你当前的位置：</span>
        <c:if test="${flag == 'DETAIL'}">
            <span class="crumb_right">系统管理&nbsp;&gt;&gt;&nbsp;产品详细信息</span>
        </c:if>
        <c:if test="${flag == 'AUDIT'}">
            <span class="crumb_right">管理员个人信息&nbsp;&gt;&gt;&nbsp;产品审核</span>
        </c:if>
    </div>
    <div class="body">
    
       <form action="">
            <table align="center">
                <tr>
                    <td class="field_name">用户编号：</td>
                    <td class="field_value">${sessionScope.systemUser.userId}
                    </td>
                    <td class="field_name">用户名：</td>
                    <td class="field_value">${sessionScope.systemUser.userName}</td>
                </tr>
                <tr>
                    <td class="field_name">性别：</td>
                    <td class="field_value">${sessionScope.systemUser.gender}</td>
                    <td class="field_name">邮箱：</td>
                    <td class="field_value">${sessionScope.systemUser.email}</td>
                </tr>
                <tr>
                    <td class="field_name">电话：</td>
                    <td class="field_value">${sessionScope.systemUser.cellphone}</td>
                 	<td class="field_name">手机：</td>
                    <td class="field_value">${sessionScope.systemUser.telephone}</td>
                 
                   
                </tr>
                <tr>
                    <td class="field_name">所属国家：</td>
                    <td class="field_value">${sessionScope.systemUser.userName}</td>
                    <td class="field_name">所属省份：</td>
                    <td class="field_value">${sessionScope.systemUser.userName}</td>
                </tr>
                <tr>
                    <td class="field_name">所属城市：</td>
                    <td class="field_value">${sessionScope.systemUser.userName}</td>
                    <td class="field_name">所属县：</td>
                    <td class="field_value">${sessionScope.systemUser.userName}</td>
                </tr>
                <tr>
                    <td class="field_name">详细地址：</td>
                    <td colspan="3" class="field_value">${sessionScope.systemUser.userName}</td>
                </tr>
              
            </table>
            </form>
        
    </div>
</body>
</html>