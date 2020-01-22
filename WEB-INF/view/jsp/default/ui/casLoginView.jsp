<!DOCTYPE html>

<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>GIS 数字系统</title>
    <!--图标样式-->
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.7.2/css/all.min.css'>
    <!-- <link rel="shortcut icon" type="image/x-icon" href="../img/IM_PLUS_logo.jpg" /> -->
    <link rel="stylesheet" href="css/login.css">
    <script src="js/jquery-2.1.4.min.js"></script>
    <script src="js/jquery.md5.js"></script>
</head>
<body>
<span style="font-size: 40px; font-weight: normal; margin-bottom: 20px;">GIS 数字系统</span>
<div class="container" id="container">
    <div class="form-container sign-in-container">
        <form:form method="post" id="fm1" commandName="${commandName}" htmlEscape="true">
            <h1>登录</h1>
            <div class="social-container">
                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
            </div>
            <span>第三方账号登录</span>
            <form:input cssClass="required" placeholder="账号" id="username" size="25" tabindex="1" accesskey="${userNameAccessKey}" path="username" autocomplete="off" htmlEscape="true" />
            <form:password cssClass="required" placeholder="密码" id="password" size="25" tabindex="2" path="password"  accesskey="${passwordAccessKey}" htmlEscape="true" autocomplete="off" />
            <input type="hidden" name="lt" value="${loginTicket}" />
            <input type="hidden" name="execution" value="${flowExecutionKey}" />
            <input type="hidden" name="_eventId" value="submit" />
            <input class="btn-submit" name="submit" accesskey="l" value="<spring:message code="screen.welcome.button.login" />" tabindex="4" type="submit" />
            <form:errors path="*" id="msg" cssClass="errors" element="div" htmlEscape="false" />
        </form:form>
    </div>
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-right">
                <h1>你好朋友！</h1>
                <p>输入您的个人信息注册成为会员。</p>
                <button class="ghost" id="signUp">注册</button>
            </div>
        </div>
    </div>
</div>
<footer>
    <p>
        GIS 数字系统    Copyright © 2019-2020
    </p>
</footer>
</body>
</html>
