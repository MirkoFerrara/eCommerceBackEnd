package com.betacom.eCommerce.removeTest;

import com.betacom.eCommerce.classes.dto.request.RamRequest;
import com.betacom.eCommerce.classes.dto.view.PsuView;
import com.betacom.eCommerce.interfaces.iService.iPsuService;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.fail;


@SpringBootTest
public class PsuRemoveServiceTest {

    @Autowired
    iPsuService service;

    @Test
    public void removeCoolerTest() {
        removeRamTest(service);  ;
    }


    public void removeRamTest(iPsuService service) {
        RamRequest request= new RamRequest();
        request.setId(1);

        try {
            service.remove(request.getId());
            List<PsuView> list=service.list();
            Assertions.assertThat(list.size()).isEqualTo(0);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione del cooler" +e.getMessage());
        }
    }

}
