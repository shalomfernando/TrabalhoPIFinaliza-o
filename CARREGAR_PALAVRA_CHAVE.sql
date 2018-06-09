 
USE chat ;

select  max(ID_Atendimento) , max(ID_conversa )  from atendimento  join conversa ;

select * from Atendente;
SELECT ID_Atendimento FROM atendimento ORDER BY ID_Atendimento  DESC LIMIT 1;
SELECT ID_conversa FROM conversa ORDER BY ID_conversa  DESC LIMIT 1;
select username,ID_Atendimento,cliente.Nome_Cliente ,conversa.Pergunta,conversa.respostas from cliente 
join atendimento on cliente.ID_Cliente = atendimento.ID_Cliente
join atendente on atendente.idAtendente = atendimento.ID_Atendente
join atendimento_conversa on atendimento_conversa.idatendimento_ac = atendimento.ID_Atendimento
join conversa on conversa.ID_conversa= atendimento_conversa.IDconversa_ac
join usuario
order by cliente.Nome_Cliente desc limit 1;  




-- tab PalavraChave --

INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(1,'civil');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(2,'fisica');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(3,'juridica');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(4,'cpf');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(5,'titulo');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(6,'documento');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(7,'feriados');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(8,'horarios');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(9,'matricula');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(10,'imovel');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(11,'outras');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(12,'empresa');

select  r.id_respostas, r.respostas from respostas r join respostapalavrachave rp on (r.id_respostas = rp.ID_Respostas) where rp.ID_PalavraChave ;
SELECT *FROM pALAVRAcHAVE;

-- Tab Respotas--

INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (1,'Para validacao de titulo e documento é necessario a certidao de nascimento');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (2,'para retirar a segunda via da documento, é necessario comprovate de residencia e certidao de nacimento');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (3,'para a realizacao de registro civil é necessario a certidão');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (4,'para a realizacao de registro pessoa fisica é necessario a certidao ');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (5,'para a realizacao de registro pessoa juridica  é necessario a alguns dcm');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (6,'para a realizacao de registro imovel é necessario os dcm do fiador e do imovel');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (7,'de segunda a sexta 10:00 as 18:00');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (8,'para criacao de cpf é necessario ter acima de 12 anos e tambem a certidao ');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (9,'vamos te passar para um atendente');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (10,'para segunda via do cpf em casos de perda e desgaste, é necessario o rg');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (11,'para criacao do cnpj, é necessario o rg do proprietario e o nome da empresa');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (12,'nao funciona em feriados');
select *from Respostas;
-- Tab RespotaAtendimento  --



--  RespostaPalavraChave  ---

INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,3,1);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,2,1);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,1);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,4,2);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,2,2);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,2);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,5,3);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,6,3);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,3,3);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,3);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,2,4);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,8,4);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,10,4);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,4);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,1,5);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,5);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,1,6);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,2,6);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,6);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,7,7);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,12,7);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,7);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,7,8);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,7,12);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,12);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,9);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,11,10);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,6,10);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,10);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,6,12);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,11,12);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,12);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(not null,8,12);

select  p.id_palavrachave, r.Respostas from palavrachave p join respostapalavrachave rp  
on rp.ID_PalavraChave = p.ID_PalavraChave join respostas r on rp.ID_Respostas = r.ID_Respostas;
use chat;
select r.ID_Respostas, r.respostas from respostas r join respostapalavrachave rp on (r.ID_Respostas = rp.ID_Respostas) where rp.ID_PalavraChave in (1);

--  PerguntaPalavraChave  ---

