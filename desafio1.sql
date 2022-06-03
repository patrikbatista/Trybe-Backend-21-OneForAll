DROP DATABASE IF EXISTS SpotifyClone ;

CREATE DATABASE SpotifyClone ;

CREATE TABLE SpotifyClone.planos (
  plano_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  plano VARCHAR(45) NOT NULL,
  preco DECIMAL(6,2) NOT NULL,
  PRIMARY KEY (plano_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.usuarios (
  usuario_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  idade SMALLINT UNSIGNED NOT NULL,
  inscricao DATE NOT NULL,
  plano_id SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (usuario_id),
  FOREIGN KEY (plano_id) REFERENCES SpotifyClone.planos (plano_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.artistas (
  artista_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artista VARCHAR(40) NOT NULL,
  PRIMARY KEY (artista_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.albuns (
  album_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  artista_id INT UNSIGNED NOT NULL,
  album VARCHAR(45) NOT NULL,
  lancamento YEAR NOT NULL,
  PRIMARY KEY (album_id),
  FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artistas (artista_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.musicas (
  musica_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  musica VARCHAR(50) NOT NULL,
  duracao SMALLINT NOT NULL,
  album_id SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (musica_id),
  FOREIGN KEY (album_id) REFERENCES SpotifyClone.albuns (album_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.seguidores (
  usuario_id INT UNSIGNED NOT NULL,
  artista_id INT UNSIGNED NOT NULL,
PRIMARY KEY (usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuarios (usuario_id),
FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artistas (artista_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.repro (
  usuario_id INT UNSIGNED NOT NULL,
  musica_id INT UNSIGNED NOT NULL,
  reproducao DATETIME NOT NULL,
PRIMARY KEY (usuario_id, musica_id),
FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuarios (usuario_id),
FOREIGN KEY (musica_id)  REFERENCES SpotifyClone.musicas (musica_id)
) ENGINE = InnoDB;

INSERT INTO SpotifyClone.planos (plano_id, plano, preco)
  VALUES
  (1, "familiar", 7.99),
  (2, "gratuito", 0.00),
  (3, "pessoal", 6.99),
  (4, "universitário", 5.99);

INSERT INTO SpotifyClone.usuarios (usuario_id, nome, idade, inscricao, plano_id)
  VALUES
  (1, "Thati", 23, "2019-10-20", 2),
  (2, "Cintia", 35, "2017-12-30", 1),
  (3, "Bill", 20, "2019-06-05", 4),
  (4, "Roger", 45, "2020-05-13", 3),
  (5, "Norman", 58, "2017-02-17", 3),
  (6, "Patrick", 33, "2017-01-06", 1),
  (7, "Vivian", 26, "2018-01-05", 4),
  (8, "Carol", 19, "2018-02-14", 4),
  (9, "Angelina", 42, "2018-04-29", 1),
  (10, "Paul", 46, "2017-01-17", 1);

INSERT INTO SpotifyClone.artistas (artista_id, artista)
  VALUES
  (1, "Fog"),
  (2, "Freedie Shannon"),
  (3, "Lance Day"),
  (4, "Peter Strong"),
  (5, "Tyler Isle"),
  (6, "Walter Phoenix");

INSERT INTO SpotifyClone.albuns (album_id, artista_id, album, lancamento)
  VALUES
  (1, 1, "Apparatus", 2015),
  (2, 5, "Cabinet of fools", 2012),
  (3, 5, "Chained Down", 2007),
  (4, 6, "Envious", 1990),
  (5, 6, "Exuberant", 1993),
  (6, 4, "Hallowed Steam", 1995),
  (7, 3, "Incandescent", 1998),
  (8, 2, "Library of liberty", 2003),
  (9, 5, "No guarantees", 2015),
  (10, 2, "Temporary Culture", 2001);

INSERT INTO SpotifyClone.musicas (musica_id, musica, duracao, album_id)
  VALUES
  (1, "Baby", 136, 1),
  (2, "Honey", 79, 1),
  (3, "Wouldn't It Be Nice", 213, 1),
  (4, "You Cheated On Me", 95, 1),
  (5, "You Make Me Feel So..", 83, 1),
  (6, "He Heard You're Bad For Me", 154, 2),
  (7, "He Hopes We Can't Stay", 210, 2),
  (8, "I Know I Know", 117, 2),
  (9, "She Thinks I Won't Stay Tonight", 166, 2),
  (10, "Finding My Traditions", 179, 3),
  (11, "Hard And Time", 135, 3),
  (12, "Honey, I'm A Lone Wolf", 150, 3),
  (13, "Walking And Man", 229, 3),
  (14, "Dance With Her Own", 116, 4),
  (15, "Reflections Of Magic", 163, 4),
  (16, "Soul For Us", 200, 4),
  (17, "Time Fireworks", 152, 5),
  (18, "Troubles Of My Inner Fire", 203, 5),
  (19, "Honey, So Do I", 207, 6),
  (20, "Magic Circus", 105, 6),
  (21, "She Knows", 244, 6),
  (22, "Sweetie, Let's Go Wild", 139, 6),
  (23, "Celebration Of More", 146, 7),
  (24, "Diamond Power", 241, 7),
  (25, "Fantasy For Me", 100, 7),
  (26, "Home Forever", 231, 7),
  (27, "Let's Be Silly", 132, 7),
  (28, "Rock His Everything", 223, 7),
  (29, "History Of My Roses", 222, 8),
  (30, "Need Of The Evening", 190, 8),
  (31, "Walking And Game", 123, 8),
  (32, "Without My Love", 111, 8),
  (33, "Young And Father", 197, 8),
  (34, "He's Trouble", 138, 9),
  (35, "He's Walking Away", 159, 9),
  (36, "I Heard I Want To Bo Alone", 120, 9),
  (37, "I Ride Alone", 151, 9),
  (38, "Thang Of Thunder", 240, 10),
  (39, "Without My Streets", 176, 10),
  (40, "Words Of Her Life", 185, 10);

INSERT INTO SpotifyClone.seguidores (usuario_id, artista_id)
  VALUES
  (1, 6),
  (1, 2),
  (1, 3),
  (2, 6),
  (2, 3),
  (3, 4),
  (3, 6),
  (4, 2),
  (5, 5),
  (5, 1),
  (6, 1),
  (6, 3),
  (6, 6),
  (7, 4),
  (7, 5),
  (8, 6),
  (8, 5),
  (9, 1),
  (9, 2),
  (9, 3),
  (10, 4),
  (10, 1);

INSERT INTO SpotifyClone.repro (usuario_id, musica_id, reproducao)
  VALUES
  (9, 40, "2018-12-07 22:48:52"),
  (9, 21, "2020-04-01 03:36:00"),
  (9, 22, "2021-03-14 06:14:26"),
  (9, 38, "2021-05-24 17:23:45"),
  (3, 11, "2020-07-30 10:00:00"),
  (3, 20, "2020-11-13 16:55:13"),
  (3, 14, "2020-12-05 18:38:30"),
  (8, 1, "2018-03-21 16:56:40"),
  (8, 35, "2019-05-25 08:14:03"),
  (8, 5, "2020-10-18 13:38:05"),
  (8, 34, "2021-08-15 21:37:09"),
  (2, 36, "2020-01-02 07:40:33"),
  (2, 10, "2020-05-16 06:16:22"),
  (2, 1, "2020-09-21 13:14:46"),
  (2, 32, "2020-10-09 12:27:48"),
  (5, 28, "2017-02-24 21:14:22"),
  (5, 19, "2020-07-03 19:33:28"),
  (5, 24, "2020-08-06 15:23:43"),
  (5, 16, "2020-11-10 13:52:27"),
  (6, 6, "2017-01-24 00:31:17"),
  (6, 7, "2017-10-12 12:35:20"),
  (6, 31, "2018-05-29 14:56:41"),
  (6, 3, "2019-02-07 20:33:48"),
  (10, 29, "2017-02-06 08:21:34"),
  (10, 28, "2017-07-27 05:24:49"),
  (10, 32, "2017-12-04 05:33:43"),
  (10, 26, "2017-12-25 01:03:57"),
  (4, 12, "2021-01-09 01:44:33"),
  (4, 37, "2021-07-10 15:20:30"),
  (4, 15, "2021-08-15 17:10:10"),
  (1, 2, "2020-02-28 10:45:55"),
  (1, 33, "2020-03-06 11:22:33"),
  (1, 13, "2020-05-02 05:30:35"),
  (1, 24, "2020-08-05 08:05:17"),
  (1, 27, "2020-09-14 16:32:22"),
  (7, 23, "2018-01-16 18:40:43"),
  (7, 17, "2018-05-09 22:30:49"),
  (7, 18, "2020-07-27 12:52:58");
