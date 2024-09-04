package com.betacom.eCommerce.removeTest;

import com.betacom.eCommerce.classes.dto.request.MouseRequest;
import com.betacom.eCommerce.classes.dto.request.PsuRequest;
import com.betacom.eCommerce.classes.dto.view.MouseView;
import com.betacom.eCommerce.interfaces.iService.iMouseService;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.fail;

@SpringBootTest
public class MouseServiceRemoveTest {
    @Autowired
    iMouseService service;

    @Test
    public void removeCoolerTest() {
        removeRamTest(service);  ;
    }


    public void removeRamTest(iMouseService service) {
        MouseRequest request= new MouseRequest();
        request.setId(1);

        try {
            service.remove(request.getId());
            List<MouseView> list=service.list();
            Assertions.assertThat(list.size()).isEqualTo(0);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione del cooler" +e.getMessage());
        }
    }
}
