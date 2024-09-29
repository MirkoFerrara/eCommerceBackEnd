package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.pojo.*;
import com.betacom.eCommerce.interfaces.iPojo.iPojoSon.iPojoComponent.iPojoComponent;
import com.betacom.eCommerce.interfaces.iPojo.iPojoParent;
import com.betacom.eCommerce.interfaces.iService.iServiceSingleton;
import com.betacom.eCommerce.interfaces.iPojo.iPojoSon.iPojoItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class SingletonService implements iServiceSingleton {

    private final RepositorySingleton repositorySingleton;

    @Autowired
    public SingletonService(@Lazy RepositorySingleton repositorySingleton) {
        this.repositorySingleton = repositorySingleton;
    }

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

    @SuppressWarnings("unchecked")
    public ProductPojo createProduct(ProductRequest req) {

        ProductPojo productPojo = (ProductPojo) getPojo("product") ;
        assert productPojo != null;
        productPojo.setItem(req.getItem());
        productPojo.setBrand(req.getBrand());
        productPojo.setDescription(req.getDescription());
        productPojo.setModel(req.getModel());
        productPojo.setPrice(req.getPrice());
        productPojo.setColour(req.getColour());

        JpaRepository<ProductPojo, Integer> repo = repositorySingleton.getRepo(req.getItem());
        repo.save(productPojo);
        return productPojo;
    }

    @SuppressWarnings("unchecked")
    public <T extends iPojoItem> void createItem(ProductPojo productPojo, ProductRequest req) {

        T item = (T) getPojo(req.getItem()) ;
        assert item != null;
        item.setCart(false);
        item.setProduct(productPojo);

        if( ! req.getItem().equalsIgnoreCase("pc") &&
            ! req.getItem().equalsIgnoreCase("laptop") &&
            ! req.getItem().equalsIgnoreCase("mouse") &&
            ! req.getItem().equalsIgnoreCase("monitor") &&
            ! req.getItem().equalsIgnoreCase("keyboard")
        )
            setContained((iPojoComponent)item,req);

        JpaRepository<T, Integer> repo = repositorySingleton.getRepo(req.getItem());
        repo.save(item);
    }

    private void setContained(iPojoComponent item , ProductRequest req){
        item.setContained(req.getContained());
    }

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

    public void update(ProductRequest req) throws Exception {

        JpaRepository<ProductPojo, Integer> repo = repositorySingleton.getRepo(req.getItem());
        Optional<ProductPojo> opt = repo.findById(req.getIdProduct());

        if (opt.isEmpty())
            throw new Exception("il prodotto non esiste");

        opt.get().setPrice(req.getPrice());
        opt.get().setItem(req.getItem());
        opt.get().setColour(req.getColour());
        opt.get().setDescription(req.getDescription());
        opt.get().setModel(req.getModel());
        opt.get().setBrand(req.getBrand());
        repo.save(opt.get());
    }
}
