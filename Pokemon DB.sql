CREATE TABLE  Gyms (Gym_ID int, Gym_Name text, Gym_Location varchar(25), Gym_Type text, Game_Edition VARCHAR(6), Primary Key (Gym_ID, Game_Edition));

INSERT INTO Gyms ( Gym_ID, Gym_Name, Gym_Location, Gym_Type, Game_Edition)
Values (1, 'Turf Stadium', 'Turffield', 'Grass', 'Shield'),
(1, 'Turf Stadium', 'Turffield', 'Grass', 'Sword'),
(2, 'Bow Stadium', 'Hilbury', 'Water', 'Sword'),
(2, 'Bow Stadium', 'Hilbury', 'Water', 'Shield'),
(3, 'Engine Stadium', 'Motostoke', 'Fire', 'Shield'),
(3, 'Engine Stadium', 'Motostoke', 'Fire', 'Sword'),
(4, 'Lateral Stadium', 'Stow-On-Side', 'Fighting', 'Sword'),
(5, 'Lateral Stadium', 'Stow-On-Side', 'Ghost', 'Shield'),
(6, 'Arabesque Stadium','Ballonlea', 'Fairy', 'Shield'),
(6, 'Arabesque Stadium', 'Ballonlea', 'Fairy', 'Sword'),
(8, 'Circus Stadium', 'Circhester', 'Ice', 'Shield'),
(7, 'Circus Stadium', 'Circhester', 'Rock', 'Sword'),
(9, 'Spike Gym', 'Spikemuth', 'Dark', 'Shield'),
(9, 'Spike Gym', 'Spikemuth', 'Dark', 'Sword'),
(10, 'Knuckle Stadium', 'Hammerlocke', 'Dragon', 'Shield'),
(10, 'Knuckle Stadium', 'Hammerlocke', 'Dragon', 'Sword');

CREATE TABLE Trainer( Gym_ID int, Trainer_ID int, Leader_ID int, Number_Of_Pokemon int, Trainer_Name varchar(30), Gender text, Primary Key (Trainer_ID), Foreign Key (Gym_ID) References Gyms (Gym_ID));

INSERT INTO Trainer (Gym_ID, Trainer_ID, Trainer_Name, Leader_ID, Number_Of_Pokemon, Gender)
Values (1, 1, 'Milo', NULL, 2, 'Male'),
(1, 2, 'Samuel', 1, 1, 'Male'),
(1, 3, 'Mark', 1, 2, 'Male'),
(1, 4, 'Leah', 1 , 2, 'Female'),

(2, 5, 'Nessa', NULL, 3, 'Female'),
(2, 6, 'Julia', 5, 1, 'Female'),
(2, 7, 'Heather', 5, 2, 'Female'),
(2, 8, 'Lynn', 5, 2, 'Female'),

(3, 9, 'Kabu', NULL, 3, 'Male'),
(3, 10, 'Darren', 9, 2, 'Male'),
(3, 11, 'Chaka', 9, 2, 'Male'),
(3, 12, 'Elle', 9, 1, 'Female'),

(4, 13, 'Bea', Null, 4, 'Female'),
( 4, 14, 'Ian', 13, 2, 'Male'),
(4, 15, 'Claire', 13, 1, 'Female'),
(4, 16, 'Simon', 13, 2, 'Male'),


( 5, 17, 'Allister', Null, 4, 'Male'),
(5, 18, 'Clive', 17, 3, 'Male'),
(5, 19, 'Lynne', 17, 1, 'Female'),
(5, 20, 'Roy', 17, 2, 'Male'),

(6, 21, 'Opal', Null, 4, 'Female'),
(6, 22, 'Annette', 21, 2, 'Female'),
(6, 23, 'Teresa', 21, 2, 'Female'),
(6, 24, 'Theodora', 21, 2, 'Female'),

(7, 25, 'Gordie', Null, 4, 'Male'),
(7, 26, 'Abigail', 25, 1, 'Male'),
(7, 27, 'Kiera', 25, 1, 'Female'),
(7, 28, 'Oliver', 25, 1, 'Female'),
(7, 29, 'Wendy', 25, 1, 'Female'),

(8, 30, ' Melony', Null, 4, 'Female'),
(8, 31, 'Lewis', 30, 1, 'Male'),
(8, 32, 'Liana', 30, 1, 'Female'),
(8, 33, 'Alexander', 30, 1, 'Male'),
(8, 34, 'Micah', 30, 1, 'Male'),

