package com.betacom.eCommerce.createTest;

import org.junit.platform.suite.api.SelectClasses;
import org.junit.platform.suite.api.Suite;


@Suite
@SelectClasses({ ProductServiceTest.class,
        GpuServiceTest.class,
        PsuServiceTest.class

        })
public class TestSuite {}
