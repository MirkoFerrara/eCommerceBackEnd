package com.betacom.eCommerce.createTest;

import com.betacom.eCommerce.classes.dto.request.LaptopRequest;
import com.betacom.eCommerce.classes.dto.view.LaptopView;
import com.betacom.eCommerce.interfaces.iService.iCpuService;
import com.betacom.eCommerce.interfaces.iService.iLaptopService;
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
public class LaptopServiceTest {

    @Autowired
    iLaptopService service;

@Autowired
iCpuService cpu;

    @Test
    public void createLaptopTest() {
        createLaptopTest(service);  ;
    }

    public void createLaptopTest(iLaptopService service) {
        LaptopRequest request= new LaptopRequest();
        request.setId(1);
        request.setIdCPU(1);
        request.setIdGPU(1);
        request.setIdProduct(1);
        request.setIdMemory(1);
        request.setIdMotherboard(1);
        request.setIdRam(1);
        request.setIdPsu(1);
        request.setIdCooler(1);
        request.setQuantity(1);


        try {
            service.create(request);
            List<LaptopView> list=service.list();
            Assertions.assertThat(list.size()).isEqualTo(1);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione del laptop" +e.getMessage());
        }
    }

}
