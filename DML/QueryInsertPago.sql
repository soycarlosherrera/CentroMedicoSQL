
SELECT * FROM Concepto

SELECT * FROM Pago

SELECT * FROM PagoPaciente

SELECT * FROM Turno

INSERT INTO Concepto VALUES('Laboratorio')
INSERT INTO Concepto VALUES('Radiografia')

INSERT INTO Pago (concepto,fecha,monto,estado,observacion) VALUES('1',' 2019-02-15','4500','0','Pago pendiente')
INSERT INTO Pago (concepto,fecha,monto,estado,observacion) VALUES('2',' 2019-05-20','6800','0','Pago pendiente')
INSERT INTO Pago (concepto,fecha,monto,estado,observacion) VALUES('1',' 2019-09-27','5600','0','Pago pendiente')

INSERT INTO PagoPaciente (idPago,idPaciente,idTurno) VALUES('1','1','3')
INSERT INTO PagoPaciente (idPago,idPaciente,idTurno) VALUES('2','2','3')
INSERT INTO PagoPaciente (idPago,idPaciente,idTurno) VALUES('3','3','3')

