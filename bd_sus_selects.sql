#ARQUIVO DE SELECTS PARA O BANCO bd_sus.

CREATE VIEW listagem_geral_med AS
SELECT * FROM tbl_medico;

SELECT * FROM listagem_geral_med
WHERE id_med = 1;

#LISTAGEM MÉDICO/ESPECIALIDADE

CREATE VIEW listagem_med_esp AS (
	SELECT a.nome_med, a.tel_med, a.cel_med, a.email_med, b.nome_esp
	FROM tbl_medico AS a
	INNER JOIN tbl_especialidade AS b ON b.id_esp = a.id_esp
);

#LISTAGEM SALA/ESPECIALIDADE

CREATE VIEW listagem_agenda_esp AS (
	SELECT a.num_sala, b.nome_esp
	FROM tbl_sala AS a
	INNER JOIN tbl_especialidade AS b ON b.id_esp = a.id_esp
);

#LISTAGEM AGENDA

CREATE VIEW listagem_med_esp_sala AS (
	SELECT c.num_sala AS Numero_Sala, b.nome_med AS Medico, b.cel_med AS Celular_Medico,
	d.nome_pac AS Nome_Paciente, d.cel_pac AS Celular_Paciente, 
	d.nome_resp AS Nome_Responsavel, d.tel_resp AS Numero_Responsavel,
	a.data_cir AS Data_Cirurgia, a.status_cir AS Status_Cirurgia
	FROM tbl_agenda AS a
	INNER JOIN tbl_medico AS b ON b.id_med = a.id_med
	INNER JOIN tbl_sala AS c ON c.id_sala = a.id_sala
	INNER JOIN tbl_paciente AS d ON d.id_pac = a.id_pac
);

#SELECIONANDO VIEWS

SELECT * FROM listagem_med_esp_sala;
SELECT * FROM listagem_agenda_esp;
SELECT * FROM listagem_med_esp;

#DROPANDO VIEWs

DROP VIEW listagem_med_esp_sala;
DROP VIEW listagem_agenda_esp;
DROP VIEW listagem_med_esp;