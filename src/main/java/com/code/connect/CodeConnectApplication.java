package com.code.connect;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"com.code.*"})
@MapperScan({"com.code.*"})
public class CodeConnectApplication {

	public static void main(String[] args) {
		SpringApplication.run(CodeConnectApplication.class, args);
	}

}
