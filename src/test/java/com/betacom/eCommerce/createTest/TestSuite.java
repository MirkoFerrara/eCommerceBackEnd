package com.betacom.eCommerce.createTest;

import org.junit.platform.suite.api.SelectClasses;
import org.junit.platform.suite.api.Suite;


@Suite
@SelectClasses({ProductServiceTest.class,
                CoolerServiceTest.class,
                CpuServiceTest.class,
                GpuServiceTest.class,
                KeyboardServiceTest.class,
                RamServiceTest.class,
                PsuServiceTest.class,
                MouseServiceTest.class,
                MotherboardServiceTest.class,
                MonitorServiceTest.class,
                MemoryServiceTest.class,
                PcServiceTest.class,
                LaptopServiceTest.class,
                UserServiceTest.class,
                CartServiceTest.class
        })
public class TestSuite {}
