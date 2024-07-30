<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="products" scope="request" type="java.util.HashMap "/>
<!DOCTYPE html>
<html>
<head>
    <title>Index</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <form action="products?action=search&" method="get">
        <table>
            <tr>
                <td><input type="text"  name="query"></td>
                <td><input type="submit" id="searchQuery" value="Search"></td>
            </tr>
        </table>
    </form>
</div>
<div class="container">
    <table class="table table-striped table-borderless table-hover caption-top align-middle">
        <caption class="">
            <h1>Product list</h1>
        </caption>
        <thead>
        <tr>
            <th scope="col">Name</th>
            <th scope="col">Price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Manufacturer</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody class="table-group-divider">
        <c:forEach var="product" items="${products.values()}">
            <tr>
                <td>
                    <a href="products?action=detail&productId=${product.id}"><c:out value="${product.name}"/></a>
                </td>
                <td>
                    <c:out value="${product.price}"/>
                </td>
                <td>
                    <c:out value="${product.quantity}"/>
                </td>
                <td>
                    <c:out value="${product.manufacturer}"/>
                </td>
                <td>
                    <a href="products?action=edit&productId=${product.id}">Edit</a>
                    -
                    <a href="products?action=delete&productId=${product.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <a href="products?action=add" type="button" class="btn btn-primary">Add new</a>
</div>


</body>
</html>