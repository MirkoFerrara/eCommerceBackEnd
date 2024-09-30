package com.betacom.eCommerce.interfaces.iRepository;

import com.betacom.eCommerce.classes.pojo.GpuPojo;
import com.betacom.eCommerce.classes.pojo.RamPojo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface iRamRepository extends JpaRepository<RamPojo,Integer>,iRepository  {

}
