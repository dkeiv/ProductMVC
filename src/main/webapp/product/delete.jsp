<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>h
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Confirm delete</title>
</head>
<body>
<jsp:useBean id="product" scope="request" type="org.example.productmvc.model.Product"/>
<img src="${product.image}" alt="${product.name}" class="rounded profile-picture">
<div><c:out value="${product.name}"/></div>
<div><c:out value="${product.price}"/></div>
<div><c:out value="${product.quantity}"/></div>
<div><c:out value="${product.manufacturer}"/></div>

<form method="post">
  <input type="text" name="productId=${product.id}" style="display: none;"/>
  <input type="submit" value="Delete">
  <a href="products?action=show"></a>
</form>
</body>
</html>
