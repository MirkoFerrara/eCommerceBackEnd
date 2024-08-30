package com.betacom.eCommerce.createTest;

import com.betacom.eCommerce.classes.dto.request.MotherboardRequest;
import com.betacom.eCommerce.classes.dto.view.MotherboardView;
import com.betacom.eCommerce.interfaces.iService.iMotherboardService;
import jakarta.transaction.Transactional;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;

import java.util.List;

import static org.junit.jupiter.api.Assertions.fail;

@SpringBootTest
@Transactional
@Commit
public class MotherboardServiceTest {

    @Autowired
    iMotherboardService service;

    @Test
    public void createMotherboardTest() {
        createMotherboardTest(service);  ;
    }

    public void createMotherboardTest(iMotherboardService service) {
        MotherboardRequest request= new MotherboardRequest();
        request.setIdProduct(9);
        request.setQuantity(1);
        request.setCart(false);
        request.setContained(true);
        try {
            service.create(request);
            List<MotherboardView> list=service.list();
            Assertions.assertThat(list.size()).isEqualTo(1);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione della motherboard" +e.getMessage());        }
    }
}
