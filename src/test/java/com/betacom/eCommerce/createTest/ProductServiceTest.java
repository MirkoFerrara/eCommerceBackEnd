package com.betacom.eCommerce.createTest;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.view.ProductView;
import com.betacom.eCommerce.interfaces.iService.iProductService;
import static org.junit.jupiter.api.Assertions.fail;

import jakarta.transaction.Transactional;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Isolation;

import java.util.List;

@SpringBootTest
@Transactional
@Commit
public class ProductServiceTest {

    @Autowired
    iProductService service;

    @Test
    public void createProductTest() {
        createProductTest(service);  ;
    }


    public void createProductTest(iProductService service){
        ProductRequest request = new ProductRequest();
        try{
            request.setItem("Monitor");
            request.setBrand("Asus");
            request.setDescription("Asus monitor 144Hz");
            request.setModel("ASUS VZ24EHE LED display 60,5 cm 1920 x 1080 Pixel Full HD Nero");
            request.setPrice(700.50F);
            request.setColour("Nero");
            service.create(request);

            List<ProductView> list = service.list();
            Assertions.assertThat(list.size()).isEqualTo(1);

            request.setItem("Laptop");
            request.setBrand("MSI");
            request.setDescription("Pc Msi 144Hz");
            request.setModel("MSI Modern 15 B12M-094IT");
            request.setPrice(1500.50F);
            request.setColour("Rosso");
            service.create(request);

            list = service.list();
            Assertions.assertThat(list.size()).isEqualTo(2);

            request.setItem("Mouse");
            request.setBrand("Logitech");
            request.setDescription("mouse  con tasti laterali");
            request.setModel("g213");
            request.setPrice(80.60F);
            request.setColour("Bianco");
            service.create(request);

            list = service.list();
            Assertions.assertThat(list.size()).isEqualTo(3);

            request.setItem("Keyboard");
            request.setBrand("Logitech");
            request.setDescription("tastiera a membrana");
            request.setModel("g213");
            request.setPrice(80.60F);
            request.setColour("Bianco");
            service.create(request);

            list = service.list();
            Assertions.assertThat(list.size()).isEqualTo(4);

            request.setItem("Ram");
            request.setBrand("Corsair");
            request.setDescription("ram 16gb 3200mhz");
            request.setModel("vengeance");
            request.setPrice(70.50F);
            request.setColour("Nero");
            service.create(request);

            list = service.list();
            Assertions.assertThat(list.size()).isEqualTo(5);

            request.setItem("Pc");
            request.setBrand("HP");
            request.setDescription("HP processore i9 2,22 ghz");
            request.setModel("hp ");
            request.setPrice(700.50F);
            request.setColour("Nero");
            service.create(request);

            list = service.list();
            Assertions.assertThat(list.size()).isEqualTo(6);

            request.setItem("Psu");
            request.setBrand("Corsair");
            request.setDescription("HP processore i9 2,22 ghz");
            request.setModel("hp ");
            request.setPrice(700.50F);
            request.setColour("Nero");
            service.create(request);

            list = service.list();
            Assertions.assertThat(list.size()).isEqualTo(7);

            request.setItem("Memory");
            request.setBrand("HP");
            request.setDescription("HP processore i9 2,22 ghz");
            request.setModel("hp ");
            request.setPrice(700.50F);
            request.setColour("Nero");
            service.create(request);

            list = service.list();
            Assertions.assertThat(list.size()).isEqualTo(8);

            request.setItem("Motherboard");
            request.setBrand("HP");
            request.setDescription("HP processore i9 2,22 ghz");
            request.setModel("hp ");
            request.setPrice(700.50F);
            request.setColour("Nero");
            service.create(request);

            list = service.list();
            Assertions.assertThat(list.size()).isEqualTo(9);

            request.setItem("Cooler");
            request.setBrand("Noctua");
            request.setDescription("dissipatore monoventola 240mm 3500");
            request.setModel("noctua");
            request.setPrice(700.50F);
            request.setColour("Nero");
            service.create(request);

            list = service.list();
            Assertions.assertThat(list.size()).isEqualTo(10);

            request.setItem("GPU");
            request.setBrand("Nvidia");
            request.setDescription("scheda video nvidia gddr6 tri ventola");
            request.setModel("Rtx 4090");
            request.setPrice(700.50F);
            request.setColour("Nero");
            service.create(request);

            list = service.list();
            Assertions.assertThat(list.size()).isEqualTo(11);

            request.setItem("CPU");
            request.setBrand("Amd");
            request.setDescription("processo hexacore 3.5 ghz");
            request.setModel("ryzen 5 4600x");
            request.setPrice(150.50F);
            request.setColour("Nero");
            service.create(request);

            list = service.list();
            Assertions.assertThat(list.size()).isEqualTo(12);


        }catch(Exception e){
            e.printStackTrace();
            fail("errore nella creazione del prodotto" +e.getMessage());
        }
    }
}
