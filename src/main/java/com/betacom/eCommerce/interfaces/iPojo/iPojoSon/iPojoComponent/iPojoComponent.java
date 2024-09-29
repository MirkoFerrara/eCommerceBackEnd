package com.betacom.eCommerce.interfaces.iPojo.iPojoSon.iPojoComponent;

import com.betacom.eCommerce.interfaces.iPojo.iPojoSon.iPojoItem;

public interface iPojoComponent extends iPojoItem {
    Boolean getLaptopMounted();
    void setLaptopMounted(Boolean laptopMounted);
    void setContained(Boolean contained);
    Boolean getContained();
}
