
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Product;

  
    /**
 *
 * @author Mohamed
 */
public interface ProductDAO {
    public ResultSet getSearchProducts(String search);
    public ArrayList getProduct();
    public void deleteProduct(String productName) ;


}

