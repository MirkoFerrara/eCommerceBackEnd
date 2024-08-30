package com.betacom.eCommerce.createTest;

import com.betacom.eCommerce.classes.dto.request.GpuRequest;
import com.betacom.eCommerce.classes.dto.view.GpuView;
import com.betacom.eCommerce.interfaces.iService.iGpuService;
import jakarta.transaction.Transactional;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;
import org.springframework.test.context.junit4.SpringRunner;
import java.util.List;
import static org.junit.jupiter.api.Assertions.fail;

@SpringBootTest
@Transactional
@Commit
public class GpuServiceTest {

        @Autowired
        iGpuService service;

        @Test
        public void createGpuTest() {
            createGpuTest(service);  ;
        }

    public void createGpuTest(iGpuService service) {
        GpuRequest request= new GpuRequest();
        request.setIdProduct(11);
        request.setQuantity(1);
        request.setCart(false);
        request.setContained(true);
        try {
            service.create(request);
            List<GpuView> list=service.list();
            Assertions.assertThat(list.size()).isEqualTo(1);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione della gpu" +e.getMessage());
        }
    }

}
