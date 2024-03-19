#Arquivo para armazenar as TRIGGERS da tabela bd_sus;

USE bd_sus;

#DESCRIBE tbl_paciente_bkp; # Mostra os dados (Descrição) da tabela referente

#O $ age como um delimitador de inicio da Trigger
DELIMITER $

#Criação do corpo da Trigger (CREATE TRIGGER <nome_trigger> <(BEFORE || AFTER)> <ação> ON <tabela_referente>)
CREATE TRIGGER trg_delete_pac BEFORE DELETE ON tbl_paciente

FOR EACH ROW #Na linha que sofre a ação de DELETE
BEGIN
#Comando a ser executado
INSERT INTO tbl_paciente_bkp 
SET 
id_pac = OLD.id_pac,
nome_pac = OLD.nome_pac,
cel_pac = OLD.cel_pac,
email_pac = OLD.email_pac,
nome_resp = OLD.nome_resp,
tel_resp = OLD.tel_resp,
tel_pac = OLD.tel_pac,
date_delete = NOW();

#Criação do delimitador de fim da Trigger
END
$

#DROP TRIGGER trg_delete_pac;
