package com.betacom.eCommerce.removeTest;

import com.betacom.eCommerce.classes.dto.request.GpuRequest;
import com.betacom.eCommerce.classes.dto.request.KeyboardRequest;
import com.betacom.eCommerce.classes.dto.view.GpuView;
import com.betacom.eCommerce.classes.dto.view.KeyboardView;
import com.betacom.eCommerce.interfaces.iService.iGpuService;
import com.betacom.eCommerce.interfaces.iService.iKeyboardService;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.fail;

@SpringBootTest
public class KeyboardServireRemoveTest {

    @Autowired
    iKeyboardService service;

    @Test
    public void removeKeyboardTest() {
        removeKeyboardTest(service);  ;
    }


    public void removeKeyboardTest(iKeyboardService service) {
       KeyboardRequest request= new KeyboardRequest();
        request.setId(1);

        try {
            service.remove(request.getId());
            List<KeyboardView> list=service.list();
            Assertions.assertThat(list.size()).isEqualTo(0);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione del cooler" +e.getMessage());
        }
    }
}
