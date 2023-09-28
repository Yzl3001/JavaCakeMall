<%@ page contentType="text/html;charset=UTF-8" language="java"
    pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>商品列表</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
    <div class="container-fluid">
        <jsp:include page="/admin/header.jsp"></jsp:include>

        <div class="text-right"><a class="btn btn-warning" href="/Cake_war_exploded/admin/goods_add.jsp">添加商品</a> </div>

        <br>

        <ul role="tablist" class="nav nav-tabs">
            <li <c:if test="${type==0}">class="active" </c:if> role="presentation"><a href="/admin/goods_list">全部商品</a> </li>
        </ul>

        <br>

        <table class="table table-bordered table-hover">

            <tr>
                <th width="5%">ID</th>
                <th width="10%">图片</th>
                <th width="10%">名称</th>
                <th width="20%">介绍</th>
                <th width="10%">价格</th>
                <th width="10%">类目</th>
                <th width="25%">操作</th>
            </tr>

            <c:forEach items="${p.list}" var="g">
                <tr>
                    <td><p>${g.id}</p></td>
                    <td><p><a href="/Cake_war_exploded/goods_detail?id=${g.id}" target="_blank"><img src="/Cake_war_exploded/${g.cover}" width="100px" height="100px"> </a> </p></td>
                    <td><p><a href="/Cake_war_exploded/goods_detail?id=${g.id}" target="_blank">${g.name}</a></p></td>
                    <td><p>${g.intro}</p></td>
                    <td><p>${g.price}</p></td>
                    <td><p>${type}</p></td>
                    <td>
                        <a class="btn btn-success" href="/Cake_war_exploded/admin/goods_editshow?id=${g.id }& pageNumber=${p.pageNumber}&type=${type}">修改</a>
                        <a class="btn btn-danger" href="/Cake_war_exploded/admin/goods_delete?id=${g.id }& pageNumber=${p.pageNumber}&type=${type}">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <br>

        <jsp:include page="/page.jsp">
            <jsp:param name="url" value="/Cake_war_exploded/admin/goods_list"/>
            <jsp:param name="param" value="&type=${type }"/>
        </jsp:include>

        <br>
    </div>
</body>
</html>
