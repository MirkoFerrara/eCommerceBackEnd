
    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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
        contained bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);

    create table cart (
        id integer not null auto_increment,
        id_product integer,
        id_user integer,
        primary key (id)
    ) engine=InnoDB;

    create table cooler (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        laptop_mounted bit,
        primary key (id)
    ) engine=InnoDB;

    create table cpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        laptop_mounted bit,
        primary key (id)
    ) engine=InnoDB;

    create table gpu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        laptop_mounted bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
        primary key (id)
    ) engine=InnoDB;

    create table memory (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        laptop_mounted bit,
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
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        laptop_mounted bit,
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
        id_cooler integer,
        id_cpu integer,
        id_gpu integer,
        id_memory integer,
        id_motherboard integer,
        id_product integer,
        id_psu integer,
        id_ram integer,
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

    create table psu (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        laptop_mounted bit,
        primary key (id)
    ) engine=InnoDB;

    create table ram (
        cart bit,
        contained bit,
        id integer not null auto_increment,
        id_product integer,
        laptop_mounted bit,
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id integer not null auto_increment,
        role bit,
        address varchar(255),
        password varchar(255),
        username varchar(255),
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

    alter table cooler 
       add constraint FK49ejh17s8qu09orvf3j428gdg 
       foreign key (id_product) 
       references product (id);

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
       add constraint FKdxayt7qgayn2axskffdvf0mmq 
       foreign key (id_cooler) 
       references cooler (id);

    alter table laptop 
       add constraint FK21a1wm4m5n0e173h5a0sowx09 
       foreign key (id_cpu) 
       references cpu (id);

    alter table laptop 
       add constraint FKsr3gbr2dyies9o0qf4yy8gs3p 
       foreign key (id_gpu) 
       references gpu (id);

    alter table laptop 
       add constraint FKf1m8b3gxcyt7a8fdxns3it2h7 
       foreign key (id_memory) 
       references memory (id);

    alter table laptop 
       add constraint FKkc8whhhkhoax5yvtaw9e2xtvt 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table laptop 
       add constraint FKa801oajymra1r6mixbho1kp5f 
       foreign key (id_psu) 
       references psu (id);

    alter table laptop 
       add constraint FKmlw3d2q6h78nqftikmkrv4gkw 
       foreign key (id_ram) 
       references ram (id);

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
       add constraint FKf9i73rc7xee8gkorjqww8b760 
       foreign key (id_cooler) 
       references cooler (id);

    alter table pc 
       add constraint FKqv76gwb8fjp08q3fulsvql7y7 
       foreign key (id_cpu) 
       references cpu (id);

    alter table pc 
       add constraint FKpp5sk86l9wkr6ftjeb9rbwq0o 
       foreign key (id_gpu) 
       references gpu (id);

    alter table pc 
       add constraint FK5nkr4m8i41nn5b1gxldp62jg0 
       foreign key (id_memory) 
       references memory (id);

    alter table pc 
       add constraint FKf3ql3978xuk1v2mir12kndel9 
       foreign key (id_motherboard) 
       references motherboard (id);

    alter table pc 
       add constraint FKn8jn93ex8uwo4om6agmnjg7k6 
       foreign key (id_psu) 
       references psu (id);

    alter table pc 
       add constraint FK1j2g8cr7pbb5wcdaq9clxp8uv 
       foreign key (id_ram) 
       references ram (id);

    alter table pc 
       add constraint FKcy86cutw0wkrk24k8q6jsb2oq 
       foreign key (id_product) 
       references product (id);

    alter table psu 
       add constraint FKmlv848190ac7j03649mxv451w 
       foreign key (id_product) 
       references product (id);

    alter table ram 
       add constraint FKaldquekielufl0b9mvt61jvny 
       foreign key (id_product) 
       references product (id);
