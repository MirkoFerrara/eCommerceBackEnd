package com.betacom.eCommerce.createTest;

import com.betacom.eCommerce.classes.dto.request.PcRequest;
import com.betacom.eCommerce.classes.dto.view.MouseView;
import com.betacom.eCommerce.classes.dto.view.PcView;
import com.betacom.eCommerce.interfaces.iService.iPcService;
import static org.junit.jupiter.api.Assertions.fail;
import jakarta.transaction.Transactional;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;
import org.springframework.test.context.ContextConfiguration;

import java.util.List;

@SpringBootTest
@Transactional
@Commit
@ContextConfiguration
public class PcServiceTest {

    @Autowired
    iPcService service;

    @Test
    public void createPcTest() {
        createPcTest(service);  ;
    }

    public void createPcTest(iPcService service){
        PcRequest request = new PcRequest();
        request.setId(1);
        request.setIdProduct(6);
        request.setIdCPU(12);
        request.setIdGPU(11);
        request.setIdMemory(8);
        request.setIdMotherboard(9);
        request.setIdRam(5);
        request.setIdPsu(7);
        request.setIdCooler(10);
        request.setQuantity(2);

        try {
            service.create(request);
            List<PcView> list = service.list();
            Assertions.assertThat(list.size()).isEqualTo(1);
        }catch (Exception e){
            e.printStackTrace();
            fail("errore nella creazione del pc" +e.getMessage());        }
    }

}
