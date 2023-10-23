create table linhas( -- tabela ligação linhas e horários
    idlinhas int not null primary key auto_increment,
    linhas varchar(200),
    idhorarios int not null
);


create table horarios(
idhorarios int not null primary key auto_increment,
horarios varchar(2000),
semana varchar(200) not null

);


create table usuario(
    idusuario bigint not null primary key auto_increment,
    nomeusuario varchar(100) not null,
    telefone varchar(20),
    email varchar(100) not null,
    cidade varchar(100),
    senha varchar(100) not null,
    img varchar(255) not null
);


create table rotas(
    idrotas int not null primary key auto_increment,
    rotas double,
    idusuario bigint not null,
    idlinhas int not null
);

create table transportadora(
    idtrans int not null primary key auto_increment,
    transportadora varchar(100),
    idlinhas int not null
);


create table localizacao (
    idloc int not null primary key auto_increment,
    localizacao double,
    idtrans int not null
);

create table pontos(
    idpontos int not null primary key auto_increment,
    lat decimal(17,15) not null,
    lng decimal(16,14) not null,
    idlinhas int
);

--  Foreign key das tabelas
Alter table linhas add constraint FK_linhas_horarios Foreign Key(idhorarios)references horarios(idhorarios);
Alter table pontos add constraint FK_pontos_linhas foreign key (idlinhas) references linhas(idlinhas);
Alter table localizacao add constraint FK_localizacao_transportadora foreign key (idtrans) references transportadora(idtrans);
Alter table rotas add constraint FK_rotas_usuario foreign key (idusuario) references usuario(idusuario);
Alter table rotas add constraint FK_rotas_linhas foreign key (idlinhas) references linhas(idlinhas);
Alter table transportadora add constraint FK_transportadora_linhas foreign key (idlinhas) references linhas(idlinhas);








































