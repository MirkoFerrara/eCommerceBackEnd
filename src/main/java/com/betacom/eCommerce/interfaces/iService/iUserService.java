package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.UserRequest;
import com.betacom.eCommerce.classes.dto.view.UserView;

import java.util.List;

public interface iUserService {
    public void create(UserRequest req) throws Exception;
    public void update(UserRequest req) throws Exception;
    public void remove(Integer id) throws Exception;
    public List<UserView> listAdmin();
    public List<UserView> listUser();
    public UserView getById(Integer id);
    public UserView getByUsername(String username);
    public boolean checkIfExists(String username);
}
