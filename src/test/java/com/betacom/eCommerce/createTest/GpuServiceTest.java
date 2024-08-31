package com.betacom.eCommerce.createTest;

import com.betacom.eCommerce.classes.dto.request.GpuRequest;
import com.betacom.eCommerce.classes.dto.view.GpuView;
import com.betacom.eCommerce.classes.dto.view.ProductView;
import com.betacom.eCommerce.classes.pojo.ProductPojo;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iService.iGpuService;
import com.betacom.eCommerce.interfaces.iService.iProductService;
import jakarta.transaction.Transactional;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.jdbc.core.JdbcOperations;
import org.springframework.test.annotation.Commit;

import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.fail;

@SpringBootTest
@Commit
public class GpuServiceTest {

        @Autowired
        iGpuService service;

        @Autowired
        iProductService product;



        @Test
        public void createGpuTest() {
            createGpuTest(service);
        }

    public void createGpuTest(iGpuService service) {
        GpuRequest request= new GpuRequest();
        request.setId(1);
        request.setIdProduct(9);
        request.setQuantity(1);
        request.setCart(false);
        request.setContained(false);

        try {
            service.create(request);
            System.out.print(service.getById(request.getId()));
            System.out.print(request);
            List<GpuView> list=service.list();
            Assertions.assertThat(list.size()).isEqualTo(1);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione della gpu" +e.getMessage());
        }
    }
}
