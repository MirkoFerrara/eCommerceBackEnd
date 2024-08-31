package com.betacom.eCommerce.createTest;

import com.betacom.eCommerce.classes.dto.request.UserRequest;
import com.betacom.eCommerce.classes.dto.view.UserView;
import com.betacom.eCommerce.classes.service.UserService;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import com.betacom.eCommerce.interfaces.iService.iUserService;
import org.springframework.test.annotation.Commit;
import java.util.List;
import static org.assertj.core.api.Fail.fail;

@SpringBootTest
@Commit
public class UserServiceTest {
    @Autowired
    iUserService service;


    @Test
    public void serviceTest() {
        serviceTest(service);
    }

    public void serviceTest(iUserService service) {
        UserRequest request = new UserRequest();
        request.setUsername("Marco");
        request.setPassword("password");
        request.setRole("ROLE_USER");
        request.setAddress("via ginevra 47");
        try{
            service.create(request);
            List<UserView> list=service.listUser();
            Assertions.assertThat(list.size()).isEqualTo(1);
        }catch (Exception e){
            e.printStackTrace();
            fail("errore nella creazione" +e.getMessage());        }

    
      
    }
}
