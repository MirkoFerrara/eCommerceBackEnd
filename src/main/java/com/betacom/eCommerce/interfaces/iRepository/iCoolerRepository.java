package com.betacom.eCommerce.interfaces.iRepository;

import com.betacom.eCommerce.classes.pojo.CoolerPojo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface iCoolerRepository extends JpaRepository<CoolerPojo,Integer> {

    @Query("select u from CoolerPojo u inner join ProductPojo p where p.id=:id")
    List<CoolerPojo> findByProduct(@Param("id") Integer id);

}
