DROP TABLE IF EXISTS `timeslot`, `interest`, `users`
;

CREATE TABLE `users` (
  customerID      INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  firstname       VARCHAR(255) NOT NULL,
  lastname        VARCHAR(255) NOT NULL,
  preposition	  VARCHAR(20),
  email           VARCHAR(255) NOT NULL,
  username        VARCHAR(255) NOT NULL,
  phonenumber     VARCHAR(20) NOT NULL,
  gender		  VARCHAR(20) NOT NULL,
  birthdate       VARCHAR(10) NOT NULL,
  password		  VARCHAR(255) NOT NULL,	
  preferredgender VARCHAR(20) NOT NULL)
;





CREATE TABLE `interest` (
  customerIDinterest  INT(10),
  boksen      BOOLEAN,
  fitness     BOOLEAN,
  hardlopen   BOOLEAN,
  tennis      BOOLEAN,
  squash      BOOLEAN,
  wandelen    BOOLEAN,
  wielrennen  BOOLEAN,
  zwemmen     BOOLEAN,
  
  CONSTRAINT
    PRIMARY KEY interestPK (customerIDinterest, boksen),

  CONSTRAINT
    FOREIGN KEY interestFK (customerIDinterest)
    REFERENCES users (customerID))
;





CREATE TABLE `timeslot`  (
  customerIDtimeslot   INT(10),
  timeslot1     BOOLEAN,
  timeslot2     BOOLEAN,
  timeslot3     BOOLEAN,
  timeslot4     BOOLEAN,
  timeslot5     BOOLEAN,
  timeslot6     BOOLEAN,
  timeslot7     BOOLEAN,
  timeslot8     BOOLEAN,
  timeslot9     BOOLEAN,
  timeslot10    BOOLEAN,
  timeslot11    BOOLEAN,
  timeslot12    BOOLEAN,
  timeslot13    BOOLEAN,
  timeslot14    BOOLEAN,
  timeslot15    BOOLEAN,
  timeslot16    BOOLEAN,
  timeslot17    BOOLEAN,
  timeslot18    BOOLEAN,
  timeslot19    BOOLEAN,
  timeslot20    BOOLEAN,
  timeslot21    BOOLEAN,
  
CONSTRAINT
    PRIMARY KEY timeslotPK (customerIDtimeslot, timeslot1),

  CONSTRAINT
    FOREIGN KEY timeslotFK (customerIDtimeslot)
    REFERENCES users (customerID))
;
