package com.betacom.eCommerce.createTest;

import com.betacom.eCommerce.classes.service.LaptopService;
import com.betacom.eCommerce.classes.service.UserService;
import org.junit.platform.suite.api.SelectClasses;
import org.junit.platform.suite.api.Suite;

@Suite
@SelectClasses({ ProductServiceTest.class,
        CoolerServiceTest.class,
        CpuServiceTest.class,
        GpuServiceTest.class,
        KeyboardServiceTest.class,
        MemoryServiceTest.class,
        MonitorServiceTest.class,
        MouseServiceTest.class,
        PsuServiceTest.class,
        RamServiceTest.class,
        MotherboardServiceTest.class,
        LaptopServiceTest.class,
        PcServiceTest.class,
        CartServiceTest.class,
        UserServiceTest.class
        })
public class TestSuite {}
