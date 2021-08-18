INSERT INTO tb_user (name, img_url, email, password) VALUES 
('User', 'https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'user@orion.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_user (name, img_url, email, password) VALUES 
('Admin', 'https://pulis-book.s3.sa-east-1.amazonaws.com/admin.png', 'admin@orion.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_USER');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);

INSERT INTO tb_course (name) VALUES ('Adm. Pública');
INSERT INTO tb_course (name) VALUES ('Administração');
INSERT INTO tb_course (name) VALUES ('Farmácia');
INSERT INTO tb_course (name) VALUES ('Publicidade & Marketing');
INSERT INTO tb_course (name) VALUES ('Economia');
INSERT INTO tb_course (name) VALUES ('Ciências Sociais');
INSERT INTO tb_course (name) VALUES ('Letras');

INSERT INTO tb_university (name) VALUES ('UNESP');
INSERT INTO tb_university (name) VALUES ('UNIARA');
INSERT INTO tb_university (name) VALUES ('IFSP');

INSERT INTO tb_republica (img_url, name, founded_in, active) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/fornalha.jpg', 'Fornalha', 2001, true);

INSERT INTO tb_republica (img_url, name, founded_in, active) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/limao.png', 'Limoeiro', 1993, true);

INSERT INTO tb_republica (img_url, name, founded_in, active) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/maloca.jpg', 'Saudosa Maloca', 2005, true);

INSERT INTO tb_republica (img_url, name, founded_in, active) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/pulis.jpg', 'Puleiro dos Anjos', 1991, true);

INSERT INTO tb_republica (img_url, name, founded_in, active) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/orgasmo.jpg', 'Orgasmograma', 1991, false);


INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorFornalha01', 'MoradorFornalha01', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorFornalha02', 'MoradorFornalha02', 1998, 2002, 3, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorFornalha03', 'MoradorFornalha03', 1998, 2002, 5, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorFornalha04', 'MoradorFornalha04', 1998, 2002, 3, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorFornalha05', 'MoradorFornalha05', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorFornalha06', 'MoradorFornalha06', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorFornalha07', 'MoradorFornalha07', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorFornalha08', 'MoradorFornalha08', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorFornalha09', 'MoradorFornalha09', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorFornalha10', 'MoradorFornalha10', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorFornalha11', 'MoradorFornalha11', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorFornalha12', 'MoradorFornalha12', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorFornalha13', 'MoradorFornalha13', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorFornalha14', 'MoradorFornalha14', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorFornalha15', 'MoradorFornalha15', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorFornalha16', 'MoradorFornalha16', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorFornalha17', 'MoradorFornalha17', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorFornalha18', 'MoradorFornalha18', 1998, 2002, 1, 1);

INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (1,1);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (2,1);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (3,1);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (4,1);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (5,1);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (6,1);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (7,1);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (8,1);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (9,1);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (10,1);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (11,1);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (12,1);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (13,1);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (14,1);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (15,1);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (16,1);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (17,1);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (18,1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorLimao01', 'MoradorLimao01', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorLimao02', 'MoradorLimao02', 1998, 2002, 3, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorLimao03', 'MoradorLimao03', 1998, 2002, 5, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorLimao04', 'MoradorLimao04', 1998, 2002, 3, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorLimao05', 'MoradorLimao05', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorLimao06', 'MoradorLimao06', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorLimao07', 'MoradorLimao07', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorLimao08', 'MoradorLimao08', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorLimao09', 'MoradorLimao09', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorLimao10', 'MoradorLimao10', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorLimao11', 'MoradorLimao11', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorLimao12', 'MoradorLimao12', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorLimao13', 'MoradorLimao13', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorLimao14', 'MoradorLimao14', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorLimao15', 'MoradorLimao15', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorLimao16', 'MoradorLimao16', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorLimao17', 'MoradorLimao17', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorLimao18', 'MoradorLimao18', 1998, 2002, 1, 1);

INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (19,2);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (20,2);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (21,2);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (22,2);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (23,2);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (24,2);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (25,2);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (26,2);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (27,2);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (28,2);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (29,2);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (30,2);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (31,2);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (32,2);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (33,2);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (34,2);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (35,2);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (36,2);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorMaloca01', 'MoradorMaloca01', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorMaloca02', 'MoradorMaloca02', 1998, 2002, 3, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorMaloca03', 'MoradorMaloca03', 1998, 2002, 5, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorMaloca04', 'MoradorMaloca04', 1998, 2002, 3, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorMaloca05', 'MoradorMaloca05', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorMaloca06', 'MoradorMaloca06', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorMaloca07', 'MoradorMaloca07', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorMaloca08', 'MoradorMaloca08', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorMaloca09', 'MoradorMaloca09', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorMaloca10', 'MoradorMaloca10', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorMaloca11', 'MoradorMaloca11', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorMaloca12', 'MoradorMaloca12', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorMaloca13', 'MoradorMaloca13', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorMaloca14', 'MoradorMaloca14', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorMaloca15', 'MoradorMaloca15', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorMaloca16', 'MoradorMaloca16', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorMaloca17', 'MoradorMaloca17', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorMaloca18', 'MoradorMaloca18', 1998, 2002, 1, 1);

INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (37,3);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (38,3);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (39,3);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (40,3);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (41,3);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (42,3);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (43,3);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (44,3);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (45,3);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (46,3);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (47,3);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (48,3);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (49,3);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (50,3);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (51,3);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (52,3);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (53,3);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (54,3);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorPulis01', 'MoradorPulis01', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorPulis02', 'MoradorPulis02', 1998, 2002, 3, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorPulis03', 'MoradorPulis03', 1998, 2002, 5, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorPulis04', 'MoradorPulis04', 1998, 2002, 3, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorPulis05', 'MoradorPulis05', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorPulis06', 'MoradorPulis06', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorPulis07', 'MoradorPulis07', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorPulis08', 'MoradorPulis08', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorPulis09', 'MoradorPulis09', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorPulis10', 'MoradorPulis10', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorPulis11', 'MoradorPulis11', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorPulis12', 'MoradorPulis12', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorPulis13', 'MoradorPulis13', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorPulis14', 'MoradorPulis14', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorPulis15', 'MoradorPulis15', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorPulis16', 'MoradorPulis16', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorPulis17', 'MoradorPulis17', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorPulis18', 'MoradorPulis18', 1998, 2002, 1, 1);

INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (55,4);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (56,4);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (57,4);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (58,4);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (59,4);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (60,4);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (61,4);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (62,4);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (63,4);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (64,4);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (65,4);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (66,4);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (67,4);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (68,4);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (69,4);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (70,4);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (71,4);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (72,4);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorOrgamograma01', 'MoradorOrgamograma01', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorOrgamograma02', 'MoradorOrgamograma02', 1998, 2002, 3, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorOrgamograma03', 'MoradorOrgamograma03', 1998, 2002, 5, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorOrgamograma04', 'MoradorOrgamograma04', 1998, 2002, 3, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorOrgamograma05', 'MoradorOrgamograma05', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorOrgamograma06', 'MoradorOrgamograma06', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorOrgamograma07', 'MoradorOrgamograma07', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorOrgamograma08', 'MoradorOrgamograma08', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorOrgamograma09', 'MoradorOrgamograma09', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorOrgamograma10', 'MoradorOrgamograma10', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorOrgamograma11', 'MoradorOrgamograma11', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorOrgamograma12', 'MoradorOrgamograma12', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorOrgamograma13', 'MoradorOrgamograma13', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorOrgamograma14', 'MoradorOrgamograma14', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorOrgamograma15', 'MoradorOrgamograma15', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorOrgamograma16', 'MoradorOrgamograma16', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorOrgamograma17', 'MoradorOrgamograma17', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'MoradorOrgamograma18', 'MoradorOrgamograma18', 1998, 2002, 1, 1);

INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (73,5);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (74,5);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (75,5);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (76,5);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (77,5);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (78,5);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (79,5);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (80,5);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (81,5);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (82,5);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (83,5);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (84,5);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (85,5);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (86,5);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (87,5);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (88,5);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (89,5);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (90,5);
