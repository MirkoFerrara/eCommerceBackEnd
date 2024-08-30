package com.betacom.eCommerce.createTest;


import com.betacom.eCommerce.classes.dto.request.CpuRequest;
import com.betacom.eCommerce.classes.dto.view.CpuView;
import com.betacom.eCommerce.interfaces.iService.iCpuService;
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
public class CpuServiceTest {

    @Autowired
    iCpuService service;

    @Test
    public void createCpuTest() {
        createCpuTest(service);  ;
    }

    public void createCpuTest(iCpuService service) {
        CpuRequest request= new CpuRequest();
        request.setIdProduct(12);
        request.setQuantity(1);
        request.setCart(false);
        request.setContained(true);


        try {
            service.create(request);
            List<CpuView> list=service.list();
            Assertions.assertThat(list.size()).isEqualTo(1);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione della cpu" +e.getMessage());
        }
    }
}
