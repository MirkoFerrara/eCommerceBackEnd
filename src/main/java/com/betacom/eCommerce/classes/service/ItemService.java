package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.pojo.*;
import com.betacom.eCommerce.interfaces.iPojo.iPojoParent;
import com.betacom.eCommerce.interfaces.iPojo.iPojoSon.iPojoComponent.iPojoComponent;
import com.betacom.eCommerce.interfaces.iPojo.iPojoSon.iPojoItem;
import com.betacom.eCommerce.interfaces.iRepository.iRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class ItemService {

    @Autowired
    private RepositorySingleton repositorySingleton;

    public iPojoParent getPojo(String item ){
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
    public <T extends iPojoItem> void createItem(ProductPojo productPojo, ProductRequest productRequest) {
        for (int i = 0; i < productRequest.getQuantity(); i++) {
            T item = (T) getPojo(productRequest.getItem());
            assert item != null;
            setItem(item, productPojo, productRequest);
            saveItem(item, productRequest);
        }
    }
    /*----------------------------------------------------------------------------------*/
    private <T extends iPojoItem> void setItem(T item , ProductPojo productPojo, ProductRequest productRequest){
        item.setCart(false);
        item.setProduct(productPojo);
        if( ! productRequest.getItem().equalsIgnoreCase("pc") &&
                ! productRequest.getItem().equalsIgnoreCase("laptop") &&
                ! productRequest.getItem().equalsIgnoreCase("mouse") &&
                ! productRequest.getItem().equalsIgnoreCase("monitor") &&
                ! productRequest.getItem().equalsIgnoreCase("keyboard")
        )
            setContained((iPojoComponent)item,productRequest);
    }
    /*----------------------------------------------------------------------------------*/
    private void saveItem(iPojoParent item , ProductRequest productRequest ){
         repositorySingleton.getRepo(productRequest.getItem()).save(item);
    }
    /*----------------------------------------------------------------------------------*/
    private void setContained(iPojoComponent item , ProductRequest req){
        item.setContained(req.getContained());
    }
    /*----------------------------------------------------------------------------------*/
    public Integer getCount(String item, Integer idProduct) {
        if (repositorySingleton.getRepo(item) instanceof iRepository specificRepo)
            return specificRepo.countByProduct_Id(idProduct);
        else
            throw new IllegalArgumentException("Item type does not support count by product: " + item);
    }
}
