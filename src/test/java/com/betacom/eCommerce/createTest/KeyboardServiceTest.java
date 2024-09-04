package com.betacom.eCommerce.createTest;

import com.betacom.eCommerce.classes.dto.request.KeyboardRequest;
import static org.junit.jupiter.api.Assertions.fail;
import com.betacom.eCommerce.classes.dto.view.KeyboardView;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;
import org.springframework.test.context.junit4.SpringRunner;
import com.betacom.eCommerce.interfaces.iService.iKeyboardService;
import org.assertj.core.api.Assertions;

import java.util.List;


@SpringBootTest
@Transactional
@Commit
public class KeyboardServiceTest {
    @Autowired
    iKeyboardService service;

    @Test
    public void createKeyboardTest() {
        createKeyboardTest(service);  ;
    }

    public void createKeyboardTest(iKeyboardService service) {
        KeyboardRequest request= new KeyboardRequest();
        request.setId(1);
        request.setIdProduct(3);
        request.setQuantity(1);
        request.setCart(false);

        try {
            service.create(request);
            List<KeyboardView> list=service.list();
            Assertions.assertThat(list.size()).isEqualTo(1);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione della keyboard" +e.getMessage());        }
    }
}
