
    alter table cart 
       drop 
       foreign key FKmgpj4mxjdornkf5glivj8hnxa;

    alter table cart 
       drop 
       foreign key FKd7fhinotgwm2xa9gq7rx9hl41;

    alter table cpu 
       drop 
       foreign key FK51wa6n8jtfatg0un00t7diwdg;

    alter table gpu 
       drop 
       foreign key FKrja20vxs15bov5pw5yqkk6xvq;

    alter table keyboard 
       drop 
       foreign key FKlai9a5840rggqepv0txk26a0p;

    alter table laptop 
       drop 
       foreign key FKp2akvaemlavv3j994b31c3prn;

    alter table memory 
       drop 
       foreign key FKkxkodkh8tv0i1lr19jdwnyokh;

    alter table monitor 
       drop 
       foreign key FKdi3fcqt8nng47kaodahuhourk;

    alter table motherboard 
       drop 
       foreign key FK6qnjrl0nxpsf10xuootbry09s;

    alter table mouse 
       drop 
       foreign key FKoyv5xdm72bkum29dxg3vj1eg9;

    alter table pc 
       drop 
       foreign key FKcy86cutw0wkrk24k8q6jsb2oq;

    alter table ram 
       drop 
       foreign key FKaldquekielufl0b9mvt61jvny;

    alter table smartphone 
       drop 
       foreign key FK7y807gxeshl0nbe4eb57jjlra;

    alter table tv 
       drop 
       foreign key FKhyj8dv2iq39cqxfny2w6rc4gh;

    drop table if exists cart;

    drop table if exists cpu;

    drop table if exists gpu;

    drop table if exists keyboard;

    drop table if exists laptop;

    drop table if exists memory;

    drop table if exists monitor;

    drop table if exists motherboard;

    drop table if exists mouse;

    drop table if exists pc;

    drop table if exists product;

    drop table if exists ram;

    drop table if exists smartphone;

    drop table if exists tv;

    drop table if exists user;
