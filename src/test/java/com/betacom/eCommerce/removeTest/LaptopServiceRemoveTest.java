package com.betacom.eCommerce.removeTest;

import com.betacom.eCommerce.classes.dto.request.CpuRequest;
import com.betacom.eCommerce.classes.dto.request.LaptopRequest;
import com.betacom.eCommerce.classes.dto.view.CpuView;
import com.betacom.eCommerce.classes.dto.view.LaptopView;
import com.betacom.eCommerce.interfaces.iService.iCpuService;
import com.betacom.eCommerce.interfaces.iService.iLaptopService;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.fail;

@SpringBootTest
public class LaptopServiceRemoveTest {

    @Autowired
    iLaptopService service;

    @Test
    public void removeLaptopTest() {
        removeLaptopTest(service);  ;
    }


    public void removeLaptopTest(iLaptopService service) {
        LaptopRequest request= new LaptopRequest();
        request.setId(1);

        try {
            service.remove(request.getId());
            List<LaptopView> list=service.list();
            Assertions.assertThat(list.size()).isEqualTo(0);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione del cooler" +e.getMessage());
        }
    }

}
