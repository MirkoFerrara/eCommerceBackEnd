package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.pojo.*;
import com.betacom.eCommerce.interfaces.iPojo.iPojoParent;
import com.betacom.eCommerce.interfaces.iPojo.iPojoSon.iPojoComponent.iPojoComponent;
import com.betacom.eCommerce.interfaces.iPojo.iPojoSon.iPojoItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;

public class ItemService {

    @Autowired
    private RepositorySingleton repositorySingleton;

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
            default -> null ;
        };
    }

    /******************************************************************************************
     ******************************************************************************************/

    @SuppressWarnings("unchecked")
    public <T extends iPojoItem> void createItem(ProductPojo productPojo, ProductRequest req) {
        for (int i = 0; i < req.getQuantity(); i++) {
            T item = (T) getPojo(req.getItem());
            assert item != null;
            setItem(item, productPojo, req);
            saveItem(item, req);
        }
    }
    /*----------------------------------------------------------------------------------*/
    private <T extends iPojoItem> void setItem(T item , ProductPojo productPojo, ProductRequest req){
        item.setCart(false);
        item.setProduct(productPojo);
        if( ! req.getItem().equalsIgnoreCase("pc") &&
                ! req.getItem().equalsIgnoreCase("laptop") &&
                ! req.getItem().equalsIgnoreCase("mouse") &&
                ! req.getItem().equalsIgnoreCase("monitor") &&
                ! req.getItem().equalsIgnoreCase("keyboard")
        )
            setContained((iPojoComponent)item,req);
    }
    /*----------------------------------------------------------------------------------*/
    private <T extends iPojoItem> void saveItem(T item , ProductRequest req ){
        JpaRepository<T, Integer> repo = repositorySingleton.getRepo(req.getItem());
        repo.save(item);
    }
    /*----------------------------------------------------------------------------------*/
    private void setContained(iPojoComponent item , ProductRequest req){
        item.setContained(req.getContained());
    }

}
