package com.betacom.eCommerce.removeTest;

import com.betacom.eCommerce.classes.dto.request.CoolerRequest;
import com.betacom.eCommerce.classes.dto.request.MotherboardRequest;
import com.betacom.eCommerce.classes.dto.view.CoolerView;
import com.betacom.eCommerce.classes.dto.view.MotherboardView;
import com.betacom.eCommerce.interfaces.iService.iCoolerService;
import com.betacom.eCommerce.interfaces.iService.iMotherboardService;
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

public class MotherboardServiceRemoveTest {

    @Autowired
    iMotherboardService service;

    @Test
    public void removeMotherboardTest() {
        removeMotherboardTest(service);  ;
    }

    public void removeMotherboardTest(iMotherboardService service) {
        MotherboardRequest request= new MotherboardRequest();
        request.setId(1);

        try {
            service.remove(request.getId());
            List<MotherboardView> list=service.list();
            Assertions.assertThat(list.size()).isEqualTo(0);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione del cooler" +e.getMessage());
        }
    }
}
