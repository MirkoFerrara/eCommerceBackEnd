package com.betacom.eCommerce.createTest;

import jakarta.transaction.Transactional;
import org.assertj.core.api.Assertions;
import com.betacom.eCommerce.classes.dto.request.RamRequest;
import com.betacom.eCommerce.classes.dto.view.RamView;
import com.betacom.eCommerce.interfaces.iService.iRamService;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.junit.jupiter.api.Assertions.fail;


@SpringBootTest
@Transactional
@Commit
@ContextConfiguration
public class RamServiceTest {

    @Autowired
    iRamService service;

    @Test
    public void createRamTest() {
        createRamTest(service);
    }

    public void createRamTest(iRamService service) {
        RamRequest request= new RamRequest();
        request.setIdProduct(4);
        request.setQuantity(1);
        request.setCart(false);
        request.setContained(false);
        request.setLaptopMounted(true);

        try {
            service.create(request);
            List<RamView> list=service.list();
            Assertions.assertThat(list.size()).isEqualTo(1);

        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione della ram" +e.getMessage());        }
    }
}