(9, 35, 'Piers', Null, 4, 'Male'),
(9, 36, 'Team Yell Grunt 1', 35, 1, 'Male'),
(9, 37, 'Team Yell Grunt 2', 35, 1, 'Female'),
(9, 38, 'Team Yell Grunt 3', 35, 1, 'Male'),
(9, 39, 'Team Yell Grunt 4', 35, 1, 'Female'),
(9, 40, 'Team Yell Grunt 5', 35, 1, 'Male'),
(9, 41, 'Team Yell Joshua', 35, 1, 'Male'),

(10, 42, 'Raihan', Null, 4, 'Male'),
(10, 43, 'Sebastian', 42, 2, 'Male'),
( 10, 44, ' Camilla', 42, 2, 'Female'),
(10, 45, 'Aria', 42, 2, 'Female');

CREATE TABLE Pokemon( Trainer_ID tinyint, Type_01 text, Type_02 TEXT);
ALTER TABLE Pokemon;
--MODIFY Type_01 text NOT NULL; 



INSERT INTO Pokemon (Trainer_ID, Type_01, Type_02)
Values (1, 'Grass', Null),
(2, 'Grass', Null),
(3, 'Grass', 'Poison'),
(3, 'Grass', 'Poison'),
(4, 'Grass', Null),
(4, 'Grass', 'Poison'),
(5, 'Water', Null),
(5, 'Water', Null),
(5, 'Water', 'Rock'),
(6, 'Water', Null),
(7, 'Water', Null),
(7, 'Water', Null),
(8, 'Water', Null),
(8, 'Water', Null),
(9, 'Fire', Null),
(9, 'Fire', Null),
(9, 'Fire', 'Bug'),
(10, 'Rock', Null),
(10, 'Fire', Null),
(11, 'Fire', 'Bug'),
(11, 'Poison', 'Fire'),
(12, 'Poison', 'Fire'),
(13, 'Fighting', Null),
(13, 'Fighting', 'Dark'),
(14, 'Normal', 'Fighting'),
(14, 'Normal', 'Fighting'),
(15, 'Fighting', Null),
(16, 'Fighting', Null),
(16, 'Fighting', Null),
(17, 'Ground', 'Ghost'),
(17, 'Ghost', 'Fairy'),
(18, 'Ghost', 'Grass'),
(18, 'Ghost', 'Grass'),
(18,'Ghost', 'Grass'),
(19, 'Ghost', Null),
(20, 'Ghost', 'Poison'),
(20, 'Ghost', 'Flying'),
(21, 'Poison', 'Fairy'),
(21, 'Steel', 'Fairy'),
(22, 'Fairy', Null),
(22, 'Fairy', Null),
(23, 'Fairy', Null),
(23, 'Fairy', Null),
(24, 'Dark', 'Fairy'),
(24, 'Psychic', 'Fairy'),
(25, 'Rock', 'Water'),
(25, 'Big', 'Rock'),
(25, 'Rock', Null),
(25, 'Rock', 'Fire'),
(26, 'Rock', Null),
(27, 'Bug', 'Rock'),
(28, 'Rock', 'Fire'),
(29, 'Rock', Null),
(30, 'Ice', 'Bug'),
(30, 'Ice', Null),
(30, 'Ice', Null),
(30, 'Water', 'Ice'),
(31, 'Ice', 'Bug'),
(32, 'Water', 'Ice'),
(33, 'Ice', Null),
(34, 'Ice', Null),
(35, 'Dark', 'Fighting'),
(35, 'Dark', 'Psychic'),
(35, 'Poison', 'Dark'),
(35, 'Dark', 'Normal'), 
(36, 'Dark', 'Normal'),
(37, 'Dark', Null),
(38, 'Dark', 'Fighting'),
(39, 'Dark', 'Ice'),
(40, 'Dark', Null),
(41, 'Poison', 'Dark'), 
(42, 'Rock', Null),
(42, 'Ground', 'Dragon'),
(42, 'Ground', Null),
(42, 'Steel', 'Dragon'),
(43, 'Water', 'Flying'),
(43, 'Dragon', Null),
(44, 'Fire', Null),
(44, 'Fire', 'Dragon'),
(45, 'Grass', 'Ice'),
(45, 'Dragon', 'Fighting');

CREATE TABLE Weakness( Type text, Weakness text, Weakness_Effectiveness decimal (2,1));

