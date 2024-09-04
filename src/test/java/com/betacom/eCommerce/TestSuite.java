package com.betacom.eCommerce;

import com.betacom.eCommerce.createTest.*;
import com.betacom.eCommerce.createTest.ProductServiceTest;
import com.betacom.eCommerce.createTest.PsuServiceTest;
import com.betacom.eCommerce.removeTest.*;
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
                CartServiceTest.class,
                PcServiceRemoveTest.class,
                LaptopServiceRemoveTest.class,
                CoolerServiceRemoveTest.class,
                CpuServireRemoveTest.class,
                GpuServireRemoveTest.class,
                KeyboardServireRemoveTest.class,
                MemoryServireRemoveTest.class,
                MonitorServireRemoveTest.class,
                MotherboardServiceRemoveTest.class,
                MouseServiceRemoveTest.class,
                PsuRemoveServiceTest.class,
                RamServiceRemoveTest.class,
                LaptopServiceRemoveTest.class,
                PcServiceRemoveTest.class,
                CartServiceRemoveTest.class,
                ProductRemoveServiceTest.class,
                UserServiceRemoveTest.class
})
public class TestSuite {}
