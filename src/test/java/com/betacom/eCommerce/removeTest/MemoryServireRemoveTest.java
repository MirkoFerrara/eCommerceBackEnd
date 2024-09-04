package com.betacom.eCommerce.removeTest;

import com.betacom.eCommerce.classes.dto.request.CoolerRequest;
import com.betacom.eCommerce.classes.dto.request.MemoryRequest;
import com.betacom.eCommerce.classes.dto.view.MemoryView;
import com.betacom.eCommerce.classes.dto.view.MonitorView;
import com.betacom.eCommerce.interfaces.iService.iMemoryService;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.fail;

@SpringBootTest
public class MemoryServireRemoveTest {
    @Autowired
    iMemoryService service;

    @Test
    public void removeMotherboardTest() {
        removeMotherboardTest(service);  ;
    }

    public void removeMotherboardTest(iMemoryService service) {
        MemoryRequest request= new MemoryRequest();
        request.setId(1);

        try {
            service.remove(request.getId());
            List<MemoryView> list=service.list();
            Assertions.assertThat(list.size()).isEqualTo(0);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione del cooler" +e.getMessage());
        }
    }
}
