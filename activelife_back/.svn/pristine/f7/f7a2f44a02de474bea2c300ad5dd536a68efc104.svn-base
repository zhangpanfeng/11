<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
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
            <span class="crumb_right">用户管理&nbsp;&gt;&gt;&nbsp;产品详细信息</span>
        </c:if>
        <c:if test="${flag == 'AUDIT'}">
            <span class="crumb_right">用户管理&nbsp;&gt;&gt;&nbsp;用户审核</span>
        </c:if>
    </div>
    <div class="body">
        <form action="auditCustomer.do" method="post">
            <table align="center">
                <tr>
                    <td class="field_name">用户ID：</td>
                    <td class="field_value">${customerVo.customerId}<input type="hidden" name="customerId" value="${customer.customerId}" /></td>
                    <td class="field_name">用户姓名：</td>
                    <td class="field_value">${customerVo.firstName}${customerVo.secondName}</td>
                </tr>
                <tr>
                    <td class="field_name">QQ号：</td>
                    <td class="field_value">${customerVo.qqNumber}</td>
                    <td class="field_name">邮箱：</td>
                    <td class="field_value">${customerVo.email}</td>
                </tr>
                <tr>
                    <td class="field_name">地址：</td>
                    <td class="field_value">${customerVo.address}</td>
                    <td class="field_name">产品审核状态：</td>
                    <td class="field_value"><c:forEach items="${customerStatus}" var="status">
                            <c:if test="${customerVo.status == status.key}">${status.value}</c:if>
                        </c:forEach></td>
                </tr>
                <tr>
                    <td class="field_name">所属国家：</td>
                    <td class="field_value">${customerVo.countryCode}</td>
                    <td class="field_name">所属省份：</td>
                    <td class="field_value">${customerVo.provinceCode}</td>
                </tr>
                <tr>
                    <td class="field_name">所属城市：</td>
                    <td class="field_value">${customerVo.cityCode}</td>
                    <td class="field_name">所属县：</td>
                    <td class="field_value">${customerVo.countyCode}</td>
                </tr>
                <tr>
                    <td class="field_name">详细地址：</td>
                    <td colspan="3" class="field_value">${customerVo.address}</td>
                </tr>
                <c:if test="${flag == 'AUDIT'}">
                    <tr>
                        <td class="field_name">审核状态：</td>
                        <td colspan="3"><select name="status" class="generic_select">
                                <option>请选择</option>
                                <c:forEach items="${customerStatus}" var="status">
                                  
                                        <option value="${status.key}">${status.value}</option>
                                </c:forEach>
                        </select></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="3"><input type="submit" value="保存" /></td>
                    </tr>
                </c:if>
            </table>
        </form>
    </div>
</body>
</html>