package com.betacom.eCommerce.createTest;

import com.betacom.eCommerce.classes.dto.request.LaptopRequest;
import com.betacom.eCommerce.classes.dto.view.LaptopView;
import com.betacom.eCommerce.interfaces.iService.iLaptopService;
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
public class LaptopServiceTest {

    @Autowired
    iLaptopService service;

    @Test
    public void createLaptopTest() {
        createLaptopTest(service);  ;
    }

    public void createLaptopTest(iLaptopService service) {
        LaptopRequest request= new LaptopRequest();
        request.setId(1);
        request.setIdProduct(2);
        request.setIdCPU(12);
        request.setIdGPU(11);
        request.setIdMemory(8);
        request.setIdRam(5);
        request.setIdMotherboard(9);
        request.setIdPsu(7);
        request.setIdCooler(10);

        try {
            service.create(request);
            List<LaptopView> list=service.list();
            Assertions.assertThat(list.size()).isEqualTo(1);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione del laptop" +e.getMessage());        }
    }

}
