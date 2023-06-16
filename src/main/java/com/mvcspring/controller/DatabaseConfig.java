package com.mvcspring.controller;

import javax.sql.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
public class DatabaseConfig {

    @Bean
    public DataSource dataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        String Driver = "com.mysql.cj.jdbc.Driver";
        String Url = "jdbc:mysql://localhost:3306/ip_database";
        String Username = "root";
        String Password = "";
        dataSource.setDriverClassName(Driver);
        dataSource.setUrl(Url);
        dataSource.setUsername(Username);
        dataSource.setPassword(Password);
        return dataSource;
    }

    // Other configuration methods
}