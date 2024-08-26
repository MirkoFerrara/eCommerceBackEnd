package com.betacom.eCommerce.interfaces.iRepository;

import com.betacom.eCommerce.classes.pojo.MemoryPojo;
import com.betacom.eCommerce.classes.pojo.PsuPojo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface iMemoryRepository extends JpaRepository<MemoryPojo,Integer> {
    @Query("select u from MemoryPojo u inner join ProductPojo p where p.id=:id")
    List<MemoryPojo> findByProduct(@Param("id") Integer id);
}
