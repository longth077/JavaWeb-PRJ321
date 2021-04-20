package controller;

import java.sql.ResultSet;
import java.sql.SQLClientInfoException;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import controller.Account;

public class AccountDAO {
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;

	public AccountDAO() {
		this.dataSource = getDataSource();
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public List<Account> getAccounts() {
		String SQL = "select * from Account";
		List<Account> list = jdbcTemplate.query(SQL, new AccountMapper());
		if(!list.isEmpty()) {
			return list;
		}
		
		return null;
	}
	@Bean
	public DataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		dataSource.setUrl("jdbc:sqlserver://localhost:1433;databaseName=ShoppingDB");
		dataSource.setUsername("asm3");
		dataSource.setPassword("1234567");
		return dataSource;
	}
	private static final class AccountMapper implements RowMapper<Account>{
	    public Account mapRow(ResultSet rs, int rowCount) throws SQLClientInfoException {
	    	Account account = new Account();
	    	try {
	    		System.out.println(rs.getString("user_mail") + " " + rs.getString("password"));
				account.setUser(rs.getString("user_mail"));
				account.setPassword(rs.getString("password"));
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	
	        return account;
	    }
	  }
}