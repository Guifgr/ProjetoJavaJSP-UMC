create database db_produto;

create table produtos (
  codigoDeBarras numeric(13) primary key,
  descricao varchar(255),
  preco numeric(10,2),
  marca varchar(255),
  fornecedor varchar(255)
);