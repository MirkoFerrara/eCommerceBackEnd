package com.betacom.eCommerce.interfaces.iRepository;

import com.betacom.eCommerce.classes.pojo.CoolerPojo;
import com.betacom.eCommerce.classes.pojo.GpuPojo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface iGpuRepository extends JpaRepository<GpuPojo,Integer> {
    @Query("select u from GpuPojo u inner join ProductPojo p where p.id=:id")
    List<GpuPojo> findByProduct(@Param("id") Integer id);
}
