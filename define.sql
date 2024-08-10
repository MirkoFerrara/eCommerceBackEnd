
    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        item varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        item varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        item varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        item varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        item varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        item varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        item varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        item varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        item varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        item varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        item varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        item varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        item varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        item varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        item varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table keyboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table laptop (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_processor integer,
        id_product integer,
        id_ram integer,
        idgui integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table monitor (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table motherboard (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table mouse (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table pc (
        cart bit,
        id integer not null auto_increment,
        id_memory integer,
        id_mother_board integer,
        id_product integer,
        id_ram integer,
        idcpu integer,
        idgpu integer,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        id integer not null auto_increment,
        price float(23),
        brand varchar(255),
        colour varchar(255),
        description varchar(255),
        model varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table smartphone (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table tv (
        cart bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table cart 
       add constraint FKmgpj4mxjdornkf5glivj8hnxa 
       foreign key (id_product) 
       references product (id);

    alter table cart 
       add constraint FKd7fhinotgwm2xa9gq7rx9hl41 
       foreign key (id_user) 
       references user (id);

    alter table cpu 
       add constraint FK51wa6n8jtfatg0un00t7diwdg 
       foreign key (id_product) 
       references product (id);

    alter table gpu 
       add constraint FKrja20vxs15bov5pw5yqkk6xvq 
       foreign key (id_product) 
       references product (id);

    alter table keyboard 
       add constraint FKlai9a5840rggqepv0txk26a0p 
       foreign key (id_product) 
       references product (id);

    alter table laptop 
       add constraint FKp2akvaemlavv3j994b31c3prn 
       foreign key (id_product) 
       references product (id);

    alter table memory 
       add constraint FKkxkodkh8tv0i1lr19jdwnyokh 
       foreign key (id_product) 
       references product (id);

    alter table monitor 
       add constraint FKdi3fcqt8nng47kaodahuhourk 
       foreign key (id_product) 
       references product (id);

    alter table motherboard 
       add constraint FK6qnjrl0nxpsf10xuootbry09s 
       foreign key (id_product) 
       references product (id);

    alter table mouse 
       add constraint FKoyv5xdm72bkum29dxg3vj1eg9 
       foreign key (id_product) 
       references product (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    alter table smartphone 
       add constraint FK7y807gxeshl0nbe4eb57jjlra 
       foreign key (id_product) 
       references product (id);

    alter table tv 
       add constraint FKhyj8dv2iq39cqxfny2w6rc4gh 
       foreign key (id_product) 
       references product (id);
