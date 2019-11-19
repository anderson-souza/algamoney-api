CREATE TABLE IF NOT EXISTS usuario(
	codigo BIGINT(20) primary key,
	nome varchar(50) not null,
	email varchar(50) not null,
	senha varchar(150) not null
) ENGINE=InnoDB DEFAULT charset=utf8;

CREATE TABLE IF NOT EXISTS permissao(
	codigo BIGINT(20) primary key,
	descricao varchar(50) not null
) ENGINE=InnoDB DEFAULT charset=utf8;

CREATE TABLE IF NOT EXISTS usuario_permissao (
	codigo_usuario bigint(20) not null,
	codigo_permissao bigint(20) not null,
	primary key (codigo_usuario, codigo_permissao),
	foreign key (codigo_usuario) references usuario(codigo),
	foreign key (codigo_permissao) references permissao(codigo)
) ENGINE=InnoDB DEFAULT charset=utf8;

insert into usuario (codigo, nome, email, senha) values (1, 'Administrador', 'admin@algamoney.com', '$2a$10$6/hipYo4supebn/1KvE8tuGaaEnrDccqwRZkoOYVN0P0i0/Y.prWS');
insert into usuario (codigo, nome, email, senha) values (2, 'Maria Silva', 'maria@algamoney.com', '$2a$10$o8s9B/pCxlNqXdUu0iFOV.S4pnJUa03Gmb./dYNRmweVry/Bs4Zgm');

insert into permissao (codigo, descricao) values (1, 'ROLE_CADASTRAR_CATEGORIA');
insert into permissao (codigo, descricao) values (2, 'ROLE_PESQUISAR_CATEGORIA');

insert into permissao (codigo, descricao) values (3, 'ROLE_CADASTRAR_PESSOA');
insert into permissao (codigo, descricao) values (4, 'ROLE_REMOVER_PESSOA');
insert into permissao (codigo, descricao) values (5, 'ROLE_PESQUISAR_PESSOA');

insert into permissao (codigo, descricao) values (6, 'ROLE_CADASTRAR_LANCAMENTO');
insert into permissao (codigo, descricao) values (7, 'ROLE_REMOVER_LANCAMENTO');
insert into permissao (codigo, descricao) values (8, 'ROLE_PESQUISAR_LANCAMENTO');

insert into usuario_permissao (codigo_usuario, codigo_permissao) values (1, 1);
insert into usuario_permissao (codigo_usuario, codigo_permissao) values (1, 2);
insert into usuario_permissao (codigo_usuario, codigo_permissao) values (1, 3);
insert into usuario_permissao (codigo_usuario, codigo_permissao) values (1, 4);
insert into usuario_permissao (codigo_usuario, codigo_permissao) values (1, 5);
insert into usuario_permissao (codigo_usuario, codigo_permissao) values (1, 6);
insert into usuario_permissao (codigo_usuario, codigo_permissao) values (1, 7);
insert into usuario_permissao (codigo_usuario, codigo_permissao) values (1, 8);

insert into usuario_permissao (codigo_usuario, codigo_permissao) values (2, 2);
insert into usuario_permissao (codigo_usuario, codigo_permissao) values (2, 5);
insert into usuario_permissao (codigo_usuario, codigo_permissao) values (2, 8);