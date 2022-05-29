USE catalogoFilmesDB;



-- carga inicial usuário admin
INSERT INTO tb_usuario(nm_usuario, ds_email, ds_senha)
	 VALUES ('admin', 'admin@admin.com.br', '1234');




-- CASO DE USO 01(CSU01):: efetuar LOGIN
select id_usuario		id,
	   nm_usuario		nome,
       ds_email			email
  from tb_usuario
 where ds_email			='admin@admin.com.br'
   and ds_senha			='1234';




-- CASO DE USO 02(CSU02):: cadastrar novo filme
INSERT INTO tb_filme(id_usuario, nm_filme, ds_sinopse, vl_avaliacao, dt_lancamento, bt_disponivel, img_filme)
	 VALUES (1, 'Harry Potter e a Camara Secreta', 'Filme bem Tops', 8.2, '2012-02-11', true, '/storage/filmes/3929325.jpg');
     



-- CASO DE USO 03(CSU03):: alterar filme
UPDATE tb_filme
   SET nm_filme		 ='Harry Potter e a Pedra Filosofal',
	   ds_sinopse	 ='Filme Bem legal',
       vl_avaliacao  ='9.5',
       dt_lancamento ='2010-05-03',
       bt_disponivel =true,
       img_filme	 ='/storage/filme/dsadsad.jpg'
 WHERE id_filme		 =1;



-- CASO DE USO 04(CSU04):: remover filme
DELETE FROM tb_filme
	  WHERE id_filme =1;




-- CASO DE USO 05(CSU05):: consultar todos os filmes
SELECT id_filme			id,
	   nm_filme			nome,
       vl_avaliacao		avaliacao,
       ds_sinopse		sinopse,
       dt_lancamento	lancamento,
       bt_disponivel	disponivel
  FROM tb_filme;
  
  

-- CASO DE USO 06(CSU06):: consultar filmes por nome
SELECT id_filme			id,
	   nm_filme			nome,
       vl_avaliacao		avaliacao,
       dt_lancamento	lancamento,
       bt_disponivel	disponivel
  FROM tb_filme
 WHERE nm_filme			like'%a%';




-- CASO DE USO 07(CSU07):: consultar filmes por id
SELECT id_filme			Id,
	   nm_filme			Nome,
       vl_avaliacao		Avaliacao,
       ds_sinopse		Sinopse,
       dt_lancamento	Lancamento,
       bt_disponivel	Disponivel,
       img_filme 		capa
  FROM tb_filme
 WHERE id_filme			= 1;