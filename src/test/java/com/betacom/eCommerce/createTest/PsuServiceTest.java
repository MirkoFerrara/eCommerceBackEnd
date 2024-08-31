package com.betacom.eCommerce.createTest;


import com.betacom.eCommerce.classes.dto.request.PsuRequest;
import com.betacom.eCommerce.classes.dto.view.PsuView;
import com.betacom.eCommerce.interfaces.iService.iPsuService;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;
import java.util.List;
import static org.junit.jupiter.api.Assertions.fail;

@SpringBootTest
@Commit
public class PsuServiceTest {
    @Autowired
    iPsuService service;

    @Test
    public void createPsuTest() {
        createPsuTest(service);  ;
    }

    public void createPsuTest(iPsuService service) {
        PsuRequest request= new PsuRequest();
        request.setId(1);
        request.setIdProduct(5);
        request.setQuantity(1);
        request.setCart(false);
        request.setContained(false);

        try {
            service.create(request);
            service.getById(request.getId());
            List<PsuView> list=service.list();
            Assertions.assertThat(list.size()).isEqualTo(1);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione della psu" +e.getMessage());
        }
    }
}