INSERT INTO Weakness ( Type, Weakness, Weakness_Effectiveness)
Values ( 'Normal', 'Normal', 1.0),
( 'Normal','Fighting', 2.0),
( 'Normal', 'Flying', 1.0),
( 'Normal', 'Poison', 1.0),
( 'Normal', 'Ground', 1.0),
( 'Normal', 'Rock', 1.0),
( 'Normal', 'Bug', 1.0),
( 'Normal', 'Ghost', 0.0),
( 'Normal', 'Steel', 1.0),
( 'Normal', 'Fire', 1.0),
( 'Normal', 'Water', 1.0),
( 'Normal', 'Grass', 1.0),
( 'Normal', 'Electric', 1.0),
( 'Normal', 'Psychic', 1.0),
( 'Normal', 'Ice', 1.0),
( 'Normal', 'Dragon', 1.0),
( 'Normal', 'Dark', 1.0),
( 'Normal', 'Fairy', 1.0),

('Fighting', 'Normal', 1.0),
('Fighting', 'Flying', 2.0),
('Fighting', 'Poison', 1.0),
('Fighting', 'Ground', 1.0),
('Fighting', 'Rock', 0.5),
('Fighting', 'Bug', 0.5),
('Fighting', 'Ghost', 1.0),
('Fighting', 'Steel',1.0),
('Fighting', 'Fire', 1.0),
('Fighting', 'Water', 1.0),
('Fighting', 'Grass', 1.0),
('Fighting', 'Electric', 1.0),
('Fighting', 'Psychic', 2.0),
('Fighting', 'Dragon', 1.0),
('Fighting', 'Dark', 0.5),
('Fighting', 'Fairy', 2.0),
('Fighting', 'Ice', 1.0),
('Fighting', 'Fighting', 1.0),

('Flying', 'Normal', 1.0),
('Flying','Fighting', 0.5),
('Flying', 'Flying', 1.0),
('Flying', 'Poison', 1.0),
('Flying', 'Ground', 0.0),
('Flying', 'Rock', 2.0),
('Flying', 'Bug', 0.5),
('Flying', 'Ghost', 1.0),
('Flying', 'Steel', 1.0),
('Flying', 'Fire', 1.0),
('Flying', 'Water', 1.0),
('Flying', 'Grass', 0.5),
('Flying', 'Electric', 2.0),
('Flying', 'Psychic', 1.0),
('Flying', 'Ice', 2.0),
('Flying', 'Dragon', 1.0),
('Flying', 'Dark', 1.0),
('Flying', 'Fairy', 1.0),

('Poison', 'Normal', 1.0),
('Poison','Fighting', 0.5),
('Poison', 'Flying', 1.0),
('Poison', 'Poison', 0.5),
('Poison', 'Ground', 2.0),
('Poison', 'Rock', 1.0),
('Poison', 'Bug', 0.5),
('Poison', 'Ghost', 1.0),
('Poison', 'Steel', 1.0),
('Poison', 'Fire', 1.0),
('Poison', 'Water', 1.0),
('Poison', 'Grass', 0.5),
('Poison', 'Electric', 1.0),
('Poison', 'Psychic', 2.0),
('Poison', 'Ice', 1.0),
('Poison', 'Dragon', 1.0),
('Poison', 'Dark', 1.0),
('Poison', 'Fairy', 0.5),

('Ground', 'Normal', 1.0),
('Ground','Fighting', 1.0),
('Ground', 'Flying', 1.0),
('Ground', 'Poison', 0.5),
('Ground', 'Ground', 1.0),
('Ground', 'Rock', 0.5),
('Ground', 'Bug', 1.0),
('Ground', 'Ghost', 1.0),
('Ground', 'Steel', 1.0),
('Ground', 'Fire', 1.0),
('Ground', 'Water', 2.0),
('Ground', 'Grass', 2.0),
('Ground', 'Electric', 0.0),
('Ground', 'Psychic', 1.0),
('Ground', 'Ice', 2.0),
('Ground', 'Dragon', 1.0),
('Ground', 'Dark', 1.0),
('Ground', 'Fairy', 0.5),

('Rock', 'Normal', 0.5),
('Rock','Fighting', 2.0),
('Rock', 'Flying', 0.5),
('Rock', 'Poison', 0.5),
('Rock', 'Ground', 0.5),
('Rock', 'Rock', 2.0),
('Rock', 'Bug', 1.0),
('Rock', 'Ghost', 1.0),
('Rock', 'Steel', 2.0),
('Rock', 'Fire', 0.5),
('Rock', 'Water', 2.0),
('Rock', 'Grass', 2.0),
('Rock', 'Electric', 1.0),
('Rock', 'Psychic', 1.0),
('Rock', 'Ice', 1.0),
('Rock', 'Dragon', 1.0),
('Rock', 'Dark', 1.0),
('Rock', 'Fairy', 1.0),

