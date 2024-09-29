package com.betacom.eCommerce.interfaces.iPojo.iPojoSon;

import com.betacom.eCommerce.interfaces.iPojo.iPojoParent;

public interface iPojoProduct extends iPojoParent {

    void setItem(String item);
    void setColour(String colour);
    void setDescription(String description);
    void setBrand(String brand);
    void setModel(String model);
    void setPrice(Float value);
}
