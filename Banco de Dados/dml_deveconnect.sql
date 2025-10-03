--DML
USE db_deveconnect;


INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha , foto_perfil_url)
VALUES('Rafael Moura Barriento' , 'Polar' , 'mbarrientorafael@gemil.com' ,'1234' , 'www.http//imgrafael' );

SELECT * FROM tb_usuario;



INSERT INTO tb_publicacao(descricao ,imagem_url, data_publicacao , id_usuario)
VALUES('GTA VI' , 'ww.http//imgRocstar' , '2023/09/07' , 1);

SELECT * FROM tb_publicacao;



INSERT INTO tb_curtida(id_usuario,id_publicacao)
VALUES(1 , 1);

SELECT * FROM tb_curtida;


INSERT INTO tb_comentario(texto, data_comentario , id_usuario , id_publicacao)
VALUES('Bom dia' , '2025/10/04' , 1 , 1);

SELECT * FROM tb_comentario;



INSERT INTO tb_seguidor(id_usuario_seguir , id_usuario_seguidor)
VALUES(1 , 1);

SELECT * FROM tb_seguidor;