<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="product" scope="request" type="org.example.productmvc.model.Product"/>
<html>
<head>
    <title><c:out value="${product.name}"/></title>
</head>
<body>
<form method="post">
    <table>
        <tr>
            <td><label for="productId">id</label></td>
            <td><input type="text" id="productId" name="productId" value="${product.id}"></td>
        </tr>
        <tr>
            <td><label for="productName">Name</label></td>
            <td><input type="text" id="productName" name="productName" value="${product.name}"></td>
        </tr>
        <tr>
            <td><label for="productPrice">Price</label></td>
            <td><input type="number" id="productPrice" name="productPrice" value="${product.price}"></td>
        </tr>
        <tr>
            <td><label for="productQuantity">Quantity</label></td>
            <td><input type="number" id="productQuantity" name="productQuantity" value="${product.quantity}"></td>
        </tr>
        <tr>
            <td><label for="productManufacturer">Manufacturer</label></td>
            <td><input type="text" id="productManufacturer" name="productManufacturer" value="${product.manufacturer}"></td>
        </tr>
        <tr>
            <td><label for="productImage">Image</label></td>
            <td><input type="text" id="productImage" name="productImage" value="${product.image}"></td>
        </tr>
        <tr>
            <td><input type="submit" value="Update"></td>
            <td><a href="products?action=show">Back</a></td>
        </tr>

    </table>
</form>
</body>
</html>
