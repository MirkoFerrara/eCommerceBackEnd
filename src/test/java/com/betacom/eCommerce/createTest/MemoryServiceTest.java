package com.betacom.eCommerce.createTest;

import com.betacom.eCommerce.classes.dto.request.MemoryRequest;
import com.betacom.eCommerce.classes.dto.view.MemoryView;
import static org.junit.jupiter.api.Assertions.fail;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import com.betacom.eCommerce.interfaces.iService.iMemoryService;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;
import org.assertj.core.api.Assertions;
import java.util.List;


@SpringBootTest
@Transactional
@Commit
public class MemoryServiceTest {

    @Autowired
    iMemoryService service;
    @Test
    public void createMemoryTest() {
        createMemoryTest(service);
    }

    public void createMemoryTest(iMemoryService service) {
        MemoryRequest request=new MemoryRequest();
        request.setIdProduct(8);
        request.setQuantity(1);
        request.setCart(false);
        request.setContained(true);
        try {
            service.create(request);
            List<MemoryView> list = service.list();
            Assertions.assertThat(list.size()).isEqualTo(1);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione della memory" +e.getMessage());
        }
    }


}
