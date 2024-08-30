package com.betacom.eCommerce.createTest;

import com.betacom.eCommerce.classes.dto.request.MonitorRequest;
import com.betacom.eCommerce.classes.dto.view.MonitorView;
import com.betacom.eCommerce.interfaces.iService.iMonitorService;
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
public class MonitorServiceTest {

    @Autowired
    iMonitorService service;

    @Test
    public void createMonitorTest() {
        createMonitorTest(service);  ;
    }

    public void createMonitorTest(iMonitorService service) {
        MonitorRequest request= new MonitorRequest();
        request.setIdProduct(1);
        request.setQuantity(1);
        request.setCart(false);
        try {
            service.create(request);
            List<MonitorView> list=service.list();
            Assertions.assertThat(list.size()).isEqualTo(1);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione del monitor" +e.getMessage());        }
    }
}
