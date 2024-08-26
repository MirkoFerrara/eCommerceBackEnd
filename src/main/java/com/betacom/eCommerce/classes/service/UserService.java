package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.UserRequest;
import com.betacom.eCommerce.classes.dto.view.UserView;
import com.betacom.eCommerce.classes.pojo.UserPojo;
import com.betacom.eCommerce.interfaces.iRepository.iUserRepository;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iService.iUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class UserService implements iUserService {

    @Autowired
    private iUserRepository userRepo;
    @Autowired
    private iProductRepository productRepo;

    @Override
    public void create(UserRequest req) {
        UserPojo pojo=new UserPojo();
        pojo.setAddress(req.getAddress());
        pojo.setUsername(req.getUsername().toLowerCase());
        pojo.setPassword(req.getPassword());
        System.out.println(req.getUsername());
        System.out.println(req.getId());
        System.out.println(req.getPassword());
        System.out.println(req.getRole());
        pojo.setRole(req.getRole().equalsIgnoreCase("ADMIN"));
        userRepo.save(pojo);
    }

    @Override
    public void update(UserRequest req) {
        UserPojo pojo = userRepo.findById(req.getId()).get();
        pojo.setUsername(req.getUsername().toLowerCase());
        pojo.setPassword(req.getPassword());
        pojo.setRole(req.getRole().equalsIgnoreCase("ADMIN"));
        pojo.setAddress(req.getAddress());
        userRepo.save(pojo);
    }

    @Override
    public void remove(Integer id) {
        userRepo.delete(userRepo.findById(id).get());
    }

    @Override
    public List<UserView> listAdmin() {
        return transformInView(userRepo.findAll(),"ADMIN");
    }

    @Override
    public List<UserView> listUser() {
        return transformInView(userRepo.findAll(),"USER");
    }
    
    @Override
    public  UserView getById(Integer id) {
        return transformInView(userRepo.findById(id).get());
    }

    @Override
    public  UserView getByUsername(String username) {
        return transformInView(userRepo.findByUsername(username).get());
    }

    public UserView transformInView( UserPojo pojo ) {
            UserView view = new UserView();
            view.setId(pojo.getId());
            view.setUsername(pojo.getUsername());
            view.setAddress(pojo.getAddress());
            view.setPassword(pojo.getPassword());
            view.setRole((pojo.getRole()) ? "ADMIN" : "USER");
            return view;
    }

    public List<UserView> transformInView(List<UserPojo> pojo, String role) {
        return pojo.stream()
                .filter(s -> { 
                    String userRole = s.getRole() ? "ADMIN" : "USER";
                    return userRole.equalsIgnoreCase(role);
                })
                .map(s -> {
                    UserView view = new UserView();
                    view.setId(s.getId());
                    view.setUsername(s.getUsername());
                    view.setAddress(s.getAddress());
                    view.setPassword(s.getPassword());
                    view.setRole(s.getRole() ? "ADMIN" : "USER");
                    return view;
                })
                .toList();
    }
}