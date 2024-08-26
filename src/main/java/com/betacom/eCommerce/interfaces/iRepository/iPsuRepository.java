package com.betacom.eCommerce.interfaces.iRepository;

import com.betacom.eCommerce.classes.pojo.PsuPojo;
import com.betacom.eCommerce.classes.pojo.RamPojo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface iPsuRepository extends JpaRepository<PsuPojo, Integer> {
    @Query("select u from PsuPojo u inner join ProductPojo p where p.id=:id")
    List<PsuPojo> findByProduct(@Param("id") Integer id);
}
