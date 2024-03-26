#ARQUIVO DE STORED PROCEDURE (FUNÇÃO) DO bd_sus

#PROCEDURE abaixo está sem parametro's definido(s)

DELIMITER $

CREATE PROCEDURE listagem_agenda()
BEGIN

	SELECT 
		c.num_sala AS Numero_Sala, b.nome_med AS Medico, b.cel_med AS Celular_Medico,
		d.nome_pac AS Nome_Paciente, d.cel_pac AS Celular_Paciente, 
		d.nome_resp AS Nome_Responsavel, d.tel_resp AS Numero_Responsavel,
		a.data_cir AS Data_Cirurgia, a.status_cir AS Status_Cirurgia
	FROM tbl_agenda AS a
	INNER JOIN tbl_medico AS b ON b.id_med = a.id_med
	INNER JOIN tbl_sala AS c ON c.id_sala = a.id_sala
	INNER JOIN tbl_paciente AS d ON d.id_pac = a.id_pac;

END

$

CALL listagem_agenda();
#DROP PROCEDURE listagem_agenda;