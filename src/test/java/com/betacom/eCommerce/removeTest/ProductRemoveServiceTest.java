package com.betacom.eCommerce.removeTest;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.view.ProductView;
import com.betacom.eCommerce.interfaces.iService.iProductService;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.assertj.core.api.Fail.fail;

@SpringBootTest
public class ProductRemoveServiceTest {

    @Autowired
    iProductService service;

    @Test
    public void removeProductTest() {
        removeProductTest(service);  ;
    }


    public void removeProductTest(iProductService service) {
        ProductRequest request= new ProductRequest();

        try {
            request.setIdProduct(1);
            service.remove(request.getIdProduct());
            List<ProductView> list=service.list("Monitor");
            Assertions.assertThat(list.size()).isEqualTo(0);

            request.setIdProduct(2);
            service.remove(request.getIdProduct());
            list=service.list("Mouse");
            Assertions.assertThat(list.size()).isEqualTo(0);

            request.setIdProduct(3);
            service.remove(request.getIdProduct());
            list=service.list("Keyboard");
            Assertions.assertThat(list.size()).isEqualTo(0);

            request.setIdProduct(4);
            service.remove(request.getIdProduct());
            list=service.list("Ram");
            Assertions.assertThat(list.size()).isEqualTo(0);

            request.setIdProduct(5);
            service.remove(request.getIdProduct());
            list=service.list("Psu");
            Assertions.assertThat(list.size()).isEqualTo(0);

            request.setIdProduct(6);
            service.remove(request.getIdProduct());
            list=service.list("Memory");
            Assertions.assertThat(list.size()).isEqualTo(0);

            request.setIdProduct(7);
            service.remove(request.getIdProduct());
            list=service.list("Motherboard");
            Assertions.assertThat(list.size()).isEqualTo(0);

            request.setIdProduct(8);
            service.remove(request.getIdProduct());
            list=service.list("Cooler");
            Assertions.assertThat(list.size()).isEqualTo(0);

            request.setIdProduct(9);
            service.remove(request.getIdProduct());
            list=service.list("Gpu");
            Assertions.assertThat(list.size()).isEqualTo(0);


            request.setIdProduct(10);
            service.remove(request.getIdProduct());
            list=service.list("Cpu");
            Assertions.assertThat(list.size()).isEqualTo(0);

            request.setIdProduct(11);
            service.remove(request.getIdProduct());
            list=service.list("Pc");
            Assertions.assertThat(list.size()).isEqualTo(0);

            request.setIdProduct(12);
            service.remove(request.getIdProduct());
            list=service.list("Laptop");
            Assertions.assertThat(list.size()).isEqualTo(0);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione del cooler" +e.getMessage());
        }
    }



}
