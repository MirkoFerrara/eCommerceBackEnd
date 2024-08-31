package com.betacom.eCommerce.createTest;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.interfaces.iService.iCartService;
import jakarta.transaction.Transactional;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;
import org.springframework.test.context.ContextConfiguration;
import java.util.List;
import static org.junit.jupiter.api.Assertions.fail;

@SpringBootTest
@Transactional
@Commit
@ContextConfiguration
public class CartServiceTest {

    @Autowired
    iCartService service;

    @Test
    public void createCartTest() {
        createCartTest(service);  ;
    }

    public void createCartTest(iCartService service) {
        CartRequest request= new CartRequest();
        request.setIdProduct(10);
        request.setUsername("Marco");
        try {
            service.create(request);
            List<CartView> list=service.list("Marco");
            Assertions.assertThat(list.size()).isEqualTo(1);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione del cart" +e.getMessage());
        }
    }
}
