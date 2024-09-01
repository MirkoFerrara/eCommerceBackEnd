package com.betacom.eCommerce.removeTest;

import com.betacom.eCommerce.classes.dto.view.PcView;
import com.betacom.eCommerce.interfaces.iService.iPcService;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;
import java.util.List;
import static org.junit.jupiter.api.Assertions.fail;

@SpringBootTest
public class PcServiceRemoveTest {

    @Autowired
    iPcService service;

    @Test
    public void removePcTest() {
        removePcTest(service);  ;
    }


    public void removePcTest(iPcService service) {
        try {
            service.remove(1);
            List<PcView> list=service.list();
            Assertions.assertThat(list.size()).isEqualTo(0);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione del cooler" +e.getMessage());
        }
    }











}
