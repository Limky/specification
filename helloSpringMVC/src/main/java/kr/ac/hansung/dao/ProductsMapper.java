package kr.ac.hansung.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ProductsMapper implements RowMapper<Products> {

	
		public Products mapRow(ResultSet rs, int rowNum) throws SQLException {
			
			Products products = new Products();
			
			products.setProductName(rs.getString("productName"));
			products.setProductBarcode(rs.getString("productBarcode"));
			products.setReviewerId(rs.getString("reviewerId"));
			products.setReviewText(rs.getString("reviewText"));
			products.setStarPoint(rs.getInt("starPoint"));
			products.setCompanyName(rs.getString("companyName"));
		
			
			return products;
			
	
		}
		
	}


