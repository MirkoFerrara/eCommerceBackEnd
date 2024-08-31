//package com.betacom.eCommerce.createTest;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.context.annotation.Profile;
//import org.h2.tools.Server;
//
//import java.sql.SQLException;
//
//@Configuration
//@Profile("test")
//public class H2TestConfig {
//
//    @Bean(initMethod = "start", destroyMethod = "stop")
//    public Server h2Server() throws SQLException {
//        return Server.createTcpServer("-tcp", "-tcpAllowOthers", "-tcpPort", "9092");
//    }
//}