package com.betacom.eCommerce.interfaces.iRepository;

import com.betacom.eCommerce.classes.pojo.PsuPojo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface iPsuRepository extends JpaRepository<PsuPojo, Integer> {
}
