package org.example.productmvc.service;

import org.example.productmvc.model.Product;

import java.util.*;

public class ProductService implements IProductService {
    private static final Map<String, Product> products;

    static {
        products = new HashMap<String, Product>();
        products.put("Car of the future", new Product(1, "Car of the future", 100.0, 20, "url", "Ford"));
        products.put("Electric Scooter", new Product(2, "Electric Scooter", 200.0, 30, "url", "Tesla"));
        products.put("Smartphone", new Product(3, "Smartphone", 300.0, 50, "url", "Apple"));
        products.put("Laptop", new Product(4, "Laptop", 400.0, 15, "url", "Dell"));
        products.put("Smartwatch", new Product(5, "Smartwatch", 150.0, 25, "url", "Samsung"));
        products.put("Drone", new Product(6, "Drone", 500.0, 10, "url", "DJI"));
        products.put("VR Headset", new Product(7, "VR Headset", 250.0, 40, "url", "Oculus"));
        products.put("Electric Bike", new Product(8, "Electric Bike", 600.0, 8, "url", "Yamaha"));
        products.put("Home Assistant", new Product(9, "Home Assistant", 50.0, 60, "url", "Amazon"));
        products.put("Wireless Earbuds", new Product(10, "Wireless Earbuds", 75.0, 70, "url", "Bose"));
    }


    @Override
    public void addProduct(Product product) {
        products.put(product.getName(), product);
    }

    @Override
    public Map<String, Product> getAllProducts() {
        return products;
    }

    @Override
    public Map<String, Product> searchByName(String name) {
        Map<String, Product> result = new HashMap<>();
        for (Product product : products.values()) {
            if (product.getName().toLowerCase().contains(name)) {
                System.out.println(product);
                result.put(product.getName(), product);
            }
        }
        return result;
    }

    @Override
    public Product getProductById(int id) {
        Product product = null;
        for (Product p : products.values()) {
            if (p.getId() == id) {
                product = p;
            }
        }
        return product;
    }

    @Override
    public void deleteProductById(int id) {
        Product product = this.getProductById(id);
        products.remove(product.getName());
    }

    @Override
    public void updateProduct(Product product) {

    }
}
