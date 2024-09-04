package com.betacom.eCommerce.createTest;

import com.betacom.eCommerce.classes.dto.request.CoolerRequest;
import com.betacom.eCommerce.classes.dto.view.CoolerView;
import com.betacom.eCommerce.interfaces.iService.iCoolerService;
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
public class CoolerServiceTest {

    @Autowired
    iCoolerService service;

    @Test
    public void createCoolerTest() {
        createCoolerTest(service);  ;
    }


    public void createCoolerTest(iCoolerService service) {
        CoolerRequest request= new CoolerRequest();
        request.setIdProduct(8);
        request.setQuantity(1);
        request.setCart(false);
        request.setContained(false);
        request.setLaptopMounted(true);

        try {
            service.create(request);
            List<CoolerView> list=service.list();
            Assertions.assertThat(list.size()).isEqualTo(1);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione del cooler" +e.getMessage());
        }
    }

}
