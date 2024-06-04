
CREATE TABLE Pago(
	idPago int IDENTITY(1,1) NOT NULL PRIMARY KEY,  --Lo defino como autoincrementable, de a 1, comenzando en 1 y lo establezco como clave primaria
	concepto tinyint NOT NULL,
	fecha datetime NOT NULL,
	monto money NOT NULL,
	estado tinyint,
	observacion varchar(1000)
)