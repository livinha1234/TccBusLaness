create table linhas( -- tabela ligação linhas e horários
    idlinhas int not null primary key auto_increment,
    linhas varchar(100)
);


create table horarios(
idhorarios int not null primary key auto_increment,
horarios TIME,
idlinhas int not null
);




create table usuario(
    idusuario bigint not null primary key auto_increment,
    nomeusuario varchar(100) not null,
    telefone varchar(20),
    email varchar(100) not null,
    cidade varchar(100),
    senha varchar(100) not null
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
    pontos double,
    idlinhas int not null
);

--  Foreign key das tabelas
Alter table horarios add constraint FK_horarios_linhas Foreign Key(idlinhas)references linhas(idlinhas);
Alter table pontos add constraint FK_pontos_linhas foreign key (idlinhas) references linhas(idlinhas);
Alter table localizacao add constraint FK_localizacao_transportadora foreign key (idtrans) references transportadora(idtrans);
Alter table rotas add constraint FK_rotas_usuario foreign key (idusuario) references usuario(idusuario);
Alter table rotas add constraint FK_rotas_linhas foreign key (idlinhas) references linhas(idlinhas);
Alter table transportadora add constraint FK_transportadora_linhas foreign key (idlinhas) references linhas(idlinhas);


-- insert into tabela linhas
insert into linhas(linhas) values ('Linha 1');
insert into linhas(linhas) values ('Linha 2');
insert into linhas(linhas) values ('Linha 5');
insert into linhas(linhas) values ('Linha 6');
insert into linhas(linhas) values ('Linha 7');
insert into linhas(linhas) values ('Linha 8');
insert into linhas(linhas) values ('Linha 10');
insert into linhas(linhas) values ('Linha 11');
insert into linhas(linhas) values ('Linha 15');
insert into linhas(linhas) values ('Linha 19');

-- insert into tabela transportadora
insert into transportadora(transportadora, idlinhas) values ('GRECCO',1);