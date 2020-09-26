<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="spring-form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
</head>
<body style="background-color:#F5CBA7;">
<jsp:include page="header.jsp"/>
<h1 style="color:blue;">This is Admin dashboard</h1>
<style>
      button {
        display: inline-block;
        background-color: #800000;
        border-radius: 10px;
        border: 4px double #cccccc;
        color: #eeeeee;
        text-align: center;
        font-size: 15px;
        padding: 20px;
        width: 200px;
        transition: all 0.5s;
        cursor: pointer;
        margin: 5px;
      }
      button span {
        cursor: pointer;
        display: inline-block;
        position: relative;
        transition: 0.5s;
      }
      button span:after {
        content: '\00bb';
        position: absolute;
        opacity: 0;
        top: 0;
        right: -20px;
        transition: 0.5s;
      }
      button:hover {
        background-color: #f7c2f9;
      }
      button:hover span {
        padding-right: 25px;
      }
      button:hover span:after {
        opacity: 1;
        right: 0;
      }
    </style>
<!--<spring-form:form action="${pageContext.request.contextPath}/admin/product-save" method="POST" modelAttribute="product">-->
<div>
<a href="${pageContext.request.contextPath}/admin/product-entry"><button>Add New Product</button></a>
<a href="${pageContext.request.contextPath}/admin/product-list"><button>Show All Products</button></a>
</div>
<!--</spring-form:form>-->
<jsp:include page="footer.jsp"/>
<spring-form:form action="${pageContext.request.contextPath}/logout" method="POST">
<input type="submit" value="Logout">
</spring-form:form>
</body>
</html>