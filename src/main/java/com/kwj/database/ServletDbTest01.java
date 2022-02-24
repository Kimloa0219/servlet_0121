package com.kwj.database;

import java.sql.ResultSet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kwj.common.MysqlService;

public class ServletDbTest01 extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String selectQuery = "SELECT * FROM `real_estate`";
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		while(resultSet.next()) {
			
		}
	}
}
