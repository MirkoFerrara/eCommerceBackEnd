package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.UserRequest;
import com.betacom.eCommerce.classes.dto.view.GpuView;
import com.betacom.eCommerce.classes.dto.view.UserView;
import com.betacom.eCommerce.classes.pojo.GpuPojo;
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

    }

    @Override
    public void update(UserRequest req) {

    }

    @Override
    public void remove(Integer id) {

    }

    public List<UserView> list() {
        List<UserPojo> pojo = userRepo.findAll();
        return transformInView(pojo);
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