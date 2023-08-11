CREATE TABLE agropecuaria(
  nome_agro VARCHAR(20) NOT NULL,
  id_agro INT NOT NULL,
  PRIMARY KEY (id_agro)
  )
  
CREATE TABLE cliente(
  nome_cliente VARCHAR (50) NOT NULL,
  id_cliente INT NOT NULL,
  cep INT NOT NULL,
  n_casa INT NOT NULL,
  PRIMARY KEY (id_cliente)
  )
  
CREATE TABLE estoque(
  nome_produto VARCHAR(20) NOT NULL,
  preco VARCHAR (10) NOT NULL,
  id_produto INT NOT NULL,
  PRIMARY KEY (id_produto)
  )
  
CREATE TABLE pedido(
  id_pedido INT NOT NULL,
  id_produto INT NOT NULL,
  PRIMARY KEY (id_pedido),
  FOREIGN KEY (id_produto) REFERENCES estoque(id_produto)
  )
  
CREATE TABLE cliente_pedido(
  id_pedido INT NOT NULL,
  id_cliente INT NOT NULL,
  FOREIGN KEY (id_pedido) REFERENCES pedido (id_pedido),
  FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
  )
  
  INSERT INTO cliente(nome_cliente,id_cliente,cep,n_casa)
  VALUES ('carlos','72','79134628','123');
  INSERT INTO estoque(nome_produto, preco, id_produto)
  VALUES ('peça','10','456');
  INSERT INTO agropecuaria (nome_agro,id_agro)
  VALUES ('prado agro',' 01');
  INSERT INTO pedido (id_pedido, id_produto)
  VALUES ('1','456');
  INSERT INTO cliente_pedido(id_pedido, id_cliente)
  VALUES ('1','72');