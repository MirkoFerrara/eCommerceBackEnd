package com.betacom.eCommerce.interfaces.iRepository;

import com.betacom.eCommerce.classes.pojo.CoolerPojo;
import com.betacom.eCommerce.classes.pojo.CpuPojo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface iCpuRepository extends JpaRepository<CpuPojo,Integer> {
    @Query("select u from CpuPojo c inner join ProductPojo p where p.id=:id")
    List<CpuPojo> findByProduct(@Param("id") Integer id);
}
