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
insert into horarios(horarios, semana) values('08:00', 'Segunda á Sábado - Terminal Urbano(centro)'); -- linha 1
insert into horarios(horarios, semana) values('16:40','Segunda á Sábado - Terminal Urbano(centro)'); -- linha 1
insert into horarios(horarios, semana) values('08:15','Segunda á Sábado - São Judas Tadeu'); -- linha 1
insert into horarios(horarios, semana) values('17:00','Segunda á Sábado - São Judas Tadeu');-- linha 1
insert into horarios(horarios, semana) values('06:40','Segunda á Sábado - Terminal Urbano (centro)'); -- linha 2
insert into horarios(horarios, semana) values('12:00', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 2
insert into horarios(horarios, semana) values('17:00','Segunda á Sábado - Terminal Urbano (centro)');-- linha 2
insert into horarios(horarios, semana) values('07:25','Segunda á Sábado - Alfredo Guedes');-- linha 2
insert into horarios(horarios, semana) values('12:25','Segunda á Sábado - Alfredo Guedes');-- linha 2
insert into horarios(horarios, semana) values('17:55', 'Segunda á Sábado - Alfredo Guedes');-- linha 2
insert into horarios(horarios, semana) values('08:10', 'Domingo e Feriado - Terminal Urbano (centro)');-- linha 2
insert into horarios(horarios, semana) values('17:40', 'Domingo e Feriado - Terminal Urbano (centro)');
insert into horarios(horarios, semana) values('08:30', 'Domingo e Feriado - Alfredo Guedes');-- linha 2
insert into horarios(horarios, semana) values('18:10', 'Domingo e Feriado - Alfredo Guedes'); -- linha 2
insert into horarios(horarios,semana) values('06:00', 'Segunda á Sábado - ETEC'); -- linha 5
insert into horarios(horarios,semana) values('08:00', 'Segunda á Sábado - ETEC'); -- linha 5
insert into horarios(horarios,semana) values('10:00', 'Segunda á Sábado - ETEC'); -- linha 5
insert into horarios(horarios,semana) values('12:00', 'Segunda á Sábado - ETEC'); -- linha 5
insert into horarios(horarios,semana) values('14:00', 'Segunda á Sábado - ETEC'); -- linha 5
insert into horarios(horarios,semana) values('16:00','Segunda á Sábado - ETEC'); -- linha 5
insert into horarios(horarios,semana) values('18:10','Segunda á Sábado - ETEC'); -- linha 5
insert into horarios(horarios, semana) values('06:35', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 5
insert into horarios(horarios, semana) values('07:20','Segunda á Sábado - Terminal Urbano (centro)'); -- linha 5
insert into horarios(horarios, semana) values('08:35', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 5
insert into horarios(horarios, semana) values('09:20','Segunda á Sábado - Terminal Urbano (centro)'); -- linha 5
insert into horarios(horarios, semana) values('10:35', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 5
insert into horarios(horarios, semana) values('11:20','Segunda á Sábado - Terminal Urbano (centro)'); -- linha 5
insert into horarios(horarios, semana) values('12:35', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 5
insert into horarios(horarios, semana) values('13:20', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 5
insert into horarios(horarios, semana) values('14:35', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 5
insert into horarios(horarios, semana) values('15:20','Segunda á Sábado - Terminal Urbano (centro)'); -- linha 5
insert into horarios(horarios, semana) values('16:35','Segunda á Sábado - Terminal Urbano (centro)'); -- linha 5
insert into horarios(horarios, semana) values('17:40','Segunda á Sábado - Terminal Urbano (centro)'); -- linha 5
insert into horarios(horarios, semana) values('18:50', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 5
insert into horarios(horarios, semana) values('19:20', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 5
insert into horarios(horarios, semana) values('06:00', 'Segunda á Sábado - ETEC');-- linha 5
insert into horarios(horarios, semana) values('08:00', 'Segunda á Sábado - ETEC'); -- linha 5
insert into horarios(horarios, semana) values('10:00', 'Segunda á Sábado - ETEC'); -- linha 5
insert into horarios(horarios, semana) values('12:00','Segunda á Sábado - ETEC'); -- linha 5
insert into horarios(horarios, semana) values('14:00', 'Segunda á Sábado - ETEC'); -- linha 5
insert into horarios(horarios, semana) values('16:00', 'Segunda á Sábado - ETEC'); -- linha 5
insert into horarios(horarios, semana) values('18:10', 'Segunda á Sábado - ETEC'); -- linha 5
insert into horarios(horarios,semana) values('07:05', 'Segunda á Sábado - Rodoviária'); -- linha 5
insert into horarios(horarios,semana) values('09:10', 'Segunda á Sábado - Rodoviária'); -- linha 5
insert into horarios(horarios,semana) values('13:10', 'Segunda á Sábado - Rodoviária'); -- linha 5
insert into horarios(horarios,semana) values('15:10',  'Segunda á Sábado - Rodoviária'); -- linha 5
insert into horarios(horarios,semana) values('17:30', 'Segunda á Sábado - Rodoviária'); -- linha 5
insert into horarios(horarios,semana) values('11:10', 'Segunda á Sábado - Rodoviária'); -- linha 5
insert into horarios(horarios,semana) values('19:10','Segunda á Sábado - Rodoviária'); -- linha 5
insert into horarios(horarios,semana) values('05:00', 'Segunda á Sábado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('06:00', 'Segunda á Sábado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('17:00', 'Segunda á Sábado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('08:00', 'Segunda á Sábado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('09:00', 'Segunda á Sábado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('10:00', 'Segunda á Sábado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('11:00', 'Segunda á Sábado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('12:00', 'Segunda á Sábado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('13:00', 'Segunda á Sábado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('14:00', 'Segunda á Sábado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('15:00', 'Segunda á Sábado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('16:00','Segunda á Sábado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('17:00', 'Segunda á Sábado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('18:00', 'Segunda á Sábado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('19:00', 'Segunda á Sábado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('20:00', 'Segunda á Sábado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('21:00', 'Segunda á Sábado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('22:00', 'Segunda á Sábado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('23:00','Segunda á Sábado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('05:16','Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('05:40','Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('06:16','Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('06:40',  'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('07:20', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('07:40',  'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('08:20', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('08:20', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('08:40', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('09:20', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('10:20', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('10:40','Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('11:20','Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('11:40', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('12:20','Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('12:40', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('13:20', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('13:40', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('14:20', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('14:40', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('15:20', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('15:40', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('16:20', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('16:40', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('17:20', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('17:40',  'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('18:20', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('18:40',  'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('19:20', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('19:40', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('20:20',  'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('20:40', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('21:20', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('21:40',  'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('22:20',  'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('22:40',  'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('23:20',  'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('23:40',  'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('05:25',  'Segunda á Sábado - Jílio Ferrari'); -- linha 6
insert into horarios(horarios,semana) values('06:30',  'Segunda á Sábado - Jílio Ferrari'); -- linha 6
insert into horarios(horarios,semana) values('07:30',  'Segunda á Sábado - Jílio Ferrari'); -- linha 6
insert into horarios(horarios,semana) values('08:30',  'Segunda á Sábado - Jílio Ferrari'); -- linha 6
insert into horarios(horarios,semana) values('09:30',  'Segunda á Sábado - Jílio Ferrari'); -- linha 6
insert into horarios(horarios,semana) values('10:30',  'Segunda á Sábado - Jílio Ferrari'); -- linha 6
insert into horarios(horarios,semana) values('11:30',  'Segunda á Sábado - Jílio Ferrari'); -- linha 6
insert into horarios(horarios,semana) values('12:30',  'Segunda á Sábado - Jílio Ferrari'); -- linha 6
insert into horarios(horarios,semana) values('13:30',  'Segunda á Sábado - Jílio Ferrari'); -- linha 6
insert into horarios(horarios,semana) values('14:30',  'Segunda á Sábado - Jílio Ferrari'); -- linha 6
insert into horarios(horarios,semana) values('15:30',  'Segunda á Sábado - Jílio Ferrari'); -- linha 6
insert into horarios(horarios,semana) values('16:30',  'Segunda á Sábado - Jílio Ferrari'); -- linha 6
insert into horarios(horarios,semana) values('17:30',  'Segunda á Sábado - Jílio Ferrari'); -- linha 6
insert into horarios(horarios,semana) values('18:30',  'Segunda á Sábado - Jílio Ferrari'); -- linha 6
insert into horarios(horarios,semana) values('19:30',  'Segunda á Sábado - Jílio Ferrari'); -- linha 6
insert into horarios(horarios,semana) values('20:30',  'Segunda á Sábado - Jílio Ferrari'); -- linha 6
insert into horarios(horarios,semana) values('21:30',  'Segunda á Sábado - Jílio Ferrari'); -- linha 6
insert into horarios(horarios,semana) values('22:30',  'Segunda á Sábado - Jílio Ferrari'); -- linha 6
insert into horarios(horarios,semana) values('23:30',  'Segunda á Sábado - Jílio Ferrari'); -- linha 6
insert into horarios(horarios,semana) values('23:50',  'Segunda á Sábado - Jílio Ferrari'); -- linha 6
insert into horarios(horarios,semana) values('06:00',  'Domingo e Feriado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('07:00',  'Domingo e Feriado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('08:00',  'Domingo e Feriado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('09:00',  'Domingo e Feriado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('10:00',  'Domingo e Feriado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('11:00',  'Domingo e Feriado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('12:00',  'Domingo e Feriado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('13:00',  'Domingo e Feriado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('14:00',  'Domingo e Feriado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('15:00',  'Domingo e Feriado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('16:00',  'Domingo e Feriado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('17:00',  'Domingo e Feriado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('18:00',  'Domingo e Feriado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('19:00',  'Domingo e Feriado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('20:00',  'Domingo e Feriado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('21:00',  'Domingo e Feriado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('22:00',  'Domingo e Feriado - Monte Azul'); -- linha 6
insert into horarios(horarios,semana) values('06:16',  'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('06:40',  'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('07:20', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('07:40', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('08:20', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('08:40', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('09:20', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('09:40', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('10:20', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('10:40', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('11:20', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('11:40', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('12:20', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('12:40', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('13:20', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('13:40', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('14:20', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('14:40', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('15:20', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('15:40', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('16:20', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('16:40', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('17:20', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('17:40', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('18:20', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('18:40', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('19:20', 'Domindo e Feriado - Terminal Urbano (centro)');-- linha 6
insert into horarios(horarios,semana) values('19:40', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('20:20', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('20:40', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('21:20', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('21:40', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios,semana) values('22:20', 'Domindo e Feriado - Terminal Urbano (centro)'); -- linha 6
insert into horarios(horarios, semana) values('06:30', 'Domindo e Feriado - Júlio Ferrari'); -- linha 6
insert into horarios(horarios, semana) values('07:30', 'Domindo e Feriado - Júlio Ferrari'); -- linha 6
insert into horarios(horarios, semana) values('08:30', 'Domindo e Feriado - Júlio Ferrari'); -- linha 6
insert into horarios(horarios, semana) values('09:30', 'Domindo e Feriado - Júlio Ferrari'); -- linha 6
insert into horarios(horarios, semana) values('10:30', 'Domindo e Feriado - Júlio Ferrari'); -- linha 6
insert into horarios(horarios, semana) values('11:30', 'Domindo e Feriado - Júlio Ferrari'); -- linha 6
insert into horarios(horarios, semana) values('12:30', 'Domindo e Feriado - Júlio Ferrari'); -- linha 6
insert into horarios(horarios, semana) values('13:30', 'Domindo e Feriado - Júlio Ferrari'); -- linha 6
insert into horarios(horarios, semana) values('14:30', 'Domindo e Feriado - Júlio Ferrari'); -- linha 6
insert into horarios(horarios, semana) values('15:30', 'Domindo e Feriado - Júlio Ferrari'); -- linha 6
insert into horarios(horarios, semana) values('16:30', 'Domindo e Feriado - Júlio Ferrari'); -- linha 6
insert into horarios(horarios, semana) values('17:30', 'Domindo e Feriado - Júlio Ferrari'); -- linha 6
insert into horarios(horarios, semana) values('18:30', 'Domindo e Feriado - Júlio Ferrari'); -- linha 6
insert into horarios(horarios, semana) values('19:30', 'Domindo e Feriado - Júlio Ferrari'); -- linha 6
insert into horarios(horarios, semana) values('20:30', 'Domindo e Feriado - Júlio Ferrari'); -- linha 6
insert into horarios(horarios, semana) values('21:30', 'Domindo e Feriado - Júlio Ferrari'); -- linha 6
insert into horarios(horarios, semana) values('22:30', 'Domindo e Feriado - Júlio Ferrari'); -- linha 6
insert into horarios(horarios,semana) values('05:25', 'Segunda á Sábado - ETEC'); -- linha 7
insert into horarios(horarios,semana) values('06:25', 'Segunda á Sábado - ETEC'); -- linha 7
insert into horarios(horarios,semana) values('07:30', 'Segunda á Sábado - ETEC'); -- linha 7
insert into horarios(horarios,semana) values('08:30', 'Segunda á Sábado - ETEC'); -- linha 7
insert into horarios(horarios,semana) values('09:30', 'Segunda á Sábado - ETEC'); -- linha 7
insert into horarios(horarios,semana) values('10:30', 'Segunda á Sábado - ETEC'); -- linha 7
insert into horarios(horarios,semana) values('11:30', 'Segunda á Sábado - ETEC'); -- linha 7
insert into horarios(horarios,semana) values('12:30', 'Segunda á Sábado - ETEC'); -- linha 7
insert into horarios(horarios,semana) values('13:30', 'Segunda á Sábado - ETEC'); -- linha 7
insert into horarios(horarios,semana) values('14:30', 'Segunda á Sábado - ETEC'); -- linha 7
insert into horarios(horarios,semana) values('15:30', 'Segunda á Sábado - ETEC'); -- linha 7
insert into horarios(horarios,semana) values('16:30', 'Segunda á Sábado - ETEC'); -- linha 7
insert into horarios(horarios,semana) values('17:30', 'Segunda á Sábado - ETEC'); -- linha 7
insert into horarios(horarios,semana) values('18:30', 'Segunda á Sábado - ETEC'); -- linha 7
insert into horarios(horarios,semana) values('19:30', 'Segunda á Sábado - ETEC'); -- linha 7
insert into horarios(horarios, semana) values('05:50','Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('06:10', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('06:50', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('07:10', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('07:50', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('08:10', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('08:50', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('09:10', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('09:50', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('10:10', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('10:50', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('11:10', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('11:50', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('12:10', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('12:50', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('13:10', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('13:50', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('14:10', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('14:50', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('15:10', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('15:50', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('16:10', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('16:50', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('17:10', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('17:50', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('18:10', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('18:50', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('19:10', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 7
insert into horarios(horarios, semana) values('05:55', 'Segunda á Sábado - Cacap'); -- linha 7
insert into horarios(horarios, semana) values('06:55', 'Segunda á Sábado - Cacap'); -- linha 7
insert into horarios(horarios, semana) values('07:55', 'Segunda á Sábado - Cacap'); -- linha 7
insert into horarios(horarios, semana) values('08:55', 'Segunda á Sábado - Cacap'); -- linha 7
insert into horarios(horarios, semana) values('09:55', 'Segunda á Sábado - Cacap'); -- linha 7
insert into horarios(horarios, semana) values('10:55', 'Segunda á Sábado - Cacap'); -- linha 7
insert into horarios(horarios, semana) values('11:55', 'Segunda á Sábado - Cacap'); -- linha 7
insert into horarios(horarios, semana) values('12:55', 'Segunda á Sábado - Cacap'); -- linha 7
insert into horarios(horarios, semana) values('13:55', 'Segunda á Sábado - Cacap'); -- linha 7
insert into horarios(horarios, semana) values('14:55', 'Segunda á Sábado - Cacap'); -- linha 7
insert into horarios(horarios, semana) values('15:55', 'Segunda á Sábado - Cacap'); -- linha 7
insert into horarios(horarios, semana) values('16:55', 'Segunda á Sábado - Cacap'); -- linha 7
insert into horarios(horarios, semana) values('17:55', 'Segunda á Sábado - Cacap'); -- linha 7
insert into horarios(horarios, semana) values('18:55', 'Segunda á Sábado - Cacap'); -- linha 7
insert into horarios(horarios, semana) values('05:00', 'Segunda á Sábado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('06:00', 'Segunda á Sábado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('07:00', 'Segunda á Sábado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('08:00', 'Segunda á Sábado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('09:00', 'Segunda á Sábado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('10:00', 'Segunda á Sábado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('11:00', 'Segunda á Sábado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('12:00', 'Segunda á Sábado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('13:00', 'Segunda á Sábado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('14:00', 'Segunda á Sábado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('15:00', 'Segunda á Sábado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('16:00', 'Segunda á Sábado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('17:00', 'Segunda á Sábado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('18:00', 'Segunda á Sábado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('19:00', 'Segunda á Sábado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('20:00', 'Segunda á Sábado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('21:00', 'Segunda á Sábado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('22:00', 'Segunda á Sábado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('05:20', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 8
insert into horarios(horarios, semana) values('05:40', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 8
insert into horarios(horarios, semana) values('06:16', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 8
insert into horarios(horarios, semana) values('06:40', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 8
insert into horarios(horarios, semana) values('19:20', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 8
insert into horarios(horarios, semana) values('19:40', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 8
insert into horarios(horarios, semana) values('20:20', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 8
insert into horarios(horarios, semana) values('20:40', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 8
insert into horarios(horarios, semana) values('21:20', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 8
insert into horarios(horarios, semana) values('21:40', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 8
insert into horarios(horarios, semana) values('22:20', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 8
insert into horarios(horarios, semana) values('05:25', 'Segunda á Sábado - Cecap');
insert into horarios(horarios, semana) values('06:25', 'Segunda á Sábado - Cecap');
insert into horarios(horarios, semana) values('07:25', 'Segunda á Sábado - Cecap');
insert into horarios(horarios, semana) values('08:25', 'Segunda á Sábado - Cecap');
insert into horarios(horarios, semana) values('09:25', 'Segunda á Sábado - Cecap');
insert into horarios(horarios, semana) values('10:25', 'Segunda á Sábado - Cecap');
insert into horarios(horarios, semana) values('11:25', 'Segunda á Sábado - Cecap');
insert into horarios(horarios, semana) values('12:25', 'Segunda á Sábado - Cecap'); -- linha 8
insert into horarios(horarios, semana) values('13:25', 'Segunda á Sábado - Cecap'); -- linha 8
insert into horarios(horarios, semana) values('06:00', 'Domingo e Feriado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('07:00', 'Domingo e Feriado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('08:00', 'Domingo e Feriado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('09:00', 'Domingo e Feriado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('10:00', 'Domingo e Feriado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('11:00', 'Domingo e Feriado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('12:00', 'Domingo e Feriado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('13:00', 'Domingo e Feriado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('14:00', 'Domingo e Feriado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('15:00', 'Domingo e Feriado - ETEC'); -- linha 8
insert into horarios(horarios, semana) values('06:20','Domingo e Feriado - Terminal Urbano (centro)'); -- linha 8
insert into horarios(horarios, semana) values('06:40','Domingo e Feriado - Terminal Urbano (centro)'); -- linha 8
insert into horarios(horarios, semana) values('07:20','Domingo e Feriado - Terminal Urbano (centro)'); -- linha 8
insert into horarios(horarios, semana) values('07:40','Domingo e Feriado - Terminal Urbano (centro)'); -- linha 8
insert into horarios(horarios, semana) values('08:20','Domingo e Feriado - Terminal Urbano (centro)'); -- linha 8
insert into horarios(horarios, semana) values('08:40','Domingo e Feriado - Terminal Urbano (centro)'); -- linha 8
insert into horarios(horarios, semana) values('09:20','Domingo e Feriado - Terminal Urbano (centro)'); -- linha 8
insert into horarios(horarios, semana) values('09:40','Domingo e Feriado - Terminal Urbano (centro)'); -- linha 8
insert into horarios(horarios, semana) values('10:20','Domingo e Feriado - Terminal Urbano (centro)'); -- linha 8
insert into horarios(horarios, semana) values('10:40','Domingo e Feriado - Terminal Urbano (centro)'); -- linha 8
insert into horarios(horarios, semana) values('06:25', 'Domingo e Feriado - Júlio Ferrari'); -- linha 8
insert into horarios(horarios, semana) values('07:25', 'Domingo e Feriado - Júlio Ferrari'); -- linha 8
insert into horarios(horarios, semana) values('08:25', 'Domingo e Feriado - Júlio Ferrari'); -- linha 8
insert into horarios(horarios, semana) values('09:25', 'Domingo e Feriado - Júlio Ferrari'); -- linha 8
insert into horarios(horarios, semana) values('10:25', 'Domingo e Feriado - Júlio Ferrari'); -- linha 8
insert into horarios(horarios, semana) values('11:25', 'Domingo e Feriado - Júlio Ferrari'); -- linha 8
insert into horarios(horarios, semana) values('12:25', 'Domingo e Feriado - Júlio Ferrari'); -- linha 8
insert into horarios(horarios, semana) values('13:25', 'Domingo e Feriado - Júlio Ferrari'); -- linha 8
insert into horarios(horarios, semana) values('14:25', 'Domingo e Feriado - Júlio Ferrari'); -- linha 8
insert into horarios(horarios, semana) values('15:25', 'Domingo e Feriado - Júlio Ferrari'); -- linha 8
insert into horarios(horarios, semana) values('16:25', 'Domingo e Feriado - Júlio Ferrari'); -- linha 8
insert into horarios(horarios, semana) values('05:00','Segunda á Sábado - Fórum'); -- linha 10
insert into horarios(horarios, semana) values('06:00','Segunda á Sábado - Fórum'); -- linha 10
insert into horarios(horarios, semana) values('07:00','Segunda á Sábado - Fórum'); -- linha 10
insert into horarios(horarios, semana) values('08:00','Segunda á Sábado - Fórum'); -- linha 10
insert into horarios(horarios, semana) values('09:00','Segunda á Sábado - Fórum'); -- linha 10
insert into horarios(horarios, semana) values('10:00','Segunda á Sábado - Fórum'); -- linha 10
insert into horarios(horarios, semana) values('11:00','Segunda á Sábado - Fórum'); -- linha 10
insert into horarios(horarios, semana) values('12:00','Segunda á Sábado - Fórum'); -- linha 10
insert into horarios(horarios, semana) values('13:00','Segunda á Sábado - Fórum'); -- linha 10
insert into horarios(horarios, semana) values('14:00','Segunda á Sábado - Fórum'); -- linha 10
insert into horarios(horarios, semana) values('15:00','Segunda á Sábado - Fórum'); -- linha 10
insert into horarios(horarios, semana) values('16:00','Segunda á Sábado - Fórum'); -- linha 10
insert into horarios(horarios, semana) values('17:00','Segunda á Sábado - Fórum'); -- linha 10
insert into horarios(horarios, semana) values('18:00','Segunda á Sábado - Fórum'); -- linha 10
insert into horarios(horarios, semana) values('19:00','Segunda á Sábado - Fórum'); -- linha 10
insert into horarios(horarios, semana) values('20:00','Segunda á Sábado - Fórum'); -- linha 10
insert into horarios(horarios, semana) values('21:00','Segunda á Sábado - Fórum'); -- linha 10
insert into horarios(horarios, semana) values('22:00','Segunda á Sábado - Fórum'); -- linha 10
insert into horarios(horarios, semana) values('23:00','Segunda á Sábado - Fórum'); -- linha 10
insert into horarios(horarios, semana) values('05:05', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 11
insert into horarios(horarios, semana) values('05:45', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 11
insert into horarios(horarios, semana) values('06:05', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 11
insert into horarios(horarios, semana) values('06:45', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 11
insert into horarios(horarios, semana) values('07:15', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 11
insert into horarios(horarios, semana) values('07:45', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 11
insert into horarios(horarios, semana) values('08:05', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 15
insert into horarios(horarios, semana) values('08:45', 'Segunda á Sábado - Terminal Urbano (centro)'); -- linha 15
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
insert into horarios(horarios,semana) values('06:25', 'Segunda á Sábado - ETEC'); -- linha 19
insert into horarios(horarios,semana) values('07:25', 'Segunda á Sábado - ETEC'); -- linha 19
insert into horarios(horarios,semana) values('08:25', 'Segunda á Sábado - ETEC'); -- linha 19
insert into horarios(horarios,semana) values('09:25', 'Segunda á Sábado - ETEC'); -- linha 19
insert into horarios(horarios,semana) values('10:25', 'Segunda á Sábado - ETEC'); -- linha 19
insert into horarios(horarios,semana) values('11:33', 'Segunda á Sábado - ETEC'); -- linha 19
insert into horarios(horarios,semana) values('12:30', 'Segunda á Sábado - ETEC'); -- linha 19
insert into horarios(horarios,semana) values('13:30', 'Segunda á Sábado - ETEC'); -- linha 19
insert into horarios(horarios,semana) values('14:30', 'Segunda á Sábado - ETEC'); -- linha 19
insert into horarios(horarios,semana) values('15:30', 'Segunda á Sábado - ETEC'); -- linha 19
insert into horarios(horarios,semana) values('16:33', 'Segunda á Sábado - ETEC'); -- linha 19
insert into horarios(horarios,semana) values('17:33', 'Segunda á Sábado - ETEC'); -- linha 19
insert into horarios(horarios,semana) values('18:35', 'Segunda á Sábado - ETEC'); -- linha 19
insert into horarios(horarios,semana) values('19:00', 'Segunda á Sábado - ETEC'); -- linha 19







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
insert into linhas(linhas, idhorarios) values ('Linha 2'10);
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


-- insert into linhas(linhas, idhorarios) values ('Linha 5');
-- insert into linhas(linhas, idhorarios) values ('Linha 6');
-- insert into linhas(linhas, idhorarios) values ('Linha 7');
-- insert into linhas(linhas, idhorarios) values ('Linha 8');
-- insert into linhas(linhas, idhorarios) values ('Linha 10');
-- insert into linhas(linhas, idhorarios) values ('Linha 11');
-- insert into linhas(linhas, idhorarios) values ('Linha 15');
-- insert into linhas(linhas, idhorarios) values ('Linha 19');

