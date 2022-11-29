DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS post;
DROP TABLE IF EXISTS engrenage;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE post (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  author_id INTEGER NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  advantage TEXT NOT NULL,
  drowback TEXT NOT NULL,
  img TEXT NOT NULL,
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  FOREIGN KEY (author_id) REFERENCES user (id)
);

INSERT INTO user (id, username, password) VALUES
(1,'Brice','1234'),
(2,'Kewser','9605');


INSERT INTO post (id, author_id, created, advantage, drowback,img,title,body) VALUES
(1,1,'2022-10-09 14:34:33', 'Simple et économique', 'Bruyant','pignon_droit_avec_entrée_de_dent-1024x768.jpg','Les engrenages cylindriques à denture droite','La forme la plus élémentaire que il est possible de donner à un engrenage est une forme cylindrique à denture droite.' ),
(2,2,'2022-10-09 14:34:32', 'Transmission plus souple et moins bruyante', 'Effort axial supplémentaire', 'helicoidale.jpg','Les engrenages cylindriques à denture hélicoïdale','Ils transmettent le mouvement entre deux arbres parallèles. L angle de inclinaison de la denture, le angle de hélice, est le même pour les deux roues, mais en sens inverse.' ),
(3,1,'2022-10-09 14:34:31', 'Possibilité de choisir le sens de rotation de la roue menée', 'Solution moins économique', 'b074cca3f97f8b5d56083c3561aad95c.jpg','Les engrenages coniques','Les engrenages coniques sont conçus pour transmettre un mouvement rotatif entre des arbres croisés.' ),
(4,2,'2022-10-09 14:34:30', 'Arbres quelconques', 'Parfois non réversible', 'roue_a_vis_en_cours_de-taillage-1024x768.jpg','Les engrenages à roue et vis sans fin','Un engrenage à roue et vis sans fin se compose de une vis sans fin et de une roue hélicoïdale.');