/*
-- Tab Clinte --
INSERT INTO Atendente (idAtendente,Nome_Atendente,Email_Atendente,CPF_Atendente, RG_Atendente,Telefone_Atendente,Status_Atendente,Senha_Atendente) values(1,'Bot','Bot@bot.com',00000000,98745612332,'11216594873','Feliz','root');
INSERT INTO Atendente (idAtendente,Nome_Atendente,Email_Atendente,CPF_Atendente, RG_Atendente,Telefone_Atendente,Status_Atendente,Senha_Atendente) values(2,'Marcos','marcinho@gcm.com',69547895143,36495871235,'1126495786','Bem','Marcos2010');
INSERT INTO Atendente (idAtendente,Nome_Atendente,Email_Atendente,CPF_Atendente, RG_Atendente,Telefone_Atendente,Status_Atendente,Senha_Atendente) values(3,'Henrique Silva','henrique@gcm.com',96584521678,78542165487,'365498765','Feliz','silva2010');
INSERT INTO Atendente (idAtendente,Nome_Atendente,Email_Atendente,CPF_Atendente, RG_Atendente,Telefone_Atendente,Status_Atendente,Senha_Atendente) values(4,'Lucas Lucco','lucas@gcm.com',13264987531,23564987564,'11234659875','Feliz','lucas2010');
INSERT INTO Atendente (idAtendente,Nome_Atendente,Email_Atendente,CPF_Atendente, RG_Atendente,Telefone_Atendente,Status_Atendente,Senha_Atendente) values(5,'João Pedro','pedro@gcm.com',26459765431,26459786453,'1123468573','Feliz','pedro2010');
INSERT INTO Atendente (idAtendente,Nome_Atendente,Email_Atendente,CPF_Atendente, RG_Atendente,Telefone_Atendente,Status_Atendente,Senha_Atendente) values(6,'Luan Lobato','luano@gcm.com',8456213469,94568713264,'11235649876','Feliz','luan2010');

INSERT INTO Cliente (ID_Cliente,Nome_Cliente, Email_Cliente) VALUES (1,'Jose Antonio','jose@gcm.com');
select * from Cliente;
--  Tab Atendimento --

select*from atendimento;


-- Tab Conversa --

insert into conversa(pergunta,respostas  ) values('ola qual o civil','civil civil');
select* from conversa;


-- Atendimento_conversa --
insert into Atendimento_conversa (idatendimento_ac) values(2);

select* from atendimento_conversa;

select cliente.Nome_Cliente,atendimento.Status_Atendimento,atendente.Nome_Atendente,conversa.Pergunta,conversa.respostas from cliente 
join atendimento on cliente.ID_Cliente = atendimento.ID_Cliente
join atendente on atendente.idAtendente = atendimento.ID_Atendente
join atendimento_conversa on atendimento_conversa.idatendimento_ac = atendimento.ID_Atendimento
join conversa on conversa.ID_conversa= atendimento_conversa.IDconversa_ac;  

select cliente.Nome_Cliente, atendente.Status_Atendente from cliente join atendente
on cliente.ID_Cliente = atendente.idAtendente;
select atendimento.id_atendimento, cliente.Nome_Cliente.id_cliente, respostas.Respostas from atendente join cliente join respostas; 

select cliente.Nome_Cliente, cliente.ID_Cliente, atendimento.Status_Atendimento from cliente join atendimento
on cliente.ID_Cliente = atendimento.ID_Cliente;

select * from cliente c join atendimento a 
on c.ID_Cliente = a.ID_Cliente
join atendente t
on a.ID_Atendente = t.idAtendente;
select *from respostas join palavrachave
on respostas.ID_Respostas = palavrachave.ID_PalavraChave;

select cliente.ID_Cliente,cliente.Nome_Cliente,atendimento.ID_Atendimento,atendimento.Status_Atendimento,pergunta.Pergunta from cliente join pergunta
on cliente.ID_Cliente = pergunta.ID_Pergunta
join atendimento  on atendimento.ID_Cliente=cliente.ID_Cliente;
/*
select  cliente.ID_Cliente,cliente.Nome_Cliente,atendimento.ID_Atendimento,atendimento.Status_Atendimento, atendente.Nome_Atendente from cliente join atendimento
on cliente.ID_Cliente = atendimento.ID_Cliente join atendente 
on atendente.idAtendente = atendimento.ID_Atendente;

select * from pergunta join atendimento
on pergunta.ID_Pergunta = atendimento.Pergunta_ID_Pergunta;
 
 select cliente.ID_Cliente, atendimento.Status_Atendimento, respostas.Respostas  from cliente join atendimento
 on cliente.ID_Cliente = atendimento.ID_Cliente join respostas 
 on   atendimento.Pergunta_ID_Pergunta = respostas.ID_Respostas;
 
 select * from atendimento join pergunta
 on atendimento.Pergunta_ID_Pergunta = pergunta.ID_Pergunta;
 
 select cliente.nome_cliente, pergunta.pergunta from cliente join atendimento  on cliente.id_cliente = atendimento.id_cliente join pergunta
 on pergunta.id_atendimento = atendimento.id_atendimento ;
 
*/
 