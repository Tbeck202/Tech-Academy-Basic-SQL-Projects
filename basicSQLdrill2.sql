/* Drill 7 */

CREATE DATABASE TAcademy_drill;

USE TAcademy_drill

CREATE TABLE tbl_players (
	player_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	fname VARCHAR(50) NOT NULL,
	lname VARCHAR(50) NOT NULL,
);

INSERT INTO tbl_players
	(fname, lname)
	VALUES
	('Rudy', 'Gobert'),
	('Donovan', 'Mitchell')
;

CREATE TABLE tbl_stat (
	stat_id INT PRIMARY KEY NOT NULL IDENTITY (100,1),
	points VARCHAR(50) NOT NULL,
	rebounds VARCHAR(50) NOT NULL,
	PlayerID INT NOT NULL CONSTRAINT fk_player_id FOREIGN KEY REFERENCES tbl_players(player_id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO tbl_stat
	(points, rebounds, PlayerID)
	VALUES
	(15, 10, 1),
	(26, 4, 2)
;


SELECT * FROM tbl_players
SELECT * FROM tbl_stat

SELECT 
	p1.fname, p1.lname, s1.points
	FROM tbl_players p1 
	INNER JOIN tbl_stat s1 ON s1.PlayerID = p1.player_id
	WHERE fname='Donovan'

