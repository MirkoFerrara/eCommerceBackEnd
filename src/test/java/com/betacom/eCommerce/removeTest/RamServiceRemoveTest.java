package com.betacom.eCommerce.removeTest;

import com.betacom.eCommerce.classes.dto.request.CoolerRequest;
import com.betacom.eCommerce.classes.dto.request.RamRequest;
import com.betacom.eCommerce.classes.dto.view.CoolerView;
import com.betacom.eCommerce.classes.dto.view.RamView;
import com.betacom.eCommerce.interfaces.iService.iRamService;
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
public class RamServiceRemoveTest {

    @Autowired
    iRamService service;

    @Test
    public void removeRamTest() {
        removeRamTest(service);  ;
    }


    public void removeRamTest(iRamService service) {
        RamRequest request= new RamRequest();
        request.setId(1);
        try {
            service.remove(request.getId());
            List<RamView> list=service.list();
            Assertions.assertThat(list.size()).isEqualTo(0);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione del cooler" +e.getMessage());
        }
    }

}
