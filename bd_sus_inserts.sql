#ARQUIVO DE INSERTS DE DADOS NA TABELA ESPECIALIDADES.
INSERT INTO tbl_especialidade(nome_esp)
VALUES ('NEUROLOGIA');

INSERT INTO tbl_especialidade(nome_esp)
VALUES ('ORTOPEDIA');

INSERT INTO tbl_especialidade(nome_esp)
VALUES ('CARDIOLOGIA');

#INSERÇÃO DE DADOS NA TABELA DE PACIENTES.

INSERT INTO TBL_PACIENTE(nome_pac, tel_pac, cel_pac, email_pac, nome_resp, tel_resp)
VALUES ('AUGUSTO DOS ANJOS', '2587-9635', '2365-5897', 'augusto.anjos@gmail.com', '', '');

INSERT INTO TBL_PACIENTE(nome_pac, tel_pac, cel_pac, email_pac, nome_resp, tel_resp)
VALUES ('MARIO DE ANDRADE', '2357-9514', '5923-5769', 'mario.andrade@gmail.com', '', '');

INSERT INTO TBL_PACIENTE(nome_pac, tel_pac, cel_pac, email_pac, nome_resp, tel_resp)
VALUES ('SANTOS DUMONT', '2357-2145', '2365-6987', 'santos.dumont@gmail.com', '', '');

INSERT INTO TBL_PACIENTE(nome_pac, tel_pac, cel_pac, email_pac, nome_resp, tel_resp)
VALUES ('ALBERT EINSTEIN', '2595-2587', '2354-8936', 'albert.einstein@gmail.com', '', '');

INSERT INTO TBL_PACIENTE(nome_pac, tel_pac, cel_pac, email_pac, nome_resp, tel_resp)
VALUES ('NIKOLA TESLA', '3217-5324', '2587-9122', 'nikola.tesla@gmail.com', '', '');

#INSERÇÃO DE DADOS NA TABELA DE MEDICOS.

INSERT INTO TBL_MEDICO(id_esp, nome_med, email_med, tel_med, cel_med)
VALUES (1, 'JOÃO DA SILVA', 'joaosilva@gmail.com', '1234-5678', '7894-5612');

INSERT INTO TBL_MEDICO(id_esp, nome_med, email_med, tel_med, cel_med)
VALUES (2, 'ANA MARIA', 'ana_mari@gmail.com', '1234-5678', '7894-5612');

INSERT INTO TBL_MEDICO(id_esp, nome_med, email_med, tel_med, cel_med)
VALUES (3, 'CARLOS ALBERT', 'carlos.albert@gmail.com', '1234-5678', '7894-5612');

INSERT INTO TBL_MEDICO(id_esp, nome_med, email_med, tel_med, cel_med)
VALUES (1, 'JUNIOR ALBERTO', 'j.alberto@gmail.com', '1234-5678', '7894-5612');

#INSERÇÃO DE DADOS NA TABELA DE SALAS.
INSERT INTO tbl_sala(num_sala, id_esp)
VALUES ('SALA 01', 1);

INSERT INTO tbl_sala(num_sala, id_esp)
VALUES ('SALA 02', 2);

INSERT INTO tbl_sala(num_sala, id_esp)
VALUES ('SALA 03', 3);

#INSERÇÃO DE DADOS NA TABELA DE AGENDAMENTOS.
INSERT INTO tbl_agenda(id_sala, id_med, id_pac, data_cir, status_cir)
VALUES (1, 4, 1, '05/09/2017', 'AGENDADO');

INSERT INTO tbl_agenda(id_sala, id_med, id_pac, data_cir, status_cir)
VALUES (1, 4, 1, '15/10/2017', 'AGENDADO');

INSERT INTO tbl_agenda(id_sala, id_med, id_pac, data_cir, status_cir)
VALUES (1, 4, 1, '11/11/2017', 'AGENDADO');
