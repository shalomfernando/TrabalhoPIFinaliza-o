
drop database if  exists chat;
-- -----------------------------------------------------
CREATE database IF NOT EXISTS chat;
USE chat ;



CREATE TABLE usuario (
username VARCHAR(100) NOT NULL,
password VARCHAR(100) NOT NULL,
PRIMARY KEY (username))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

 insert  usuario (username,password) values('sha@sha','1234');
 select * from usuario;
-- -----------------------------------------------------
-- Table `mydb`.`Atemdente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Atendente (
  idAtendente 			INT NOT NULL AUTO_INCREMENT,
  Nome_Atendente 		VARCHAR(50)  NULL,
  Email_Atendente 		VARCHAR(45) NOT NULL,
  CPF_Atendente 		CHAR(11) NOT NULL,
  RG_Atendente 			CHAR(11) NOT NULL,
  Telefone_Atendente 	VARCHAR(45) NOT NULL,
  Status_Atendente	 	VARCHAR(45) NOT NULL,
  Senha_Atendente 		VARCHAR(45) NOT NULL,
  PRIMARY KEY (idAtendente));

-- -----------------------------------------------------
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Cliente (
  ID_Cliente			 INT NOT NULL AUTO_INCREMENT ,
  Nome_Cliente			 VARCHAR(100)  NULL,
  Email_Cliente			 VARCHAR(45)  NULL,
  PRIMARY KEY (ID_Cliente));

-- -----------------------------------------------------
-- Table `mydb`.`Atendimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Atendimento (
  ID_Atendimento 			INT NOT NULL auto_increment ,
  Status_Atendimento 		VARCHAR(100) NOT NULL,
  ID_Cliente 				INT NOT NULL ,
  ID_Atendente 				INT NOT NULL ,
  dt_inicio					date not null,
  dt_fim					date not null,
  PRIMARY KEY (ID_Atendimento),
  INDEX fk_Atendimento_Cliente_idx (ID_Cliente ASC),
  INDEX fk_Atendimento_Atendente1_idx (ID_Atendente ASC),
  CONSTRAINT fk_Atendimento_Atendente1
    FOREIGN KEY (ID_Atendente)  REFERENCES atendente (idAtendente),
  CONSTRAINT fk_Atendimento_Cliente
    FOREIGN KEY (ID_Cliente)  REFERENCES cliente (ID_Cliente)
);

-- -----------------------------------------------------
-- Table `mydb`.`Pergunta`



-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Conversa (
  ID_conversa 				INT NOT NULL AUTO_INCREMENT,
  Pergunta 					VARCHAR(1000) 	NOT NULL,
  respostas 				varchar (1000)    not     null ,
  PRIMARY KEY (ID_conversa)
    );
    
    
create table if not exists Atendimento_conversa(
idatendimento_ac 		INT NOT NULL ,
IDconversa_ac  		INT NOT NULL auto_increment,
PRIMARY KEY (idatendimento_ac, idconversa_ac),
CONSTRAINT fk_atendimento_conversa_atendimento1 FOREIGN KEY (idatendimento_ac)  REFERENCES atendimento (id_atendimento),
CONSTRAINT fk_atendimento_conversa_conversa1 FOREIGN KEY (idconversa_ac) REFERENCES conversa (id_conversa)
);


-- -----------------------------------------------------
-- Table `mydb`.`PalavraChave`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS PalavraChave (
  ID_PalavraChave 			INT NOT NULL AUTO_INCREMENT,
  PalavraChave 				VARCHAR(100) NOT NULL,
  PRIMARY KEY (ID_PalavraChave));


-- -----------------------------------------------------
-- Table `mydb`.`Respotas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Respostas (
  ID_Respostas			INT NOT NULL AUTO_INCREMENT,
  Respostas				VARCHAR(1000) NOT NULL,
  PRIMARY KEY (ID_Respostas));


-- -----------------------------------------------------
-- Table `mydb`.`RespotaAtendimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS RespostaAtendimento (
  ID_Respostas 				INT NOT NULL AUTO_INCREMENT,
   id_atendimento			int not null,
   FOREIGN KEY	(ID_Respostas)    REFERENCES Respostas (ID_Respostas),
   foreign key (id_atendimento)  references atendimento (id_atendimento)

);


-- -----------------------------------------------------
-- Table `mydb`.`RespostaPalavraChave`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS RespostaPalavraChave (
  pontuacao_Resposta		 INT  NULL ,
  ID_Respostas				 INT NOT NULL,
  ID_PalavraChave			 INT NOT NULL,
  INDEX fk_RespostaPalavraChave_PalavraChave1_idx (ID_PalavraChave ASC),
  CONSTRAINT fk_RespostaPalavraChave_Respostas1
	FOREIGN KEY (ID_Respostas)
    REFERENCES Respostas (ID_Respostas),
  CONSTRAINT fk_RespostaPalavraChave_PalavraChave1
    FOREIGN KEY (ID_PalavraChave)
    REFERENCES PalavraChave (ID_PalavraChave)
);


-- -----------------------------------------------------
-- Table `mydb`.`PerguntaPalavraChave`
-- -----------------------------------------------------

create table tentativas
(
  id_tentativa       int auto_increment
  primary key,
  primeira_tentativa int null,
  segunda_tentativa  int null,
  terceira_tentativa int null,
  atendimento_humano int null
);

select * from Cliente;

select * from atendimento;

