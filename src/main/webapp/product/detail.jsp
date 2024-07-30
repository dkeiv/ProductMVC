<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="product" scope="request" type="org.example.productmvc.model.Product"/>
<html>
<head>
    <title><c:out value="${product.name}"/></title>
</head>
<body>
<jsp:useBean id="product" scope="request" type="org.example.productmvc.model.Product"/>
<img src="${product.image}" alt="${product.name}" class="rounded profile-picture">
<div><c:out value="${product.name}"/></div>
<div><c:out value="${product.price}"/></div>
<div><c:out value="${product.quantity}"/></div>
<div><c:out value="${product.manufacturer}"/></div>

<a href="products?action=show">back to list</a>
</body>
</html>
