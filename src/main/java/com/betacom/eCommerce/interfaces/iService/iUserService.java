package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.UserRequest;
import com.betacom.eCommerce.classes.dto.view.UserView;

import java.util.List;

public interface iUserService {
     void create(UserRequest req) throws Exception;
     void update(UserRequest req) throws Exception;
     void remove(Integer id) throws Exception;
     boolean checkIfExists(String username);
     List<UserView> listAdmin();
     List<UserView> listUser();
     UserView getById(Integer id);
     UserView getByUsername(String username);
}
