
ALTER TABLE Paciente --Voy a modificar tabla paciente
ADD FOREIGN KEY (idPais) REFERENCES Pais(idPais) --Agregar fk campo-tabla-campopk

ALTER TABLE HistoriaPaciente 
ADD FOREIGN KEY (idPaciente) REFERENCES Paciente(idPaciente)