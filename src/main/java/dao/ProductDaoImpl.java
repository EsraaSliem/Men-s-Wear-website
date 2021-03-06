/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Product;

/**
 *
 * @author Mohamed
 */
public class ProductDaoImpl implements ProductDAO {

    public ArrayList getProduct() {
        Connection connection = DatabaseConnection.getConnecttion();
        String sql = "select * from shopping.product";
        PreparedStatement preparedStatement;
        ArrayList<Product> productList = new ArrayList<>();
        try {
            preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    Product product = new Product();
                    product.setProductId(rs.getInt(1));
                    product.setProductName(rs.getString(2));
                    product.setProductPrice(rs.getInt(3));
                    product.setProductType(rs.getString(4));
                    product.setProductDescription(rs.getString(5));
                    product.setProductImage(rs.getString(6));
                    product.setProductQuantity(rs.getInt(7));
                    productList.add(product);

                }
                return productList;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList getProductCategorey(String categorey) {
        Connection connection = DatabaseConnection.getConnecttion();
        String sql = "select * from shopping.product where product_type = ?";
        PreparedStatement preparedStatement;
        ArrayList<Product> productList = new ArrayList<>();
        try 
        {    
            preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
            preparedStatement.setString(1, categorey);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    Product product = new Product();
                    product.setProductId(rs.getInt(1));
                    product.setProductName(rs.getString(2));
                    product.setProductPrice(rs.getInt(3));
                    product.setProductType(rs.getString(4));
                    product.setProductDescription(rs.getString(5));
                    product.setProductImage(rs.getString(6));
                    product.setProductQuantity(rs.getInt(7));
                    productList.add(product);

                }

                return productList;

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void deleteProduct(String productName) {
        try {
            Connection connection = DatabaseConnection.getConnecttion();
            String sql = "Delete from shopping.product where product_name = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, productName);
            st.executeUpdate();
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public ResultSet getSearchProducts(String search) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
