package com.betacom.eCommerce.removeTest;

import com.betacom.eCommerce.classes.dto.request.CoolerRequest;
import com.betacom.eCommerce.classes.dto.request.UserRequest;
import com.betacom.eCommerce.classes.dto.view.UserView;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import java.util.List;
import static org.junit.jupiter.api.Assertions.fail;
import com.betacom.eCommerce.interfaces.iService.iUserService;


@SpringBootTest
public class UserServiceRemoveTest {
    @Autowired
    iUserService service;

    @Test
    public void removeUserTest() {
        removeUserTest(this.service);  ;
    }


    public void removeUserTest(iUserService service) {
        UserRequest request= new UserRequest();
        request.setId(1);
        try {
            service.remove(request.getId());
            List<UserView> list=service.listUser();
            Assertions.assertThat(list.size()).isEqualTo(0);
        } catch (Exception e) {
            e.printStackTrace();
            fail("errore nella creazione dello user" +e.getMessage());
        }
    }

}
