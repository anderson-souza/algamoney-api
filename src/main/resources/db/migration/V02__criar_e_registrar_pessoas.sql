CREATE TABLE IF NOT EXISTS pessoas (
	codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(200) NOT NULL,
	logradouro VARCHAR(100),
	numero varchar(50),
	bairro varchar(100),
	cep varchar(10),
	complemento varchar(100),
	cidade varchar(100),
	estado varchar(100),
	ativo varchar(5) NOT NULL
) ENGINE=InnoDB default charset=utf8;


	
	