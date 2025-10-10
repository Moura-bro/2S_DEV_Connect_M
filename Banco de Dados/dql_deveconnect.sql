--DQL
USE db_deveconnect;

--USUARIOS 
SELECT * FROM tb_usuario;


--PUBLICACAO
SELECT * FROM tb_publicacao;


--CURTIDA
SELECT * FROM tb_curtida;


--COMENTARIO
SELECT * FROM tb_comentario;


--SEGUIDORES
SELECT * FROM tb_seguidor;



SELECT 
 U.nome_usuario AS 'Seguido',
 U.nome_usuario AS 'Seguir'
FROM tb_seguidor S
INNER JOIN  tb_usuario U ON S.id_usuario_seguidor = U.id
INNER JOIN tb_usuario ON U.id = S.id_usuario_seguir


--Exiba quantos seguidores possui um respectivo usuário
SELECT
U.nome_usuario,
COUNT (s.id_usuario_seguir)
FROM tb_seguidor S
INNER JOIN tb_usuario U ON U.id = S.id_usuario_seguidor
GROUP BY S.id_usuario_seguir, U.nome_usuario

--Exiba todas as publicações contendo a descrição, o caminho da imagem, o nome de usuário
SELECT 
  PUB.descricao,
  PUB.imagem_url,
  U.nome_usuario
FROM tb_publicacao PUB
INNER JOIN tb_usuario U ON U.id = PUB.id_usuario 

--Exiba todos os comentários com o nome e o texto de uma respectiva publicação
SELECT 
  CMT.texto,
  U.nome_usuario,
  PUB.descricao
FROM tb_comentario CMT
INNER JOIN tb_publicacao PUB ON PUB.id = CMT.id_publicacao
INNER JOIN tb_usuario U ON U.id = CMT.id_usuario

--Exiba a quantidade de curtidas de uma respectiva publicação.
SELECT
PUB.id,
COUNT (CTR.id_usuario)
FROM tb_curtida CTR
INNER JOIN tb_publicacao PUB  ON PUB.id = CTR.id_publicacao
GROUP BY CTR.id_usuario, PUB.id

--Exiba todos usuários que não chegaram a fazer publicações.
SELECT
u.nome_usuario
FROM 
tb_usuario u
LEFT JOIN tb_publicacao p ON u.id = p.id_usuario
WHERE p.id_usuario IS NULL;

--Exiba todos usuários que não chegaram a fazer reações.
SELECT
u.nome_usuario
FROM 
tb_usuario u
LEFT JOIN tb_curtida c ON u.id = c.id_usuario
WHERE c.id_usuario IS NULL;


DELETE FROM tb_curtida
WHERE id_usuario = 2 AND id_publicacao = 1;





