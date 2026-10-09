CREATE TABLE aeronaves (
 id serial PRIMARY KEY, 
 modelo varchar (100) NOT NULL,
 codigo_cauda varchar unique not null,
 capacidade INT
 )

CREATE TABLE pilotos id serial
     id serial primary key,
	 nome varchar(150) not null unique,
	 codigo_anac TIMESTAMP DEFAULT CURRENT_TIMESTAMP
	 horas_voo HOUR NOT NULL


 CREATE TABLE voos (
 id serial PRIMARY KEY, 
 aeronave_id varchar (100) NOT NULL,
 piloto_id INT NOT NULL,
 numero_voo varchar(100) NOT NULL,
 origem INT NOT NULL,
 destino INT NOT NULL,
 horas_de_voo VARCHAR (100) NOT NULL
 )
CREATE TABLE passageiros (
id serial PRIMARY KEY,
nome varchar(100) NOT NULL,
cpf varchar(100) NOT NULL,
email varchar(150) NOT NULL UNIQUE

 )

 CREATE codigo_cauda
id serial PRIMARY KEY(
capacidade (100) NOT NULL,
modelo (100) NOT NULL,
horas_voo (24) NOT NULL UNIQUE,
)

 CREATE TABLE passagens (
id serial PRIMARY KEY,
voo_id varchar(100) NOT NULL,
passageiro_id varchar(100) NOT NULL,
classe varchar(100) NOT NULL,
assento varchar(100) NOT NULL,
valor varchar(150) NOT NULL UNIQUE
status VARCHAR(20) DEFAULT 'Economica' CHECK (status IN ('Economica', 'Executiva')),
CONSTRAINT voos_id
  FOREIGN KEY voos(id)
  REFERENCES pacientes(id)
  );
