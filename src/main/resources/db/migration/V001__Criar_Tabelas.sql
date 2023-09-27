create table linhas( -- tabela ligação linhas e horários
    idlinhas int not null primary key auto_increment,
    linhas varchar(200)
);


create table horarios(
idhorarios int not null primary key auto_increment,
horarios varchar(2000),
idlinhas int not null,
semana varchar(200)
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

-- insert into tabela horários
insert into horarios(horarios, idlinhas, semana) values('08:00 - 16:40', 1, 'Segunda á Sábado - Terminal Urbano(centro)');
insert into horarios(horarios, idlinhas, semana) values('08:15 - 17:00', 1, 'Segunda á Sábado - São Judas Tadeu');
insert into horarios(horarios, idlinhas, semana) values('06:40 - 12:00 - 17:00', 2, 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, idlinhas, semana) values('07:25 - 12:25 - 17:55', 2, 'Segunda á Sábado - Alfredo Guedes');
insert into horarios(horarios, idlinhas, semana) values('08:10 - 17:40', 2, 'Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios, idlinhas, semana) values('08:30 - 18:10', 2, 'Domingo e Feriado - Alfredo Guedes');
insert into horarios(horarios, idlinhas, semana) values('06:00 - 08:00 - 10:00 - 12:00 - 14:00 - 16:00 - 18:10', 3, 'Segunda á Sábado - ETEC');
insert into horarios(horarios, idlinhas, semana) values('06:35 - 07:20 - 08:35 - 09:20 - 10:35 - 11:20 - 12:35 - 13:20 - 14:35 - 15:20 - 16:35 - 17:40 - 18:50 - 19:20', 3, 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, idlinhas, semana) values('06:00 - 08:00 - 10:00 - 12:00 - 14:00 - 16:00 - 18:10', 3, 'Segunda á Sábado - ETEC');
insert into horarios(horarios, idlinhas, semana) values('07:05 - 09:10 - 11:10 - 13:10 - 15:10 - 17:30 - 19:10', 3, 'Segunda á Sábado - Rodoviária');
insert into horarios(horarios, idlinhas, semana) values('05:00 - 06:00 - 17:00 - 08:00 - 09:00 - 10:00 - 11:00 - 12:00 - 13:00 - 14:00 - 15:00 - 16:00 - 17:00 - 18:00 - 19:00 - 20:00 - 21:00 - 22:00 - 23:00', 4, 'Segunda á Sábado - Monte Azul');
insert into horarios(horarios, idlinhas, semana) values('05:16 - 05:40 - 06:16 - 06:40 - 07:20 - 07:40 - 08:20 - 08:40 - 09:20 - 09:40 - 10:20 - 10:40 - 11:20 - 11:40 - 12:20 - 12:40 - 13:20 - 13:40 - 14:20 - 14:40 - 15:20 - 15:40 - 16:20 - 16:40 - 17:20 - 17:40 - 18:20 - 18:40 - 19:20 - 19:40 - 20:20 - 20:40 - 21:20 - 21:40 - 22:20 - 22:40 - 23:20 - 23:40', 4, 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, idlinhas, semana) values('05:25 - 06:30 - 07:30 - 08:30 - 09:30 - 10:30 - 11:30 - 12:30 - 13:30 - 14:30 - 15:30 - 16:30 - 17:30 - 18:30 - 19:30 - 20:30 - 21:30 - 22:30 - 23:30 - 23:50', 4, 'Segunda á Sábado - Jílio Ferrari');
insert into horarios(horarios, idlinhas, semana) values('06:00 - 07:00 - 08:00 - 09:00 - 10:00 - 11:00 - 12:00 - 13:00 - 14:00 - 15:00 - 16:00 - 17:00 - 18:00 - 19:00 - 20:00 - 21:00 - 22:00', 4, 'Domingo e Feriado - Monte Azul');
insert into horarios(horarios, idlinhas, semana) values('06:16 - 06:40 - 07:20 - 07:40 - 08:20 - 08:40 - 09:20 - 09:40 - 10:20 - 10:40 - 11:20 - 11:40 - 12:20 - 12:40 - 13:20 - 13:40 - 14:20 - 14:40 - 15:20 - 15:40 - 16:20 - 16:40 - 17:20 - 17:40 - 18:20 - 18:40 - 19:20 - 19:40 - 20:20 - 20:40 - 21:20 - 21:40 - 22:20', 4, 'Domindo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios, idlinhas, semana) values('06:30 - 07:30 - 08:30 - 09:30 - 10:30 - 11:30 - 12:30 - 13:30 - 14:30 - 15:30 - 16:30 - 17:30 - 18:30 - 19:30 - 20:30 - 21:30 - 14:20 - 22:30', 4, 'Domindo e Feriado - Júlio Ferrari');
insert into horarios(horarios, idlinhas, semana) values('05:25 - 06:25 - 07:30 - 08:30 - 09:30 - 10:30 - 11:30 - 12:30 - 13:30 - 14:30 - 15:30 - 16:30 - 17:30 - 18:30 - 19:30', 5, 'Segunda á Sábado - ETEC');
insert into horarios(horarios, idlinhas, semana) values('05:50 - 06:10 - 06:50 - 07:10 - 07:50 - 08:10 - 08:50 - 09:10 - 09:50 - 10:10 - 10:50 - 11:10 - 11:50 - 12:10 - 12:50 - 13:10 - 13:50 - 14:10 - 14:50 - 15:10 - 15:50 - 16:10 - 16:50 - 17:10 - 17:50 - 18:10 - 18:50 - 19:10', 5, 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, idlinhas, semana) values('05:55 - 06:55 - 07:55 - 08:55 - 09:55 - 10:55 - 11:55 - 12:55 - 13:55 - 14:55 - 15:55 - 16:55 - 17:55 - 18:55', 5, 'Segunda á Sábado - Cacap');
insert into horarios(horarios, idlinhas, semana) values('05:00 - 06:00 - 07:00 - 08:00 - 09:00 - 10:00 - 11:00 - 12:00 - 13:00 - 14:00 - 15:00 - 16:00 - 17:00 - 18:00 - 19:00 - 20:00 - 21:00 - 22:00', 6, 'Segunda á Sábado - ETEC');
insert into horarios(horarios, idlinhas, semana) values('05:20 - 05:40 - 06:16 - 06:40 - 07:20 - 07:40 - 08:20 - 08:40 - 09:20 - 09:40 - 10:20 - 10:40 - 11:20 - 11:40 - 12:20 - 12:40 - 13:30 - 13:40 - 14:20 - 14:40 - 15:20 - 15:40 - 16:20 - 16:40 - 17:20 - 17:40 - 18:20 - 18:40 - 19:20 - 19:40 - 20:20 - 20:40 - 21:20 - 21:40 - 22:20', 6, 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, idlinhas, semana) values('05:25 - 06:25 - 07:25 - 08:25 - 09:25 - 10:25 - 11:25 - 12:25 - 13:25 - 14:25 - 15:25 - 16:25 - 17:25 - 18:25 - 19:25 - 20:25 - 21:25 - 22:25', 6, 'Segunda á Sábado - Cecap');
insert into horarios(horarios, idlinhas, semana) values('06:00 - 07:00 - 08:00 - 09:00 - 10:00 - 11:00 - 12:00 - 13:00 - 14:00 - 15:00 - 16:00 - 17:00 - 18:00 - 19:00 - 20:00 - 21:00 - 22:00', 6, 'Domingo e Feriado - ETEC');
insert into horarios(horarios, idlinhas, semana) values('06:20 - 06:40 - 07:20 - 07:40 - 08:20 - 08:40 - 09:20 - 09:40 - 10:20 - 10:40 - 11:20 - 11:40 - 12:20 - 12:40 - 13:30 - 13:40 - 14:20 - 14:40 - 15:20 - 15:40 - 16:20 - 16:40 - 17:20 - 17:40 - 18:20 - 18:40 - 19:20 - 19:40 - 20:20 - 20:40 - 21:20 - 21:40 - 22:20', 6, 'Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios, idlinhas, semana) values('06:25 - 07:25 - 08:25 - 09:25 - 10:25 - 11:25 - 12:25 - 13:25 - 14:25 - 15:25 - 16:25 - 17:25 - 18:25 - 19:25 - 20:25 - 21:25 - 22:25', 6, 'Domingo e Feriado - Júlio Ferrari');
insert into horarios(horarios, idlinhas, semana) values('05:00 - 06:00 - 07:00 - 08:00 - 09:00 - 10:00 - 11:00 - 12:00 - 13:00 - 14:00 - 15:00 - 16:00 - 17:00 - 18:00 - 19:00 - 20:00 - 21:00 - 22:00 - 23:00', 7, 'Segunda á Sábado - Fórum');
insert into horarios(horarios, idlinhas, semana) values('05:05 - 05:45 - 06:05 - 06:45 - 07:15 - 07:45 - 08:05 - 08:45 - 09:05 - 09:45 - 10:05 - 10:45 - 11:05 - 11:45 - 12:05 - 12:45 - 13:05 - 13:45 - 14:05 - 14:45 - 15:05 - 15:45 - 16:15 - 16:45 - 17:05 - 17:45 - 18:05 - 18:45 - 19:05 - 19:45 - 20:05 - 20:45 - 21:05 - 21:45 - 22:05 - 22:45 - 23:05', 7, 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, idlinhas, semana) values('05:25 - 06:25 - 07:30 - 08:30 - 09:30 - 10:30 - 11:30 - 12:30 - 13:30 - 14:30 - 15:30 - 16:30 - 17:30 - 18:30 - 19:30 - 20:30 - 21:30 - 22:30 - 23:30', 7, 'Segunda á Sábado - Senai');
insert into horarios(horarios, idlinhas, semana) values('06:00 - 07:00 - 08:00 - 09:00 - 10:00 - 11:00 - 12:00 - 13:00 - 14:00 - 15:00 - 16:00 - 17:00 - 18:00 - 19:00 - 20:00 - 21:00 - 22:00 - 23:30', 8, 'Segunda á Sábado - Rodoviária');
insert into horarios(horarios, idlinhas, semana) values('05:40 - 06:15 - 06:40 - 07:15 - 07:40 - 08:15 - 08:40 - 09:15 - 09:40 - 10:15 - 10:40 - 11:15 - 11:40 - 12:15 - 12:40 - 13:15 - 13:40 - 14:15 - 14:40 - 15:15 - 15:40 - 16:15 - 16:40 - 17:15 - 17:40 - 18:15 - 18:40 - 19:15 - 19:40 - 20:15 - 20:40 - 21:15 - 21:40 - 22:15 - 22:40 - 23:10', 8, 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, idlinhas, semana) values('05:20 (ETEC) - 06:30 - 07:30 - 08:30 - 09:30 - 10:30 - 11:30 - 12:30 - 13:30 - 14:30 - 15:30 - 16:30 - 17:30 - 18:30 - 19:30 - 20:30 - 21:30 - 22:30 - 23:00', 8, 'Segunda á Sábado - Monte Azul');
insert into horarios(horarios, idlinhas, semana) values('06:00 - 07:00 - 08:00 - 09:00 - 10:00 - 11:00 - 12:00 - 13:00 - 14:00 - 15:00 - 16:00 - 17:00 - 18:00 - 19:00 - 20:00 - 21:00', 8, 'Domingo e Feriado - Senai');
insert into horarios(horarios, idlinhas, semana) values('06:15 - 06:40 - 07:15 - 07:40 - 08:15 - 08:40 - 09:15 - 09:40 - 10:15 - 10:40 - 11:15 - 11:40 - 12:15 - 12:40 - 13:15 - 13:40 - 14:15 - 14:40 - 15:15 - 15:40 - 16:15 - 16:40 - 17:15 - 17:40 - 18:15 - 18:40 - 19:15 - 19:40 - 20:15 - 20:40 - 21:15 - 21:40', 8, 'Domingo e Feriado- Terminal Urbano (centro)');
insert into horarios(horarios, idlinhas, semana) values('06:30 - 07:30 - 08:30 - 09:30 - 10:30 - 11:30 - 12:30 - 13:30 - 14:30 - 15:30 - 16:30 - 17:30 - 18:30 - 19:30 - 20:30 - 21:30', 8, 'Domingo e Feriado - Monte Azul');
insert into horarios(horarios, idlinhas, semana) values('11:30 - 17:40', 9, 'Segunda á Sexta - Distrito Industrial');
insert into horarios(horarios, idlinhas, semana) values('11:40', 9, 'Segunda á Sexta - Senai');
insert into horarios(horarios, idlinhas, semana) values('06:25 - 07:25 - 08:25 - 09:25 - 10:25 - 11:33 - 12:30 - 13:30 - 14:30 - 15:30 - 16:33 - 17:33 - 18:35 - 19:00', 10, 'Segunda á Sábado - ETEC');
insert into horarios(horarios, idlinhas, semana) values('06:10 - 06:50 - 07:10 - 07:50 - 08:10 - 08:50 - 09:10 - 09:50 - 10:10 - 10:50 - 11:10 - 11:50 - 12:15 - 12:50 - 13:15 - 13:50 - 14:15 - 14:50 - 15:15 - 15:50 - 16:15 - 16:50 - 17:15 - 17:50 - 18:15 - 18:53', 10, 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, idlinhas, semana) values('06:00 - 06:55 - 07:55 - 08:55 - 09:55 - 10:55 - 11:55 - 12:55 - 13:00 - 14:00 - 15:00 - 16:00 - 17:00 - 18:00 - 19:00', 10, 'Segunda á Sábado - Júlio Ferrari');

