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
    pontos double,
    idlinhas int not null
);

--  Foreign key das tabelas
Alter table linhas add constraint FK_linhas_horarios Foreign Key(idhorarios)references horarios(idhorarios);
Alter table pontos add constraint FK_pontos_linhas foreign key (idlinhas) references linhas(idlinhas);
Alter table localizacao add constraint FK_localizacao_transportadora foreign key (idtrans) references transportadora(idtrans);
Alter table rotas add constraint FK_rotas_usuario foreign key (idusuario) references usuario(idusuario);
Alter table rotas add constraint FK_rotas_linhas foreign key (idlinhas) references linhas(idlinhas);
Alter table transportadora add constraint FK_transportadora_linhas foreign key (idlinhas) references linhas(idlinhas);



-- insert into tabela horários
-- fazer um por um
insert into horarios(horarios, semana) values('08:00', 'Segunda á Sábado - Terminal Urbano(centro)');
insert into horarios(horarios, semana) values('16:40','Segunda á Sábado - Terminal Urbano(centro)');
insert into horarios(horarios, semana) values('08:15','Segunda á Sábado - São Judas Tadeu');
insert into horarios(horarios, semana) values('17:00','Segunda á Sábado - São Judas Tadeu');
insert into horarios(horarios, semana) values('06:40','Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('12:00', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('17:00','Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('07:25','Segunda á Sábado - Alfredo Guedes');
insert into horarios(horarios, semana) values('12:25','Segunda á Sábado - Alfredo Guedes');
insert into horarios(horarios, semana) values('17:55', 'Segunda á Sábado - Alfredo Guedes');
insert into horarios(horarios, semana) values('08:10', 'Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('17:40', 'Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('08:30', 'Domingo e Feriado - Alfredo Guedes');
insert into horarios(horarios, semana) values('18:10', 'Domingo e Feriado - Alfredo Guedes');
insert into horarios(horarios,semana) values('06:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('08:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('10:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('12:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('14:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('16:00','Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('18:10','Segunda á Sábado - ETEC');
insert into horarios(horarios, semana) values('06:35', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('07:20','Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('08:35', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('09:20','Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('10:35', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('11:20','Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('12:35', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('13:20', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('14:35', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('15:20','Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('16:35','Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('17:40','Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('18:50', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('19:20', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('06:00', 'Segunda á Sábado - Júlio Ferrari');
insert into horarios(horarios, semana) values('08:00', 'Segunda á Sábado - Júlio Ferrari');
insert into horarios(horarios, semana) values('10:00', 'Segunda á Sábado - Júlio Ferrari');
insert into horarios(horarios, semana) values('12:00','Segunda á Sábado - Júlio Ferrari');
insert into horarios(horarios, semana) values('14:00', 'Segunda á Sábado - Júlio Ferrari');
insert into horarios(horarios, semana) values('16:00', 'Segunda á Sábado - Júlio Ferrari');
insert into horarios(horarios, semana) values('18:10', 'Segunda á Sábado -Júlio Ferrari');
insert into horarios(horarios,semana) values('05:00', 'Segunda á Sábado - Monte Azul');
insert into horarios(horarios,semana) values('06:00', 'Segunda á Sábado - Monte Azul');
insert into horarios(horarios,semana) values('17:00', 'Segunda á Sábado - Monte Azul');
insert into horarios(horarios,semana) values('08:00', 'Segunda á Sábado - Monte Azul');
insert into horarios(horarios,semana) values('09:00', 'Segunda á Sábado - Monte Azul');
insert into horarios(horarios,semana) values('10:00', 'Segunda á Sábado - Monte Azul');
insert into horarios(horarios,semana) values('11:00', 'Segunda á Sábado - Monte Azul');
insert into horarios(horarios,semana) values('12:00', 'Segunda á Sábado - Monte Azul');
insert into horarios(horarios,semana) values('13:00', 'Segunda á Sábado - Monte Azul');
insert into horarios(horarios,semana) values('05:16','Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('05:40','Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('06:16','Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('06:40',  'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('07:20', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('07:40',  'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('08:20', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('08:20', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('08:40', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('09:20', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('10:20', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('10:40','Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('11:20','Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('11:40', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('12:20','Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('12:40', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('13:20', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('13:40', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('14:20', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('14:40', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('15:20', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('15:40', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('16:20', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('16:40', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('17:20', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('17:40',  'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('18:20', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('18:40',  'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('19:20', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('19:40', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('20:20',  'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('20:40', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('21:20', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('21:40',  'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('22:20',  'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('22:40',  'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('23:20',  'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('23:40',  'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('05:25',  'Segunda á Sábado - Júlio Ferrari');
insert into horarios(horarios,semana) values('06:30',  'Segunda á Sábado - Jílio Ferrari');
insert into horarios(horarios,semana) values('07:30',  'Segunda á Sábado - Jílio Ferrari');
insert into horarios(horarios,semana) values('08:30',  'Segunda á Sábado - Jílio Ferrari');
insert into horarios(horarios,semana) values('09:30',  'Segunda á Sábado - Jílio Ferrari');
insert into horarios(horarios,semana) values('10:30',  'Segunda á Sábado - Jílio Ferrari');
insert into horarios(horarios,semana) values('11:30',  'Segunda á Sábado - Jílio Ferrari');
insert into horarios(horarios,semana) values('12:30',  'Segunda á Sábado - Jílio Ferrari');
insert into horarios(horarios,semana) values('13:30',  'Segunda á Sábado - Jílio Ferrari');
insert into horarios(horarios,semana) values('06:00',  'Domingo e Feriado - Monte Azul');
insert into horarios(horarios,semana) values('07:00',  'Domingo e Feriado - Monte Azul');
insert into horarios(horarios,semana) values('08:00',  'Domingo e Feriado - Monte Azul');
insert into horarios(horarios,semana) values('09:00',  'Domingo e Feriado - Monte Azul');
insert into horarios(horarios,semana) values('10:00',  'Domingo e Feriado - Monte Azul');
insert into horarios(horarios,semana) values('11:00',  'Domingo e Feriado - Monte Azul');
insert into horarios(horarios,semana) values('12:00',  'Domingo e Feriado - Monte Azul');
insert into horarios(horarios,semana) values('13:00',  'Domingo e Feriado - Monte Azul');
insert into horarios(horarios,semana) values('06:16',  'Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('06:40',  'Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('07:20', 'Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('07:40', 'Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('08:20', 'Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('08:40', 'Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('09:20', 'Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('09:40', 'Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('10:20', 'Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('10:40', 'Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('11:20', 'Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('11:40', 'Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('12:20', 'Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('12:40', 'Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('13:20', 'Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('13:40', 'Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('06:30', 'Domingo e Feriado - Júlio Ferrari');
insert into horarios(horarios, semana) values('07:30', 'Domingo e Feriado - Júlio Ferrari');
insert into horarios(horarios, semana) values('08:30', 'Domingo e Feriado - Júlio Ferrari');
insert into horarios(horarios, semana) values('09:30', 'Domingo e Feriado - Júlio Ferrari');
insert into horarios(horarios, semana) values('10:30', 'Domingo e Feriado - Júlio Ferrari');
insert into horarios(horarios, semana) values('11:30', 'Domingo e Feriado - Júlio Ferrari');
insert into horarios(horarios, semana) values('12:30', 'Domingo e Feriado - Júlio Ferrari');
insert into horarios(horarios, semana) values('13:30', 'Domingo e Feriado - Júlio Ferrari');
insert into horarios(horarios,semana) values('05:25', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('06:25', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('07:30', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('08:30', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('09:30', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('10:30', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('11:30', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('12:30', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('13:30', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('14:30', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('15:30', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('16:30', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('17:30', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('18:30', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('19:30', 'Segunda á Sábado - ETEC');
insert into horarios(horarios, semana) values('05:50','Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('06:10', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('06:50', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('07:10', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('07:50', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('08:10', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('08:50', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('09:10', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('09:50', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('10:10', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('10:50', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('11:10', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('11:50', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('12:10', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('12:50', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('05:55', 'Segunda á Sábado - Cacap');
insert into horarios(horarios, semana) values('06:55', 'Segunda á Sábado - Cacap');
insert into horarios(horarios, semana) values('07:55', 'Segunda á Sábado - Cacap');
insert into horarios(horarios, semana) values('08:55', 'Segunda á Sábado - Cacap');
insert into horarios(horarios, semana) values('09:55', 'Segunda á Sábado - Cacap');
insert into horarios(horarios, semana) values('10:55', 'Segunda á Sábado - Cacap');
insert into horarios(horarios, semana) values('11:55', 'Segunda á Sábado - Cacap');
insert into horarios(horarios, semana) values('12:55', 'Segunda á Sábado - Cacap');
insert into horarios(horarios, semana) values('13:55', 'Segunda á Sábado - Cacap');
insert into horarios(horarios, semana) values('14:55', 'Segunda á Sábado - Cacap');
insert into horarios(horarios, semana) values('15:55', 'Segunda á Sábado - Cacap');
insert into horarios(horarios, semana) values('16:55', 'Segunda á Sábado - Cacap');
insert into horarios(horarios, semana) values('17:55', 'Segunda á Sábado - Cacap');
insert into horarios(horarios, semana) values('18:55', 'Segunda á Sábado - Cacap');
insert into horarios(horarios, semana) values('05:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios, semana) values('06:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios, semana) values('07:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios, semana) values('08:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios, semana) values('09:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios, semana) values('10:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios, semana) values('11:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios, semana) values('12:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios, semana) values('13:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios, semana) values('14:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios, semana) values('15:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios, semana) values('16:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios, semana) values('17:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios, semana) values('18:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios, semana) values('19:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios, semana) values('20:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios, semana) values('21:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios, semana) values('22:00', 'Segunda á Sábado - ETEC');
insert into horarios(horarios, semana) values('05:20', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('05:40', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('06:16', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('06:40', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('19:20', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('19:40', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('20:20', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('20:40', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('21:20', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('21:40', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('22:20', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('05:25', 'Segunda á Sábado - Cecap');
insert into horarios(horarios, semana) values('06:25', 'Segunda á Sábado - Cecap');
insert into horarios(horarios, semana) values('07:25', 'Segunda á Sábado - Cecap');
insert into horarios(horarios, semana) values('08:25', 'Segunda á Sábado - Cecap');
insert into horarios(horarios, semana) values('09:25', 'Segunda á Sábado - Cecap');
insert into horarios(horarios, semana) values('10:25', 'Segunda á Sábado - Cecap');
insert into horarios(horarios, semana) values('11:25', 'Segunda á Sábado - Cecap');
insert into horarios(horarios, semana) values('12:25', 'Segunda á Sábado - Cecap');
insert into horarios(horarios, semana) values('13:25', 'Segunda á Sábado - Cecap');
insert into horarios(horarios, semana) values('06:00', 'Domingo e Feriado - ETEC');
insert into horarios(horarios, semana) values('07:00', 'Domingo e Feriado - ETEC');
insert into horarios(horarios, semana) values('08:00', 'Domingo e Feriado - ETEC');
insert into horarios(horarios, semana) values('09:00', 'Domingo e Feriado - ETEC');
insert into horarios(horarios, semana) values('10:00', 'Domingo e Feriado - ETEC');
insert into horarios(horarios, semana) values('11:00', 'Domingo e Feriado - ETEC');
insert into horarios(horarios, semana) values('12:00', 'Domingo e Feriado - ETEC');
insert into horarios(horarios, semana) values('13:00', 'Domingo e Feriado - ETEC');
insert into horarios(horarios, semana) values('14:00', 'Domingo e Feriado - ETEC');
insert into horarios(horarios, semana) values('15:00', 'Domingo e Feriado - ETEC');
insert into horarios(horarios, semana) values('06:20','Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('06:40','Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('07:20','Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('07:40','Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('08:20','Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('08:40','Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('09:20','Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('09:40','Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('10:20','Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('10:40','Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('06:25', 'Domingo e Feriado - Júlio Ferrari');
insert into horarios(horarios, semana) values('07:25', 'Domingo e Feriado - Júlio Ferrari');
insert into horarios(horarios, semana) values('08:25', 'Domingo e Feriado - Júlio Ferrari');
insert into horarios(horarios, semana) values('09:25', 'Domingo e Feriado - Júlio Ferrari');
insert into horarios(horarios, semana) values('10:25', 'Domingo e Feriado - Júlio Ferrari');
insert into horarios(horarios, semana) values('11:25', 'Domingo e Feriado - Júlio Ferrari');
insert into horarios(horarios, semana) values('12:25', 'Domingo e Feriado - Júlio Ferrari');
insert into horarios(horarios, semana) values('13:25', 'Domingo e Feriado - Júlio Ferrari');
insert into horarios(horarios, semana) values('14:25', 'Domingo e Feriado - Júlio Ferrari');
insert into horarios(horarios, semana) values('15:25', 'Domingo e Feriado - Júlio Ferrari');
insert into horarios(horarios, semana) values('16:25', 'Domingo e Feriado - Júlio Ferrari');
insert into horarios(horarios, semana) values('05:00','Segunda á Sábado - Fórum');
insert into horarios(horarios, semana) values('06:00','Segunda á Sábado - Fórum');
insert into horarios(horarios, semana) values('07:00','Segunda á Sábado - Fórum');
insert into horarios(horarios, semana) values('08:00','Segunda á Sábado - Fórum');
insert into horarios(horarios, semana) values('09:00','Segunda á Sábado - Fórum');
insert into horarios(horarios, semana) values('10:00','Segunda á Sábado - Fórum');
insert into horarios(horarios, semana) values('11:00','Segunda á Sábado - Fórum');
insert into horarios(horarios, semana) values('12:00','Segunda á Sábado - Fórum');
insert into horarios(horarios, semana) values('13:00','Segunda á Sábado - Fórum');
insert into horarios(horarios, semana) values('14:00','Segunda á Sábado - Fórum');
insert into horarios(horarios, semana) values('15:00','Segunda á Sábado - Fórum');
insert into horarios(horarios, semana) values('16:00','Segunda á Sábado - Fórum');
insert into horarios(horarios, semana) values('17:00','Segunda á Sábado - Fórum');
insert into horarios(horarios, semana) values('18:00','Segunda á Sábado - Fórum');
insert into horarios(horarios, semana) values('19:00','Segunda á Sábado - Fórum');
insert into horarios(horarios, semana) values('20:00','Segunda á Sábado - Fórum');
insert into horarios(horarios, semana) values('21:00','Segunda á Sábado - Fórum');
insert into horarios(horarios, semana) values('22:00','Segunda á Sábado - Fórum');
insert into horarios(horarios, semana) values('23:00','Segunda á Sábado - Fórum');
insert into horarios(horarios, semana) values('05:05', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('05:45', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('06:05', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('06:45', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('07:15', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('07:45', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('08:05', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('08:45', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('09:05', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('09:45', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('10:05', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('10:45', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('11:05', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('11:45', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('12:05', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('12:45', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('13:05', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('13:45', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('14:05', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('14:45', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('15:05', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('15:45', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('16:15', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('16:45', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('17:05', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('17:45', 'Segunda á Sábado - Terminal Urbano (centro)');
insert into horarios(horarios,semana) values('11:30', 'Segunda á Sexta - Distrito Industrial');
insert into horarios(horarios,semana) values('17:40', 'Segunda á Sexta - Distrito Industrial');
insert into horarios(horarios, semana) values('11:40', 'Segunda á Sexta - Senai');
insert into horarios(horarios,semana) values('06:25', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('07:25', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('08:25', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('09:25', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('10:25', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('11:33', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('12:30', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('13:30', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('14:30', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('15:30', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('16:33', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('17:33', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('18:35', 'Segunda á Sábado - ETEC');
insert into horarios(horarios,semana) values('19:00', 'Segunda á Sábado - ETEC');







-- insert into tabela linhas
insert into linhas(linhas, idhorarios) values ('Linha 1',1 );
insert into linhas(linhas, idhorarios) values ('Linha 1',2);
insert into linhas(linhas, idhorarios) values ('Linha 1',3 );
insert into linhas(linhas, idhorarios) values ('Linha 1',4 );
insert into linhas(linhas, idhorarios) values ('Linha 2',5);
insert into linhas(linhas, idhorarios) values ('Linha 2',6);
insert into linhas(linhas, idhorarios) values ('Linha 2',7);
insert into linhas(linhas, idhorarios) values ('Linha 2',8);
insert into linhas(linhas, idhorarios) values ('Linha 2',9);
insert into linhas(linhas, idhorarios) values ('Linha 2',10);
insert into linhas(linhas, idhorarios) values ('Linha 2',11);
insert into linhas(linhas, idhorarios) values ('Linha 2',12);
insert into linhas(linhas, idhorarios) values ('Linha 2',13);
insert into linhas(linhas, idhorarios) values ('Linha 2',14);
insert into linhas(linhas, idhorarios) values ('Linha 5',15);
insert into linhas(linhas, idhorarios) values ('Linha 5',16);
insert into linhas(linhas, idhorarios) values ('Linha 5',17);
insert into linhas(linhas, idhorarios) values ('Linha 5',18);
insert into linhas(linhas, idhorarios) values ('Linha 5',19);
insert into linhas(linhas, idhorarios) values ('Linha 5',20);
insert into linhas(linhas, idhorarios) values ('Linha 5',21);
insert into linhas(linhas, idhorarios) values ('Linha 5',22);
insert into linhas(linhas, idhorarios) values ('Linha 5',23);
insert into linhas(linhas, idhorarios) values ('Linha 5',24);
insert into linhas(linhas, idhorarios) values ('Linha 5',25);
insert into linhas(linhas, idhorarios) values ('Linha 5',26);
insert into linhas(linhas, idhorarios) values ('Linha 5',27);
insert into linhas(linhas, idhorarios) values ('Linha 5',28);
insert into linhas(linhas, idhorarios) values ('Linha 5',29);
insert into linhas(linhas, idhorarios) values ('Linha 5',30);
insert into linhas(linhas, idhorarios) values ('Linha 5',31);
insert into linhas(linhas, idhorarios) values ('Linha 5',32);
insert into linhas(linhas, idhorarios) values ('Linha 5',33);
insert into linhas(linhas, idhorarios) values ('Linha 5',34);
insert into linhas(linhas, idhorarios) values ('Linha 5',35);
insert into linhas(linhas, idhorarios) values ('Linha 5',36);
insert into linhas(linhas, idhorarios) values ('Linha 5',37);
insert into linhas(linhas, idhorarios) values ('Linha 5',38);
insert into linhas(linhas, idhorarios) values ('Linha 5',39);
insert into linhas(linhas, idhorarios) values ('Linha 5',40);
insert into linhas(linhas, idhorarios) values ('Linha 5',41);
insert into linhas(linhas, idhorarios) values ('Linha 5',42);
insert into linhas(linhas, idhorarios) values ('Linha 6',43);
insert into linhas(linhas, idhorarios) values ('Linha 6',44);
insert into linhas(linhas, idhorarios) values ('Linha 6',45);
insert into linhas(linhas, idhorarios) values ('Linha 6',46);
insert into linhas(linhas, idhorarios) values ('Linha 6',47);
insert into linhas(linhas, idhorarios) values ('Linha 6',48);
insert into linhas(linhas, idhorarios) values ('Linha 6',49);
insert into linhas(linhas, idhorarios) values ('Linha 6',50);
insert into linhas(linhas, idhorarios) values ('Linha 6',51);
insert into linhas(linhas, idhorarios) values ('Linha 6',52);
insert into linhas(linhas, idhorarios) values ('Linha 6',53);
insert into linhas(linhas, idhorarios) values ('Linha 6',54);
insert into linhas(linhas, idhorarios) values ('Linha 6',55);
insert into linhas(linhas, idhorarios) values ('Linha 6',56);
insert into linhas(linhas, idhorarios) values ('Linha 6',57);
insert into linhas(linhas, idhorarios) values ('Linha 6',58);
insert into linhas(linhas, idhorarios) values ('Linha 6',59);
insert into linhas(linhas, idhorarios) values ('Linha 6',60);
insert into linhas(linhas, idhorarios) values ('Linha 6',61);
insert into linhas(linhas, idhorarios) values ('Linha 6',62);
insert into linhas(linhas, idhorarios) values ('Linha 6',63);
insert into linhas(linhas, idhorarios) values ('Linha 6',64);
insert into linhas(linhas, idhorarios) values ('Linha 6', 65);
insert into linhas(linhas, idhorarios) values ('Linha 6',66);
insert into linhas(linhas, idhorarios) values ('Linha 6',67);
insert into linhas(linhas, idhorarios) values ('Linha 6',68);
insert into linhas(linhas, idhorarios) values ('Linha 6',69);
insert into linhas(linhas, idhorarios) values ('Linha 6',70);
insert into linhas(linhas, idhorarios) values ('Linha 6',71);
insert into linhas(linhas, idhorarios) values ('Linha 6',72);
insert into linhas(linhas, idhorarios) values ('Linha 6',73);
insert into linhas(linhas, idhorarios) values ('Linha 6',74);
insert into linhas(linhas, idhorarios) values ('Linha 6',75);
insert into linhas(linhas, idhorarios) values ('Linha 6',76);
insert into linhas(linhas, idhorarios) values ('Linha 6',77);
insert into linhas(linhas, idhorarios) values ('Linha 6',78);
insert into linhas(linhas, idhorarios) values ('Linha 6',79);
insert into linhas(linhas, idhorarios) values ('Linha 6',80);
insert into linhas(linhas, idhorarios) values ('Linha 6',81);
insert into linhas(linhas, idhorarios) values ('Linha 6',82);
insert into linhas(linhas, idhorarios) values ('Linha 6',83);
insert into linhas(linhas, idhorarios) values ('Linha 6',84);
insert into linhas(linhas, idhorarios) values ('Linha 6',85);
insert into linhas(linhas, idhorarios) values ('Linha 6',86);
insert into linhas(linhas, idhorarios) values ('Linha 6',87);
insert into linhas(linhas, idhorarios) values ('Linha 6',88);
insert into linhas(linhas, idhorarios) values ('Linha 6',89);
insert into linhas(linhas, idhorarios) values ('Linha 6',90);
insert into linhas(linhas, idhorarios) values ('Linha 6',91);
insert into linhas(linhas, idhorarios) values ('Linha 6',92);
insert into linhas(linhas, idhorarios) values ('Linha 6',93);
insert into linhas(linhas, idhorarios) values ('Linha 6',94);
insert into linhas(linhas, idhorarios) values ('Linha 6',95);
insert into linhas(linhas, idhorarios) values ('Linha 6',96);
insert into linhas(linhas, idhorarios) values ('Linha 6',97);
insert into linhas(linhas, idhorarios) values ('Linha 6',98);
insert into linhas(linhas, idhorarios) values ('Linha 6',99);
insert into linhas(linhas, idhorarios) values ('Linha 6',100);
insert into linhas(linhas, idhorarios) values ('Linha 6',101);
insert into linhas(linhas, idhorarios) values ('Linha 6',102);
insert into linhas(linhas, idhorarios) values ('Linha 6',103);
insert into linhas(linhas, idhorarios) values ('Linha 6',104);
insert into linhas(linhas, idhorarios) values ('Linha 6',105);
insert into linhas(linhas, idhorarios) values ('Linha 6',106);
insert into linhas(linhas, idhorarios) values ('Linha 6',107);
insert into linhas(linhas, idhorarios) values ('Linha 6',108);
insert into linhas(linhas, idhorarios) values ('Linha 6',109);
insert into linhas(linhas, idhorarios) values ('Linha 6',110);
insert into linhas(linhas, idhorarios) values ('Linha 6',111);
insert into linhas(linhas, idhorarios) values ('Linha 6',112);
insert into linhas(linhas, idhorarios) values ('Linha 6',113);
insert into linhas(linhas, idhorarios) values ('Linha 6',114);
insert into linhas(linhas, idhorarios) values ('Linha 6',115);
insert into linhas(linhas, idhorarios) values ('Linha 6',116);
insert into linhas(linhas, idhorarios) values ('Linha 6',117);
insert into linhas(linhas, idhorarios) values ('Linha 6',118);
insert into linhas(linhas, idhorarios) values ('Linha 6',119);
insert into linhas(linhas, idhorarios) values ('Linha 6',120);
insert into linhas(linhas, idhorarios) values ('Linha 6',121);
insert into linhas(linhas, idhorarios) values ('Linha 6',122);
insert into linhas(linhas, idhorarios) values ('Linha 6',123);
insert into linhas(linhas, idhorarios) values ('Linha 6', 124);
insert into linhas(linhas, idhorarios) values ('Linha 6',125);
insert into linhas(linhas, idhorarios) values ('Linha 6',126);
insert into linhas(linhas, idhorarios) values ('Linha 6',127);
insert into linhas(linhas, idhorarios) values ('Linha 6',128);
insert into linhas(linhas, idhorarios) values ('Linha 6',129);
insert into linhas(linhas, idhorarios) values ('Linha 6',130);
insert into linhas(linhas, idhorarios) values ('Linha 6',131);
insert into linhas(linhas, idhorarios) values ('Linha 6',132);
insert into linhas(linhas, idhorarios) values ('Linha 7', 133);
insert into linhas(linhas, idhorarios) values ('Linha 7',134);
insert into linhas(linhas, idhorarios) values ('Linha 7',135);
insert into linhas(linhas, idhorarios) values ('Linha 7', 136);
insert into linhas(linhas, idhorarios) values ('Linha 7',137);
insert into linhas(linhas, idhorarios) values ('Linha 7',138);
insert into linhas(linhas, idhorarios) values ('Linha 7',139);
insert into linhas(linhas, idhorarios) values ('Linha 7',140);
insert into linhas(linhas, idhorarios) values ('Linha 7',141);
insert into linhas(linhas, idhorarios) values ('Linha 7', 142);
insert into linhas(linhas, idhorarios) values ('Linha 7', 143);
insert into linhas(linhas, idhorarios) values ('Linha 7', 144);
insert into linhas(linhas, idhorarios) values ('Linha 7', 145);
insert into linhas(linhas, idhorarios) values ('Linha 7', 145);
insert into linhas(linhas, idhorarios) values ('Linha 7',146);
insert into linhas(linhas, idhorarios) values ('Linha 7',147);
insert into linhas(linhas, idhorarios) values ('Linha 7',148);
insert into linhas(linhas, idhorarios) values ('Linha 7',149);
insert into linhas(linhas, idhorarios) values ('Linha 7',150);
insert into linhas(linhas, idhorarios) values ('Linha 7',151);
insert into linhas(linhas, idhorarios) values ('Linha 7',152);
insert into linhas(linhas, idhorarios) values ('Linha 7', 153);
insert into linhas(linhas, idhorarios) values ('Linha 7', 154);
insert into linhas(linhas, idhorarios) values ('Linha 7', 155);
insert into linhas(linhas, idhorarios) values ('Linha 7',156);
insert into linhas(linhas, idhorarios) values ('Linha 7',157);
insert into linhas(linhas, idhorarios) values ('Linha 7',158);
insert into linhas(linhas, idhorarios) values ('Linha 7',159);
insert into linhas(linhas, idhorarios) values ('Linha 7',160);
insert into linhas(linhas, idhorarios) values ('Linha 7',161);
insert into linhas(linhas, idhorarios) values ('Linha 7', 162);
insert into linhas(linhas, idhorarios) values ('Linha 7', 163);
insert into linhas(linhas, idhorarios) values ('Linha 7',164);
insert into linhas(linhas, idhorarios) values ('Linha 7', 165);
insert into linhas(linhas, idhorarios) values ('Linha 7', 166);
insert into linhas(linhas, idhorarios) values ('Linha 7', 167);
insert into linhas(linhas, idhorarios) values ('Linha 7',168);
insert into linhas(linhas, idhorarios) values ('Linha 7', 169);
insert into linhas(linhas, idhorarios) values ('Linha 7', 170);
insert into linhas(linhas, idhorarios) values ('Linha 7',171);
insert into linhas(linhas, idhorarios) values ('Linha 7', 172);
insert into linhas(linhas, idhorarios) values ('Linha 7', 173);
insert into linhas(linhas, idhorarios) values ('Linha 7', 174);
insert into linhas(linhas, idhorarios) values ('Linha 7', 175);
insert into linhas(linhas, idhorarios) values ('Linha 8', 176);
insert into linhas(linhas, idhorarios) values ('Linha 8', 177);
insert into linhas(linhas, idhorarios) values ('Linha 8', 178);
insert into linhas(linhas, idhorarios) values ('Linha 8', 179);
insert into linhas(linhas, idhorarios) values ('Linha 8', 180);
insert into linhas(linhas, idhorarios) values ('Linha 8', 181);
insert into linhas(linhas, idhorarios) values ('Linha 8', 182);
insert into linhas(linhas, idhorarios) values ('Linha 8', 183);
insert into linhas(linhas, idhorarios) values ('Linha 8', 184);
insert into linhas(linhas, idhorarios) values ('Linha 8', 185);
insert into linhas(linhas, idhorarios) values ('Linha 8', 186);
insert into linhas(linhas, idhorarios) values ('Linha 8', 187);
insert into linhas(linhas, idhorarios) values ('Linha 8', 188);
insert into linhas(linhas, idhorarios) values ('Linha 8', 189);
insert into linhas(linhas, idhorarios) values ('Linha 8', 190);
insert into linhas(linhas, idhorarios) values ('Linha 8', 191);
insert into linhas(linhas, idhorarios) values ('Linha 8', 192);
insert into linhas(linhas, idhorarios) values ('Linha 8', 193);
insert into linhas(linhas, idhorarios) values ('Linha 8', 194);
insert into linhas(linhas, idhorarios) values ('Linha 8', 195);
insert into linhas(linhas, idhorarios) values ('Linha 8', 196);
insert into linhas(linhas, idhorarios) values ('Linha 8', 197);
insert into linhas(linhas, idhorarios) values ('Linha 8', 198);
insert into linhas(linhas, idhorarios) values ('Linha 8' ,199);
insert into linhas(linhas, idhorarios) values ('Linha 8', 200);
insert into linhas(linhas, idhorarios) values ('Linha 8', 201);
insert into linhas(linhas, idhorarios) values ('Linha 8', 202);
insert into linhas(linhas, idhorarios) values ('Linha 8', 203);
insert into linhas(linhas, idhorarios) values ('Linha 8', 204);
insert into linhas(linhas, idhorarios) values ('Linha 8', 205);
insert into linhas(linhas, idhorarios) values ('Linha 8', 206);
insert into linhas(linhas, idhorarios) values ('Linha 8', 207);
insert into linhas(linhas, idhorarios) values ('Linha 8', 208);
insert into linhas(linhas, idhorarios) values ('Linha 8', 209);
insert into linhas(linhas, idhorarios) values ('Linha 8', 210);
insert into linhas(linhas, idhorarios) values ('Linha 8', 211);
insert into linhas(linhas, idhorarios) values ('Linha 8', 212);
insert into linhas(linhas, idhorarios) values ('Linha 8', 213);
insert into linhas(linhas, idhorarios) values ('Linha 8', 214);
insert into linhas(linhas, idhorarios) values ('Linha 8', 215);
insert into linhas(linhas, idhorarios) values ('Linha 8', 216);
insert into linhas(linhas, idhorarios) values ('Linha 8', 217);
insert into linhas(linhas, idhorarios) values ('Linha 8', 218);
insert into linhas(linhas, idhorarios) values ('Linha 8', 219);
insert into linhas(linhas, idhorarios) values ('Linha 8', 220);
insert into linhas(linhas, idhorarios) values ('Linha 8', 221);
insert into linhas(linhas, idhorarios) values ('Linha 8', 222);
insert into linhas(linhas, idhorarios) values ('Linha 8', 223);
insert into linhas(linhas, idhorarios) values ('Linha 8', 224);
insert into linhas(linhas, idhorarios) values ('Linha 8', 225);
insert into linhas(linhas, idhorarios) values ('Linha 8', 226);
insert into linhas(linhas, idhorarios) values ('Linha 8', 227);
insert into linhas(linhas, idhorarios) values ('Linha 8', 228);
insert into linhas(linhas, idhorarios) values ('Linha 8', 229);
insert into linhas(linhas, idhorarios) values ('Linha 8', 230);
insert into linhas(linhas, idhorarios) values ('Linha 8', 231);
insert into linhas(linhas, idhorarios) values ('Linha 8', 232);
insert into linhas(linhas, idhorarios) values ('Linha 8', 233);
insert into linhas(linhas, idhorarios) values ('Linha 8', 234);
insert into linhas(linhas, idhorarios) values ('Linha 8', 235);
insert into linhas(linhas, idhorarios) values ('Linha 8', 236);
insert into linhas(linhas, idhorarios) values ('Linha 8', 237);
insert into linhas(linhas, idhorarios) values ('Linha 8', 238);
insert into linhas(linhas, idhorarios) values ('Linha 8', 239);
insert into linhas(linhas, idhorarios) values ('Linha 8', 240);
insert into linhas(linhas, idhorarios) values ('Linha 8', 241);
insert into linhas(linhas, idhorarios) values ('Linha 8', 242);
insert into linhas(linhas, idhorarios) values ('Linha 8', 243);
insert into linhas(linhas, idhorarios) values ('Linha 8', 244);
insert into linhas(linhas, idhorarios) values ('Linha 10',245);
insert into linhas(linhas, idhorarios) values ('Linha 10',246);
insert into linhas(linhas, idhorarios) values ('Linha 10',247);
insert into linhas(linhas, idhorarios) values ('Linha 10',248);
insert into linhas(linhas, idhorarios) values ('Linha 10',249);
insert into linhas(linhas, idhorarios) values ('Linha 10',250);
insert into linhas(linhas, idhorarios) values ('Linha 10',251);
insert into linhas(linhas, idhorarios) values ('Linha 10',252);
insert into linhas(linhas, idhorarios) values ('Linha 10',253);
insert into linhas(linhas, idhorarios) values ('Linha 10',254);
insert into linhas(linhas, idhorarios) values ('Linha 10',255);
insert into linhas(linhas, idhorarios) values ('Linha 10',256);
insert into linhas(linhas, idhorarios) values ('Linha 10',257);
insert into linhas(linhas, idhorarios) values ('Linha 10',258);
insert into linhas(linhas, idhorarios) values ('Linha 10',259);
insert into linhas(linhas, idhorarios) values ('Linha 10',260);
insert into linhas(linhas, idhorarios) values ('Linha 10',261);
insert into linhas(linhas, idhorarios) values ('Linha 10',262);
insert into linhas(linhas, idhorarios) values ('Linha 10',263);
insert into linhas(linhas, idhorarios) values ('Linha 11', 264);
insert into linhas(linhas, idhorarios) values ('Linha 11',265);
insert into linhas(linhas, idhorarios) values ('Linha 11',266);
insert into linhas(linhas, idhorarios) values ('Linha 11',267);
insert into linhas(linhas, idhorarios) values ('Linha 11',268);
insert into linhas(linhas, idhorarios) values ('Linha 11',269);
insert into linhas(linhas, idhorarios) values ('Linha 15',270);
insert into linhas(linhas, idhorarios) values ('Linha 15',271);
insert into linhas(linhas, idhorarios) values ('Linha 15',272);
insert into linhas(linhas, idhorarios) values ('Linha 15',273);
insert into linhas(linhas, idhorarios) values ('Linha 15',274);
insert into linhas(linhas, idhorarios) values ('Linha 15',275);
insert into linhas(linhas, idhorarios) values ('Linha 15',276);
insert into linhas(linhas, idhorarios) values ('Linha 15',277);
insert into linhas(linhas, idhorarios) values ('Linha 15',278);
insert into linhas(linhas, idhorarios) values ('Linha 15',279);
insert into linhas(linhas, idhorarios) values ('Linha 15',280);
insert into linhas(linhas, idhorarios) values ('Linha 15',281);
insert into linhas(linhas, idhorarios) values ('Linha 15',282);
insert into linhas(linhas, idhorarios) values ('Linha 15',283);
insert into linhas(linhas, idhorarios) values ('Linha 15',284);
insert into linhas(linhas, idhorarios) values ('Linha 15',285);
insert into linhas(linhas, idhorarios) values ('Linha 15',286);
insert into linhas(linhas, idhorarios) values ('Linha 15',287);
insert into linhas(linhas, idhorarios) values ('Linha 15',288);
insert into linhas(linhas, idhorarios) values ('Linha 15',289);
insert into linhas(linhas, idhorarios) values ('Linha 15',290);
insert into linhas(linhas, idhorarios) values ('Linha 15',291);
insert into linhas(linhas, idhorarios) values ('Linha 15',292);
insert into linhas(linhas, idhorarios) values ('Linha 19',293);
insert into linhas(linhas, idhorarios) values ('Linha 19',294);
insert into linhas(linhas, idhorarios) values ('Linha 19',295);
insert into linhas(linhas, idhorarios) values ('Linha 19',296);
insert into linhas(linhas, idhorarios) values ('Linha 19',297);
insert into linhas(linhas, idhorarios) values ('Linha 19',298);
insert into linhas(linhas, idhorarios) values ('Linha 19',299);
insert into linhas(linhas, idhorarios) values ('Linha 19',300);
insert into linhas(linhas, idhorarios) values ('Linha 19',301);
insert into linhas(linhas, idhorarios) values ('Linha 19',302);
insert into linhas(linhas, idhorarios) values ('Linha 19',303);
insert into linhas(linhas, idhorarios) values ('Linha 19',304);
insert into linhas(linhas, idhorarios) values ('Linha 19',305);


insert into usuario(nomeusuario, telefone, email ,cidade, senha, img) values ('Carlos', '1313687', 'carlao@gmail.com', 'Bauru', '123', '../../assets/modelo.jpg')




































