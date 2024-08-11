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
        pojo.setEmail(req.getEmail());
        pojo.setPassword(req.getPassword());
        pojo.setRole(req.getRole().equalsIgnoreCase("ADMIN"));
        userRepo.save(pojo);
    }

    @Override
    public void update(UserRequest req) {
        UserPojo pojo = userRepo.findById(req.getId()).get();
        pojo.setEmail(req.getEmail());
        pojo.setPassword(req.getPassword());
        pojo.setRole(req.getRole().equalsIgnoreCase("ADMIN"));
        userRepo.save(pojo);
    }

    @Override
    public void remove(Integer id) {
        userRepo.delete(userRepo.findById(id).get());
    }

    @Override
    public List<UserView> list() {
        return transformInView(userRepo.findAll());
    }

    @Override
    public  UserView getById(Integer id) {
        return transformInView(userRepo.findById(id).get());
    }

    private UserView transformInView( UserPojo pojo ) {
            UserView view = new UserView();
            view.setId(pojo.getId());
            view.setEmail(pojo.getEmail());
            view.setPassword(pojo.getPassword());
            view.setRole((pojo.getRole()) ? "ADMIN" : "USER");
            return view;
    }

    private List<UserView> transformInView(List<UserPojo> user) {
        return user.stream().map(s -> {
            UserView view = new UserView();
            view.setId(s.getId());
            view.setEmail(s.getEmail());
            view.setPassword(s.getPassword());
            view.setRole((s.getRole()) ? "ADMIN" : "USER");
            return view;
        }).collect(Collectors.toList());
    }
}