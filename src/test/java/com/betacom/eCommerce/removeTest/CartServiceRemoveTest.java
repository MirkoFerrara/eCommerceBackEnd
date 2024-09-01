package com.betacom.eCommerce.removeTest;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.dto.view.CoolerView;
import com.betacom.eCommerce.interfaces.iService.iCartService;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.print.DocFlavor;
import java.util.List;

import static org.junit.jupiter.api.Assertions.fail;

@SpringBootTest
public class CartServiceRemoveTest {

    @Autowired
    iCartService service;

    @Test
    public void removeCartTest() {
        removeCartTest(service);  ;
    }

    /*FUNZIONE CHE CANCELLA IL CARRELLO*/
    //Mettiamo la lista fuori perche una volta eliminato il carello mi manda in eccezione la lista che giustamente risulta vuota, pertanto mi gestisco l eccezione con l'assertion.

    public void removeCartTest(iCartService service) {
        try{
            List<CartView> list=service.list("Marco");
            try {
                CartRequest request= new CartRequest();
                request.setId(1);
                request.setSelected(true);
                service.remove(request.getId());
            } catch (Exception e) {
                Assertions.assertThat(list.size()).isEqualTo(0);
            }
        }catch (Exception e){
            e.printStackTrace();
            fail("errore nella eliminazione del cart : " +e.getMessage());
        }
    }



}
