<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New product</title>
</head>
<body>

<form method="post">
    <table>
        <tr>
            <td><label for="productId">id</label></td>
            <td><input type="text" id="productId" name="productId"></td>
        </tr>
        <tr>
            <td><label for="productName">Name</label></td>
            <td><input type="text" id="productName" name="productName"></td>
        </tr>
        <tr>
            <td><label for="productPrice">Price</label></td>
            <td><input type="number" id="productPrice" name="productPrice"></td>
        </tr>
        <tr>
            <td><label for="productQuantity">Quantity</label></td>
            <td><input type="number" id="productQuantity" name="productQuantity"></td>
        </tr>
        <tr>
            <td><label for="productManufacturer">Manufacturer</label></td>
            <td><input type="text" id="productManufacturer" name="productManufacturer"></td>
        </tr>
        <tr>
            <td><label for="productImage">Image</label></td>
            <td><input type="text" id="productImage" name="productImage"></td>
        </tr>
        <tr>
            <td><input type="submit" value="Add"></td>
        </tr>

    </table>
</form>

<a href="products?action=show">Back to list</a>

</body>
</html>
