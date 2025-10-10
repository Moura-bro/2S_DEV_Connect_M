--DML
USE db_deveconnect;


INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha , foto_perfil_url)
VALUES('Rafael Moura Barriento' , 'Polar' , 'mbarrientorafael@gemil.com' ,'1234' ,'www.http//imgrafael' );
--Novos registros
INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha , foto_perfil_url)
VALUES
('Felipe somera salgado', 'Salgado69','begfhjbfeh@gmail.com','3456' ,'www.http//imgrafael'),
('Felipe gomes de meneses', 'Felipe','begghjbfeh@gmail.com','5678' ,'www.http//imgfelipe'),
('Felipe torolho', 'Torolho','begfhjtteh@gmail.com','8908' ,'www.http//imgsaopaulo'),
('Arthur batista', 'ArthurYT-br','begfheefeh@gmail.com','68676' ,'www.http//imgbrasil'),
('Joao victor feitosa', 'Patrick','begfhjnneh@gmail.com','23456' ,'www.http//imgsaopaulo');

SELECT * FROM tb_usuario;





INSERT INTO tb_publicacao(descricao ,imagem_url, data_publicacao , id_usuario)
VALUES('GTA VI' , 'ww.http//imgRocstar' , '2023/09/07' , 1);

INSERT INTO tb_publicacao(descricao ,imagem_url, data_publicacao , id_usuario)
VALUES
('Pokmmo' , 'ww.http//imgNintendo' , '2025/08/07' , 4),
('Guerra' , 'ww.http//imgguerra' , '2026/08/07' , 7),
('Clash' , 'ww.http//imgSuper' , '2025/08/07' , 5);


SELECT * FROM tb_publicacao;



INSERT INTO tb_curtida(id_usuario,id_publicacao)
VALUES(1 , 1);

INSERT INTO tb_curtida(id_usuario,id_publicacao)
VALUES(4 , 2),
(5 , 3),
(8 , 4);


SELECT * FROM tb_curtida;


INSERT INTO tb_comentario(texto, data_comentario , id_usuario , id_publicacao)
VALUES('Bom dia' , '2025/10/04' , 1 , 1);

INSERT INTO tb_comentario(texto, data_comentario , id_usuario , id_publicacao)
VALUES('Finalmente' , '2022/10/04' , 8 , 4),
('kkkkk' , '2022/10/04' , 5 , 4),
('caramba' , '2026/11/04' , 7 , 1),
('kkkpdp' , '2023/01/04' , 4 , 2);


SELECT * FROM tb_comentario;



INSERT INTO tb_seguidor(id_usuario_seguir , id_usuario_seguidor)
VALUES
(1 , 8),
(4 , 6),
(6 , 7),
(5 , 1),
(7 , 8),
(1 , 4);

SELECT * FROM tb_seguidor;


