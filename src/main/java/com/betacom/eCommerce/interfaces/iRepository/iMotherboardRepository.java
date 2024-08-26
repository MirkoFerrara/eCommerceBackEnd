package com.betacom.eCommerce.interfaces.iRepository;

import com.betacom.eCommerce.classes.pojo.CoolerPojo;
import com.betacom.eCommerce.classes.pojo.MotherboardPojo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface iMotherboardRepository extends JpaRepository<MotherboardPojo,Integer> {
    @Query("select u from MotherboardPojo m inner join ProductPojo p where p.id=:id")
    List<MotherboardPojo> findByProduct(@Param("id") Integer id);
}
