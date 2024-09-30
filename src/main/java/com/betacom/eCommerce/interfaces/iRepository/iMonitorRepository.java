package com.betacom.eCommerce.interfaces.iRepository;

import com.betacom.eCommerce.classes.pojo.MonitorPojo;
import com.betacom.eCommerce.classes.pojo.MousePojo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface iMonitorRepository extends JpaRepository<MonitorPojo,Integer>,iRepository {
}