('Bug', 'Normal', 1.0),
('Bug','Fighting', 0.5),
('Bug', 'Flying', 2.0),
('Bug', 'Poison', 1.0),
('Bug', 'Ground', 0.5),
('Bug', 'Rock', 2.0),
('Bug', 'Bug', 1.0),
('Bug', 'Ghost', 1.0),
('Bug', 'Steel', 1.0),
('Bug', 'Fire', 2.0),
('Bug', 'Water', 1.0),
('Bug', 'Grass', 0.5),
('Bug', 'Electric', 1.0),
('Bug', 'Psychic', 1.0),
('Bug', 'Ice', 1.0),
('Bug', 'Dragon', 1.0),
('Bug', 'Dark', 1.0),
('Bug', 'Fairy', 1.0),

('Ghost', 'Normal', 0.0),
('Ghost','Fighting', 0.0),
('Ghost', 'Flying', 1.0),
('Ghost', 'Poison', 0.5),
('Ghost', 'Ground', 1.0),
('Ghost', 'Rock', 1.0),
('Ghost', 'Bug', 0.5),
('Ghost', 'Ghost', 2.0),
('Ghost', 'Steel', 1.0),
('Ghost', 'Fire', 1.0),
('Ghost', 'Water', 1.0),
('Ghost', 'Grass', 1.0),
('Ghost', 'Electric', 1.0),
('Ghost', 'Psychic', 1.0),
('Ghost', 'Ice', 1.0),
('Ghost', 'Dragon', 1.0),
('Ghost', 'Dark', 2.0),
('Ghost', 'Fairy', 1.0),

('Steel', 'Normal', 0.5),
('Steel','Fighting', 2.0),
('Steel', 'Flying', 0.5),
('Steel', 'Poison', 0.0),
('Steel', 'Ground', 2.0),
('Steel', 'Rock', 0.5),
('Steel', 'Bug', 0.5),
('Steel', 'Ghost', 1.0),
('Steel', 'Steel', 0.5),
('Steel', 'Fire', 2.0),
('Steel', 'Water', 1.0),
('Steel', 'Grass', 0.5),
('Steel', 'Electric', 1.0),
('Steel', 'Psychic', 0.5),
('Steel', 'Ice', 0.5),
('Steel', 'Dragon', 0.5),
('Steel', 'Dark', 1.0),
('Steel', 'Fairy', 0.5),

('Fire', 'Normal', 1.0),
('Fire','Fighting', 1.0),
('Fire', 'Flying', 1.0),
('Fire', 'Poison', 1.0),
('Fire', 'Ground', 2.0),
('Fire', 'Rock', 2.0),
('Fire', 'Bug', 0.5),
('Fire', 'Ghost', 1.0),
('Fire', 'Steel', 0.5),
('Fire', 'Fire', 0.5),
('Fire', 'Water', 2.0),
('Fire', 'Grass', 0.5),
('Fire', 'Electric', 1.0),
('Fire', 'Psychic', 1.0),
('Fire', 'Ice', 0.5),
('Fire', 'Dragon', 1.0),
('Fire', 'Dark', 1.0),
('Fire', 'Fairy', 0.5),

('Water', 'Normal', 1.0),
('Water','Fighting', 1.0),
('Water', 'Flying', 1.0),
('Water', 'Poison', 1.0),
('Water', 'Ground', 1.0),
('Water', 'Rock', 1.0),
('Water', 'Bug', 1.0),
('Water', 'Ghost', 1.0),
('Water', 'Steel', 0.5),
('Water', 'Fire', 0.5),
('Water', 'Water', 0.5),
('Water', 'Grass', 2.0),
('Water', 'Electric', 2.0),
('Water', 'Psychic', 1.0),
('Water', 'Ice', 0.5),
('Water', 'Dragon', 1.0),
('Water', 'Dark', 1.0),
('Water', 'Fairy', 1.0),

('Grass', 'Normal', 1.0),
('Grass','Fighting', 1.0),
('Grass', 'Flying', 2.0),
('Grass', 'Poison', 2.0),
('Grass', 'Ground', 0.5),
('Grass', 'Rock', 1.0),
('Grass', 'Bug', 2.0),
('Grass', 'Ghost', 1.0),
('Grass', 'Steel', 1.0),
('Grass', 'Fire', 2.0),
('Grass', 'Water', 0.5),
('Grass', 'Grass', 0.5),
('Grass', 'Electric', 0.5),
('Grass', 'Psychic', 1.0),
('Grass', 'Ice', 2.0),
('Grass', 'Dragon', 1.0),
('Grass', 'Dark', 1.0),
('Grass', 'Fairy', 1.0),

