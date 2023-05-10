insert into usuarios (nome, nick, email, senha)
values
("Usuario 1", "usario_1", "usuario1@gmail.com", "$2a$10$iy5kMmMeBUbHrHSx2wdWE.4opMeNaMyFOdhxBWs.sabCyH6xUzJ/W"),
("Usuario 2", "usario_2", "usuario2@gmail.com", "$2a$10$iy5kMmMeBUbHrHSx2wdWE.4opMeNaMyFOdhxBWs.sabCyH6xUzJ/W"),
("Usuario 3", "usario_3", "usuario3@gmail.com", "$2a$10$iy5kMmMeBUbHrHSx2wdWE.4opMeNaMyFOdhxBWs.sabCyH6xUzJ/W");

insert into seguidores (usuario_id, seguidor_id)
values
(1,2),
(3,1),
(1,3);

insert into publicacoes (titulo, conteudo, autor_id)
values
("Publi usu1", "Conteudo usu1", 1),
("Publi usu2", "Conteudo usu2", 2),
("Publi usu3", "Conteudo usu3", 3);