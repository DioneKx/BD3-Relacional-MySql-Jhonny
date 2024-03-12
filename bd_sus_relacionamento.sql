#ARQUIVO DE RELACIONAMENTO ENTRE AS TABELAS

USE bd_sus;

ALTER TABLE tbl_medico ADD CONSTRAINT tbl_medico_id_esp_fk 
FOREIGN KEY (id_esp) REFERENCES tbl_especialidade (id_esp);

ALTER TABLE tbl_insumo ADD CONSTRAINT tbl_insumo_id_pac_fk 
FOREIGN KEY (id_pac) REFERENCES tbl_paciente (id_pac);

ALTER TABLE tbl_sala ADD CONSTRAINT tbl_sala_id_esp_fk 
FOREIGN KEY (id_esp) REFERENCES tbl_especialidade (id_esp);

ALTER TABLE tbl_agenda ADD CONSTRAINT tbl_agenda_id_pac_fk 
FOREIGN KEY (id_pac) REFERENCES tbl_paciente (id_pac);
    
ALTER TABLE tbl_agenda ADD CONSTRAINT tbl_agenda_id_sala_fk 
FOREIGN KEY (id_sala) REFERENCES tbl_sala (id_sala);
    
ALTER TABLE tbl_agenda ADD CONSTRAINT tbl_agenda_id_med_fk 
FOREIGN KEY (id_med) REFERENCES tbl_medico (id_med);