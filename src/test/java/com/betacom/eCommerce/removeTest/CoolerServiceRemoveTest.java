package com.betacom.eCommerce.removeTest;

import com.betacom.eCommerce.classes.dto.request.CoolerRequest;
import com.betacom.eCommerce.classes.dto.view.CoolerView;
import com.betacom.eCommerce.interfaces.iService.iCoolerService;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.fail;

@SpringBootTest
public class CoolerServiceRemoveTest {

    @Autowired
    iCoolerService service;

    @Test
    public void removeCoolerTest() {
        removeCoolerTest(service);  ;
    }


    public void removeCoolerTest(iCoolerService service) {
        CoolerRequest request= new CoolerRequest();
        request.setId(1);

        try {
            service.remove(request.getId());
            List<CoolerView> list=service.list();
            Assertions.assertThat(list.size()).isEqualTo(0);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione del cooler" +e.getMessage());
        }
    }

}
