package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.view.ProductView;
import com.betacom.eCommerce.classes.pojo.*;
import com.betacom.eCommerce.interfaces.iPojo.iPojoParent;
import com.betacom.eCommerce.interfaces.iPojo.iPojoSon.iPojoComponent.iPojoComponent;
import com.betacom.eCommerce.interfaces.iPojo.iPojoSon.iPojoItem;
import com.betacom.eCommerce.interfaces.iService.iProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductService implements iProductService {

    @Autowired
    private RepositorySingleton repositorySingleton;

    @Autowired
    private ItemService itemService;

    private iPojoParent getPojo(String item ){
        return switch (item.toLowerCase()) {
            case "psu" -> new PsuPojo();
            case "mouse" -> new MousePojo();
            case "monitor" -> new MonitorPojo();
            case "cpu" -> new CpuPojo();
            case "gpu" -> new GpuPojo();
            case "motherboard" ->new MotherboardPojo();
            case "keyboard" -> new KeyboardPojo();
            case "cooler" -> new CoolerPojo();
            case "ram" -> new RamPojo();
            case "memory" -> new MemoryPojo();
            case "product" -> new ProductPojo();
            default -> null;
        };
    }

    /******************************************************************************************
     ******************************************************************************************/

    @Override
    public void create(ProductRequest req) throws Exception {
        ProductPojo productPojo;
        if (req.getIdProduct() == null)
            productPojo = createProduct(req);
        else
            productPojo = (ProductPojo) repositorySingleton.getRepo(req.getItem()).findById(req.getIdProduct()).get();
        itemService.createItem( productPojo, req);
    }


    @SuppressWarnings("unchecked")
    public ProductPojo createProduct(ProductRequest req) {
        ProductPojo productPojo = (ProductPojo) getPojo("product") ; assert productPojo != null;
        setProduct(req,productPojo);
        saveProduct(productPojo,req);
        return productPojo;
    }

    private void setProduct(ProductRequest productRequest , ProductPojo productPojo){
        productPojo.setItem(productRequest.getItem());
        productPojo.setBrand(productRequest.getBrand());
        productPojo.setDescription(productRequest.getDescription());
        productPojo.setModel(productRequest.getModel());
        productPojo.setPrice(productRequest.getPrice());
        productPojo.setColour(productRequest.getColour());
    }

    private void saveProduct(ProductPojo productPojo,ProductRequest req){
        JpaRepository<ProductPojo, Integer> repo = repositorySingleton.getRepo(req.getItem());
        repo.save(productPojo);
    }

    /***********************************************************************************
     ***********************************************************************************/

    public void remove(Integer id) {

        JpaRepository<ProductPojo, Integer> repo = repositorySingleton.getRepo("product");
        ProductPojo pojo = repo.findById(id).get();
        String colour = pojo.getColour();
        String model = pojo.getModel();
        String brand = pojo.getBrand();

        JpaRepository<iPojoItem, Integer> repository = repositorySingleton.getRepo(pojo.getItem());
        List<iPojoItem> filteredList = repository.findAll().stream()
                .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                        && s.getProduct().getModel().equalsIgnoreCase(model)
                        && s.getProduct().getBrand().equalsIgnoreCase(brand))
                .toList();

        if (filteredList.isEmpty())
            repo.delete(pojo);
    }

    /******************************************************************************************
     ******************************************************************************************/

    public void update(ProductRequest req) throws Exception {

        JpaRepository<ProductPojo, Integer> repo = repositorySingleton.getRepo(req.getItem());
        Optional<ProductPojo> opt = repo.findById(req.getIdProduct());

        if (opt.isEmpty()) throw new Exception("il prodotto non esiste");

        setProduct(req,opt.get());
        repo.save(opt.get());
    }

    /******************************************************************************************
     ******************************************************************************************/

    @Override
    public List<ProductView> list(String item) {
        JpaRepository<ProductPojo, Integer> repo = repositorySingleton.getRepo("product");
        List<ProductPojo> filteredList = repo
                .findAll()
                .stream()
                .filter(pojo -> pojo.getItem().equalsIgnoreCase(item)).toList();
        return transformInView(filteredList);
    }

    /******************************************************************************************
     ******************************************************************************************/

    @Override
    public ProductView getById(Integer id) {
        return transformInView((ProductPojo) repositorySingleton.getRepo("product").findById(id).get());
    }

    /******************************************************************************************
     ******************************************************************************************/

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

    /******************************************************************************************
     ******************************************************************************************/

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
