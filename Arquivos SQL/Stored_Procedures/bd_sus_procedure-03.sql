#ARQUIVO DE STORED PROCEDURE (FUNÇÃO) DO bd_sus

#PROCEDURE abaixo está com parametro's de saída definido(s)

DELIMITER $
	
    CREATE PROCEDURE cont_pac(OUT total_pac INT(10))
	BEGIN
		
        SELECT COUNT(a.id_pac) INTO total_pac
        FROM tbl_paciente AS a;
        #Utiliza de INTO para transferir os dados recebidos para o parametro
    END
$

CALL cont_pac(@total_pac); #O "@" está definindo uma var, que receberá o valor transferido anteriormente

SELECT @total_pac AS num_med; #Nesse contexto, o "@" está chamando a var já criada anteriormente e nos apresentando seu valor