package org.example.productmvc.service;

import org.example.productmvc.model.Product;

import java.util.Map;

public interface IProductService {
    Map<String, Product> getAllProducts();
    Map<String, Product> searchByName(String name);
    Product getProductById(int id) throws Exception;
    void deleteProductById(int id);
    void addProduct(Product product);
    void updateProduct(Product product);

}
