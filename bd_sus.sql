CREATE DATABASE bd_sus;

USE bd_sus;

# drop database bd_sus;

CREATE TABLE tbl_especialidade (
	id_esp INT UNSIGNED AUTO_INCREMENT,
    nome_esp VARCHAR (100) NOT NULL,
    constraint tbl_especialidade_id_pk primary key (id_esp)
);

CREATE TABLE tbl_medico (
	id_med INT UNSIGNED AUTO_INCREMENT,
    id_esp INT UNSIGNED NOT NULL,
    nome_med VARCHAR (500) NOT NULL,
    email_med VARCHAR (100) NOT NULL,
    cel_med VARCHAR (11) NOT NULL,
	tel_med VARCHAR (10),
	constraint tbl_medico_id_pk primary key (id_med)
);

CREATE TABLE tbl_sala (
	id_sala INT UNSIGNED AUTO_INCREMENT,
    id_esp INT UNSIGNED NOT NULL,
    num_sala VARCHAR (10) NOT NULL,
    constraint tbl_sala_id_pk primary key (id_sala)
);

CREATE TABLE tbl_paciente (
	id_pac INT UNSIGNED AUTO_INCREMENT,
    nome_pac VARCHAR (500) NOT NULL,
    email_pac VARCHAR (100) NOT NULL,
    cel_pac VARCHAR (11) NOT NULL,
    nome_resp VARCHAR (500) NOT NULL,
    tel_resp VARCHAR (10) NOT NULL,
	tel_pac VARCHAR (10),
	constraint tbl_paciente_id_pk primary key (id_pac)
);

CREATE TABLE tbl_insumo (
	id_ins INT UNSIGNED AUTO_INCREMENT,
    id_pac INT UNSIGNED NOT NULL,
    nome_ins VARCHAR (100) NOT NULL,
    qtd_ins DECIMAL (10,2) NOT NULL,
    constraint tbl_insumo_id_pk primary key (id_ins)
);

CREATE TABLE tbl_agenda (
	id_agenda INT UNSIGNED AUTO_INCREMENT,
    id_sala INT UNSIGNED NOT NULL,
    id_pac INT UNSIGNED NOT NULL,
    id_med INT UNSIGNED NOT NULL,
    data_cir VARCHAR (10) NOT NULL,
    status_cir ENUM ("Agendado", "Concluído", "Cancelado") NOT NULL,
    constraint tbl_agenda_id_pk primary key (id_agenda)
);