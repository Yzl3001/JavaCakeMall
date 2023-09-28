<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--header-->
<div class="header">
    <div class="container">
        <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <h1 class="navbar-brand"><a href="/Cake_war_exploded/index"></a></h1>
            </div>
            <!--navbar-header-->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="/Cake_war_exploded/index" <c:if test="${param.flag==1}">class="active" </c:if>>首页</a></li>
                    <c:choose><c:when test="${empty user}">
                        <li><a href="/Cake_war_exploded/user_register.jsp" <c:if test="${param.flag==10}">class="active" </c:if>>注册</a></li>
                        <li><a href="/Cake_war_exploded/user_login.jsp" <c:if test="${param.flag==9}">class="active" </c:if>>登录</a></li>
                    </c:when><c:otherwise>
                        <li><a href="/Cake_war_exploded/user_center.jsp" <c:if test="${param.flag==4}">class="active" </c:if>>个人中心</a></li>
                        <li><a href="/Cake_war_exploded/user_logout">退出</a></li>
                    </c:otherwise>
                    </c:choose>

                    <c:if test="${!empty user && user.isadmin}">
                        <li><a href="/Cake_war_exploded/admin/index.jsp" target="_blank">后台管理</a></li>
                    </c:if>
                </ul>
                <!--navbar-collapse-->
            </div>
            <!--navbar-header-->
        </nav>
        <div class="clearfix"></div>
    </div>
</div>
<!--header-->

