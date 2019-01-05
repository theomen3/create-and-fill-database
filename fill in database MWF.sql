INSERT INTO `users` (customerID, firstname, lastname, preposition, email, username, phonenumber, gender, birthdate, password, preferredgender)
VALUES  (1, 'Jurgen','Paapen', '', 'jurgen.paapen@student.avans.nl', 'jurgen.paapen', '0626682388', 'man',  '1982-09-08', '$2y$10$nYnkQxec2qqPklKb9Jb.W.c8HpIlZ1uW4DavyqYjj2mrnoo7Xrc4K', 'man'),
        (2, 'Stijn', 'Pijman', '', 'stijn.pijman@student.avans.nl', 'stijn.pijman', '0626682499', 'man',  '1992-11-18', '$2y$10$U9RV8lS4mOngnFK1QXGume7RW6pSjVRMK/Ay4Fm10kYxQAl868PYW','vrouw'),
        (3, 'Joost', 'Oomen', '', 'joost.oomen@student.avans.nl', 'joost.oomen', '0613382569', 'man',  '1970-03-01', '$2y$10$QwaNvl4snwOE3gJbx9T3V.QtVoF5cLt0fhksZ00rXILtx.A94EtRm', 'beide'),
        (4, 'Nick', 'Sluiter', '', 'nick.sluiter@student.avans.nl', 'nick.sluiter', '0612345678', 'man',  '1987-12-31', '$2y$10$7o2F9FCevL.IKUEnPUAfnOS6a1QJmpYXui6f6QSkQnqzmyTbKQXxa','man'),
        (5, 'Anna', 'Schultzer', '', 'anna.schultzer@gmail.com', 'anna.Schultzer', '0634512466', 'vrouw',  '1996-11-11', '$2y$10$ZBSDy/w/eRgAfWCuaDhXVuAxlqczbVn504iAgcXUVHdpcGZqmsul.', 'vrouw'),
        (6, 'Frank', 'Rassen', '', 'frank.rassen@hotmail.com', 'frank.rassen', '0625797532', 'man',  '1987-02-10', '$2y$10$mv0hiTABRcjTTAemAZ27r.1f4doBC31PrHt3gpfNKMJOQ1H2xUK8C','man'),
        (7, 'Monique', 'Beer', 'de', 'monique.debeer@outlook.com', 'monique.debeer', '0694276935', 'vrouw',  '1984-07-18', '$2y$10$HbCncyh3JQSjT/vfShncA.grfsTCl8ZroCc.9GyhpY8Hpg5QcoFEC','vrouw'),
        (8, 'Trudie', 'Vries', 'de', 'trudie.devries@home.com', 'trudie.devries', '0612349836', 'vrouw',  '1959-04-28', '$2y$10$jkpwwJylIzxrl3YDQKJzFeHBgvbs8H0y9gWAFnUj0qoV5VXea/kJy','vrouw');

INSERT INTO `interest` (customerID, boksen, fitness, hardlopen, tennis, squash, wandelen, wielrennen, zwemmen)
VALUES  (1, 1, 0, 0, 0, 0, 0, 0, 0),
        (2, 1, 0, 0, 0, 0, 0, 0, 0),
        (3, 0, 0, 1, 0, 0, 0, 1, 0),
        (4, 0, 0, 0, 0, 1, 0, 0, 0),
        (5, 0, 0, 1, 0, 0, 0, 0, 0),
        (6, 1, 0, 0, 0, 0, 0, 0, 0),
        (7, 0, 1, 0, 0, 0, 0, 0, 1),
        (8, 0, 0, 0, 0, 0, 1, 0, 0);

INSERT INTO `timeslot` (customerID, timeslot1, timeslot2, timeslot3, timeslot4, timeslot5, timeslot6, timeslot7, timeslot8, timeslot9, timeslot10, timeslot11, timeslot12, timeslot13, timeslot14, timeslot15, timeslot16, timeslot17, timeslot18, timeslot19, timeslot20, tiemslot21)                      
VALUES  (1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0);
        (2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        (3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        (4, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
        (5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        (6, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
        (7, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        (8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);

DROP VIEW IF EXISTS `koppel`;
CREATE VIEW koppel AS

SELECT * from users
JOIN interest ON users.customerID = interest.customerIDinterest
JOIN timeslot ON users.customerID = timeslot.customerIDtimeslot;


SELECT a.customerID, a.timeslot1, a.timeslot2, a.timeslot3, a.timeslot4, a.timeslot5, a.timeslot6, a.timeslot7, a.timeslot8, a.timeslot9, a.timeslot10, a.timeslot11, a.timeslot12, a.timeslot13, a.timeslot14, a.timeslot15, a.timeslot16, a.timeslot17, a.timeslot18, a.timeslot19, a.timeslot20, a.timeslot21, a.boksen, a.fitness, a.hardlopen, a.tennis, a.squash, a.wandelen, a.wielrennen, a.zwemmen, a.firstname, b.firstname FROM koppel a
  JOIN koppel b
    ON a.customerID <> b.customerID
    AND (a.preferredgender = b.gender
    OR a.preferredgender = 'beide')
    AND (b.preferredgender = a.gender
    OR b.preferredgender = 'beide')
    AND (a.timeslot1 = 1 AND b.timeslot1 = 1
         OR a.timeslot2 = 1 AND b.timeslot2 = 1
         OR a.timeslot3 = 1 AND b.timeslot3 = 1
         OR a.timeslot4 = 1 AND b.timeslot4 = 1
         OR a.timeslot5 = 1 AND b.timeslot5 = 1
         OR a.timeslot6 = 1 AND b.timeslot6 = 1
         OR a.timeslot7 = 1 AND b.timeslot7 = 1
         OR a.timeslot8 = 1 AND b.timeslot8 = 1
         OR a.timeslot9 = 1 AND b.timeslot9 = 1
         OR a.timeslot10 = 1 AND b.timeslot10 = 1
         OR a.timeslot11 = 1 AND b.timeslot11 = 1
         OR a.timeslot12 = 1 AND b.timeslot12 = 1
         OR a.timeslot13 = 1 AND b.timeslot13 = 1
         OR a.timeslot14 = 1 AND b.timeslot14 = 1
         OR a.timeslot15 = 1 AND b.timeslot15 = 1
         OR a.timeslot16 = 1 AND b.timeslot16 = 1
         OR a.timeslot17 = 1 AND b.timeslot17 = 1
         OR a.timeslot18 = 1 AND b.timeslot18 = 1
         OR a.timeslot19 = 1 AND b.timeslot19 = 1
         OR a.timeslot20 = 1 AND b.timeslot20 = 1
         OR a.timeslot21 = 1 AND b.timeslot21 = 1)
     AND (a.boksen = 1 AND b.boksen = 1 
          OR a.fitness = 1 AND b.fitness = 1
          OR a.hardlopen = 1 AND b.hardlopen = 1
          OR a.tennis = 1 AND b.tennis = 1
          OR a.squash = 1 AND b.squash = 1
          OR a.wandelen = 1 AND b.wandelen = 1
          OR a.wielrennen = 1 AND b.wielrennen = 1 
          OR a.zwemmen = 1 AND b.zwemmen = 1);
