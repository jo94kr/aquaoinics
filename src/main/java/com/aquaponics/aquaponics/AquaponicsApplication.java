package com.aquaponics.aquaponics;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class AquaponicsApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(AquaponicsApplication.class, args);
	}

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(AquaponicsApplication.class);
	}

}
