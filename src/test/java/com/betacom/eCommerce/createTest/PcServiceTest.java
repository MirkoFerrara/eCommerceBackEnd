package com.betacom.eCommerce.createTest;

import com.betacom.eCommerce.classes.dto.request.CpuRequest;
import com.betacom.eCommerce.classes.dto.request.PcRequest;
import com.betacom.eCommerce.classes.dto.view.CpuView;
import com.betacom.eCommerce.classes.dto.view.MouseView;
import com.betacom.eCommerce.classes.dto.view.PcView;
import com.betacom.eCommerce.interfaces.iService.iCpuService;
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

    @Autowired
    iCpuService cpu;

    @Test
    public void createPcTest() {
        createPcTest(service);  ;
    }

    public void createPcTest(iPcService service){
        PcRequest request = new PcRequest();
        CpuView cpu1 = cpu.getById(1);
        System.out.println("view della cpu "+cpu1);
        request.setId(1);
        request.setIdProduct(1);
        request.setIdCPU(1);
        request.setIdGPU(1);
        request.setIdMemory(1);
        request.setIdMotherboard(1);
        request.setIdRam(1);
        request.setIdPsu(1);
        request.setIdCooler(1);
        request.setQuantity(1);

        try {
            service.create(request);
            List<PcView> list = service.list();
            Assertions.assertThat(list.size()).isEqualTo(1);
        }catch (Exception e){
            e.printStackTrace();
            fail("errore nella creazione del pc" +e.getMessage());
        }
    }

}
