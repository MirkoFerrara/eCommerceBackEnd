package com.betacom.eCommerce.createTest;

import com.betacom.eCommerce.classes.dto.request.MouseRequest;
import com.betacom.eCommerce.classes.dto.view.MouseView;
import com.betacom.eCommerce.interfaces.iService.iMouseService;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;
import static org.junit.jupiter.api.Assertions.fail;
import org.assertj.core.api.Assertions;

import java.util.List;


@SpringBootTest
@Transactional
@Commit
public class MouseServiceTest {

    @Autowired
    iMouseService service;

    @Test
    public void createMouseTest() {
        createMouseTest(service);  ;
    }

    public void createMouseTest(iMouseService service){
        MouseRequest request = new MouseRequest();
        request.setIdProduct(3);
        request.setQuantity(1);
        request.setCart(false);
        try {
            service.create(request);
            List<MouseView> list = service.list();
            Assertions.assertThat(list.size()).isEqualTo(1);

        }catch (Exception e){
            e.printStackTrace();
            fail("errore nella creazione del mouse" +e.getMessage());        }
    }

}
