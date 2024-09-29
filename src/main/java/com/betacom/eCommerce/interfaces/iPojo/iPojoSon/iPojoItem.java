package com.betacom.eCommerce.interfaces.iPojo.iPojoSon;

import com.betacom.eCommerce.classes.pojo.ProductPojo;
import com.betacom.eCommerce.interfaces.iPojo.iPojoParent;

public interface iPojoItem extends iPojoParent {
    Boolean getCart();
    void setCart(Boolean cart);
    Integer getId();
    void setId(Integer id);
    ProductPojo getProduct();
    void setProduct(ProductPojo pojo);
}
