package com.betacom.eCommerce.removeTest;

import com.betacom.eCommerce.classes.dto.request.GpuRequest;
import com.betacom.eCommerce.classes.dto.view.GpuView;
import com.betacom.eCommerce.interfaces.iService.iCpuService;
import com.betacom.eCommerce.interfaces.iService.iGpuService;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.fail;

@SpringBootTest
public class GpuServireRemoveTest {

    @Autowired
    iGpuService service;

    @Test
    public void removeGpuTest() {
        removeGpuTest(service);  ;
    }


    public void removeGpuTest(iGpuService service) {
        GpuRequest request= new GpuRequest();
        request.setId(1);

        try {
            service.remove(request.getId());
            List<GpuView> list=service.list();
            Assertions.assertThat(list.size()).isEqualTo(0);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione del cooler" +e.getMessage());
        }
    }
}
