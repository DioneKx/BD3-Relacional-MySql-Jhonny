#ARQUIVO DE RELACIONAMENTO ENTRE AS TABELAS

use bd_sus;

ALTER TABLE tbl_medico ADD CONSTRAINT tbl_medico_id_esp_fk 
foreign key (id_esp) references tbl_especialidade (id_esp);

ALTER TABLE tbl_insumo ADD CONSTRAINT tbl_insumo_id_pac_fk 
foreign key (id_pac) references tbl_paciente (id_pac);

ALTER TABLE tbl_sala ADD CONSTRAINT tbl_sala_id_esp_fk 
foreign key (id_esp) references tbl_especialidade (id_esp);

ALTER TABLE tbl_agenda ADD CONSTRAINT tbl_agenda_id_pac_fk 
foreign key (id_pac) references tbl_paciente (id_pac);
    
ALTER TABLE tbl_agenda ADD CONSTRAINT tbl_agenda_id_sala_fk 
foreign key (id_sala) references tbl_sala (id_sala);
    
ALTER TABLE tbl_agenda ADD CONSTRAINT tbl_agenda_id_med_fk 
foreign key (id_med) references tbl_medico (id_med);