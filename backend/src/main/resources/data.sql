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
('https://pulis-book.s3.sa-east-1.amazonaws.com/orgasmo.jpg', 'Orgasmograma', 1991, false);

INSERT INTO tb_republica (img_url, name, founded_in, active) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/pnb.png', 'PNB', 1989, true);

INSERT INTO tb_republica (img_url, name, founded_in, active) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/pulis.jpg', 'Puleiro dos Anjos', 1991, true);


INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'Fornalha01', 'Fornalha01', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'Fornalha02', 'Fornalha02', 1998, 2002, 3, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'Fornalha03', 'Fornalha03', 1998, 2002, 5, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'Limão01', 'Limão01', 1998, 2002, 3, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'Limão02', 'Limão02', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'Limão03', 'Limão03', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'Maloca01', 'Maloca01', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'Maloca02', 'Maloca02', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'Maloca03', 'Maloca03', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'Orgasmograma01', 'Orgasmograma01', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'Orgasmograma02', 'Orgasmograma02', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'Orgasmograma03', 'Orgasmograma03', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'PNB01', 'PNB01', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'PNB02', 'PNB02', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'PNB03', 'PNB03', 1998, 2002, 1, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'Puleiro01', 'Puleiro01', 1998, 2002, 6, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'Puleiro02', 'Puleiro02', 1998, 2002, 2, 1);

INSERT INTO tb_resident (img_url, name, nickname, entry_year, outgoing_year, course_id, university_id) VALUES 
('https://pulis-book.s3.sa-east-1.amazonaws.com/user-padrao.png', 'Puleiro03', 'Puleiro03', 1998, 2002, 1, 1);

INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (1,1);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (2,1);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (3,1);

INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (4,2);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (5,2);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (6,2);

INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (7,3);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (8,3);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (9,3);

INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (10,4);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (11,4);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (12,4);

INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (13,5);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (14,5);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (15,5);

INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (16,6);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (17,6);
INSERT INTO tb_resident_republica (resident_id, republica_id) VALUES (18,6);

