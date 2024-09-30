package com.betacom.eCommerce.interfaces.iRepository;

import com.betacom.eCommerce.classes.pojo.KeyboardPojo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface iKeyboardRepository extends JpaRepository<KeyboardPojo,Integer>,iRepository  {
}
