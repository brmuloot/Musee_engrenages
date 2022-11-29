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

CREATE TABLE engrenage (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  advantages TEXT NOT NULL,
  drowback TEXT NOT NULL,
  img TEXT NOT NULL,
  auteur TEXT NOT NULL,
  descreption TEXT NOT NULL
  );

  INSERT INTO engrenage (id, name, advantages, drowback, img,auteur,descreption) VALUES
(1, 'Les engrenages cylindriques à denture droite', 'Simple et économique', 'Bruyant','C:\Users\utilisateur\Documents\SIMPLONS\BRIEF\Musee_engrenages\flaskr\static\pignon_droit_avec_entrée_de_dent-1024x768.jpg','Kewser','La forme la plus élémentaire que il est possible de donner à un engrenage est une forme cylindrique à denture droite.' ),
(2,'Les engrenages cylindriques à denture hélicoïdale', 'Transmission plus souple et moins bruyante', 'Effort axial supplémentaire', 'C:\Users\utilisateur\Documents\SIMPLONS\BRIEF\Musee_engrenages\flaskr\static\engrenage_hélicoïdale_cannelée_long-768x1024.jpg','Kewser','Ils transmettent le mouvement entre deux arbres parallèles. L angle de inclinaison de la denture, le angle de hélice, est le même pour les deux roues, mais en sens inverse.' ),
(3,'Les engrenages coniques', 'Possibilité de choisir le sens de rotation de la roue menée', 'Solution moins économique', 'C:\Users\utilisateur\Documents\SIMPLONS\BRIEF\Musee_engrenages\flaskr\static\b074cca3f97f8b5d56083c3561aad95c.jpg','Kewser','Les engrenages coniques sont conçus pour transmettre un mouvement rotatif entre des arbres croisés.' ),
(4,'Les engrenages à roue et vis sans fin', 'Arbres quelconques', 'Parfois non réversible', 'C:\Users\utilisateur\Documents\SIMPLONS\BRIEF\Musee_engrenages\flaskr\static\roue_a_vis_en_cours_de-taillage-1024x768.jpg','Kewser','Un engrenage à roue et vis sans fin se compose de une vis sans fin et de une roue hélicoïdale.');