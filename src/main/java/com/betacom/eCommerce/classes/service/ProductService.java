package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.view.ProductView;
import com.betacom.eCommerce.classes.pojo.*;
import com.betacom.eCommerce.interfaces.iService.iProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService implements iProductService {
    @Autowired
    private  SingletonService serviceSingleton;
    @Autowired
    private RepositorySingleton repositorySingleton;

    @Override
    public void create(ProductRequest req) throws Exception {
        ProductPojo productPojo;
        if (req.getIdProduct() == null)
            productPojo = createProduct(req);
        else
            productPojo = (ProductPojo) repositorySingleton.getRepo(req.getItem()).findById(req.getIdProduct()).get();
        createItem(req, productPojo);
    }

    private ProductPojo createProduct(ProductRequest req ) {
        return serviceSingleton.createProduct(req);
    }

    private void createItem( ProductRequest req , ProductPojo productPojo) {
        for (int i = 0; i < req.getQuantity(); i++)
            serviceSingleton.createItem(productPojo , req );
    }

    /*-----------------------------------------------------------------------------------------*/
    /******************************************************************************************/
    /*-----------------------------------------------------------------------------------------*/

    @Override
    public void update(ProductRequest req) throws Exception {
        serviceSingleton.update(req);
    }

    /******************************************************************************************/
    /******************************************************************************************/

    @Override
    public void remove(Integer id) {
        serviceSingleton.remove(id);
    }

    /******************************************************************************************/
    /******************************************************************************************/

    @Override
    public List<ProductView> list(String item) {
        JpaRepository<ProductPojo, Integer> repo = repositorySingleton.getRepo("product");
        List<ProductPojo> filteredList = repo
                .findAll()
                .stream()
                .filter(pojo -> pojo.getItem().equalsIgnoreCase(item)).toList();
        return transformInView(filteredList);
    }

    @Override
    public ProductView getById(Integer id) {
        return transformInView((ProductPojo) repositorySingleton.getRepo("product").findById(id).get());
    }

    private ProductView transformInView(ProductPojo pojo) {
        ProductView view = new ProductView();
        view.setIdProduct(pojo.getId());
        view.setBrand(pojo.getBrand());
        view.setColour(pojo.getColour());
        view.setDescription(pojo.getDescription());
        view.setPrice(pojo.getPrice());
        view.setModel(pojo.getModel());
        view.setUrl(pojo.getUrl());
        view.setItem(pojo.getItem());
        return view;
    }

    private List<ProductView> transformInView(List<ProductPojo> pojo) {
        return pojo.stream().map(s -> {
            ProductView view = new ProductView();
            view.setIdProduct(s.getId());
            view.setBrand(s.getBrand());
            view.setColour(s.getColour());
            view.setDescription(s.getDescription());
            view.setPrice(s.getPrice());
            view.setModel(s.getModel());
            view.setUrl(s.getUrl());
            return view;
        }).toList();
    }

    @Override
    public List<ProductView> search(String search) {
        JpaRepository<ProductPojo, Integer> repo = repositorySingleton.getRepo("product");
        List<ProductPojo> filteredList =  repo.findAll().stream()
                .filter(s -> s.getItem().toLowerCase().contains(search.toLowerCase()) ||
                        s.getModel().toLowerCase().contains(search.toLowerCase())||
                        s.getBrand().toLowerCase().contains(search.toLowerCase())||
                        s.getColour().toLowerCase().contains(search.toLowerCase() ) ||
                        s.getDescription().toLowerCase().contains(search.toLowerCase()) ||
                        s.getPrice().toString().contains(search) )
                .toList();
        return transformInView(filteredList);
    }
}
