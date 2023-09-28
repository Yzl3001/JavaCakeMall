<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
  <head>
    <title>商品列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="layer/layer.js"></script>
    <script type="text/javascript" src="js/cart.js"></script>
  </head>
  <body>
<!--header-->
<jsp:include page="/header.jsp">
  <jsp:param name="flag" value="1"></jsp:param>
</jsp:include>

<div class="subscribe2"></div>

<!--gallery-->
<div class="gallery">
  <div class="container">
    <div class="clearfix"></div>
    <div class="alert alert-info">新品推荐</div>
    <div class="gallery-grids">
      <c:forEach items="${newList}" var="g">
        <div class="col-md-3 gallery-grid">
          <a href="/goods_detail?id=${g.id}">
            <img src="/Cake_war_exploded/${g.cover}" class="img-responsive" alt="${g.name}"/>
          </a>
          <div class="gallery-info">
            <p>
<%--              <span class="glyphicon-eye-open" aria-hidden="true"></span>--%>
              <a href="/goods_detail?id=${g.id}">查看详情</a>
            </p>
            <div class="clearfix"></div>
          </div>
          <div class="galy-info">
            <p>${g.typeName}>${g.name}</p>
            <div class="galry">
              <div class="prices">
                <h5 class="item_price">¥${g.price}</h5>
              </div>
              <div class="clearfix"></div>
            </div>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>
</div>
<!--gallery-->

<!--subscribe-->
<div class="subscribe"></div>
<!--subscribe-->

<!--footer-->
<jsp:include page="/footer.jsp"></jsp:include>
<!--footer-->

<!--header-->
  </body>
</html>