('Electric', 'Normal', 1.0),
('Electric','Fighting', 1.0),
('Electric', 'Flying', 0.5),
('Electric', 'Poison', 1.0),
('Electric', 'Ground', 2.0),
('Electric', 'Rock', 1.0),
('Electric', 'Bug', 1.0),
('Electric', 'Ghost', 1.0),
('Electric', 'Steel',0.5),
('Electric', 'Fire', 1.0),
('Electric', 'Water', 1.0),
('Electric', 'Grass', 1.0),
('Electric', 'Electric', 0.5),
('Electric', 'Psychic', 1.0),
('Electric', 'Ice', 1.0),
('Electric', 'Dragon', 1.0),
('Electric', 'Dark', 1.0),
('Electric', 'Fairy', 1.0),

('Psychic', 'Normal', 1.0),
('Psychic','Fighting', 0.5),
('Psychic', 'Flying', 1.0),
('Psychic', 'Poison', 1.0),
('Psychic', 'Ground', 1.0),
('Psychic', 'Rock', 1.0),
('Psychic', 'Bug', 2.0),
('Psychic', 'Ghost', 2.0),
('Psychic', 'Steel', 1.0),
('Psychic', 'Fire', 1.0),
('Psychic', 'Water', 1.0),
('Psychic', 'Grass', 1.0),
('Psychic', 'Electric', 1.0),
('Psychic', 'Psychic', 0.5),
('Psychic', 'Ice', 1.0),
('Psychic', 'Dragon', 1.0),
('Psychic', 'Dark', 2.0),
('Psychic', 'Fairy', 1.0),

('Ice', 'Normal', 1.0),
('Ice','Fighting', 2.0),
('Ice', 'Flying', 1.0),
('Ice', 'Poison', 1.0),
('Ice', 'Ground', 1.0),
('Ice', 'Rock', 2.0),
('Ice', 'Bug', 1.0),
('Ice', 'Ghost', 1.0),
('Ice', 'Steel', 2.0),
('Ice', 'Fire', 2.0),
('Ice', 'Water', 1.0),
('Ice', 'Grass', 1.0),
('Ice', 'Electric', 1.0),
('Ice', 'Psychic', 1.0),
('Ice', 'Ice', 0.5),
('Ice', 'Dragon', 1.0),
('Ice', 'Dark', 1.0),
('Ice', 'Fairy', 1.0),

('Dragon', 'Normal', 1.0),
('Dragon','Fighting', 1.0),
('Dragon', 'Flying', 1.0),
('Dragon', 'Poison', 1.0),
('Dragon', 'Ground', 1.0),
('Dragon', 'Rock', 1.0),
('Dragon', 'Bug', 1.0),
('Dragon', 'Ghost', 1.0),
('Dragon', 'Steel', 1.0),
('Dragon', 'Fire', 0.5),
('Dragon', 'Water', 0.5),
('Dragon', 'Grass', 0.5),
('Dragon', 'Electric', 0.5),
('Dragon', 'Psychic', 1.0),
('Dragon', 'Ice', 2.0),
('Dragon', 'Dragon', 2.0),
('Dragon', 'Dark', 1.0),
('Dragon', 'Fairy', 2.0),

('Dark', 'Normal', 1.0),
('Dark','Fighting', 2.0),
('Dark', 'Flying', 1.0),
('Dark', 'Poison', 1.0),
('Dark', 'Ground', 1.0),
('Dark', 'Rock', 1.0),
('Dark', 'Bug', 2.0),
('Dark', 'Ghost', 0.5),
('Dark', 'Steel', 1.0),
('Dark', 'Fire', 1.0),
('Dark', 'Water', 1.0),
('Dark', 'Grass', 1.0),
('Dark', 'Electric', 1.0),
('Dark', 'Psychic', 0.0),
('Dark', 'Ice', 1.0),
('Dark', 'Dragon', 1.0),
('Dark', 'Dark',0.5),
('Dark', 'Fairy', 2.0),

('Fairy', 'Normal', 1.0),
('Fairy','Fighting', 0.5),
('Fairy', 'Flying', 1.0),
('Fairy', 'Poison', 2.0),
('Fairy', 'Ground', 1.0),
('Fairy', 'Rock', 1.0),
('Fairy', 'Bug', 0.5),
('Fairy', 'Ghost', 1.0),
('Fairy', 'Steel', 2.0),
('Fairy', 'Fire', 1.0),
('Fairy', 'Water', 1.0),
('Fairy', 'Grass', 1.0),
('Fairy', 'Electric', 1.0),
('Fairy', 'Psychic', 1.0),
('Fairy', 'Ice', 1.0),
('Fairy', 'Dragon', 0.0),
('Fairy', 'Dark', 0.5),
('Fairy', 'Fairy', 1.0);


