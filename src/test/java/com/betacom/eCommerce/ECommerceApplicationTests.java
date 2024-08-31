package com.betacom.eCommerce;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
//@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
class ECommerceApplicationTests {

	@Test
	void contextLoads() {
	}

//	@AfterAll
//	public static void afterAll() {
//		// Mantieni l'applicazione in esecuzione
//		try {
//			Thread.sleep(Long.MAX_VALUE);
//		} catch (InterruptedException e) {
//			e.printStackTrace();
//		}
//	}
}
