BEGIN TRANSACTION;
CREATE TABLE
IF NOT EXISTS "firma"
(
	"id"	INTEGER,
	"name"	TEXT,
	PRIMARY KEY
("id" AUTOINCREMENT)
);
CREATE TABLE
IF NOT EXISTS "team"
(
	"id"	INTEGER,
	"name"	TEXT,
	PRIMARY KEY
("id" AUTOINCREMENT)
);
CREATE TABLE
IF NOT EXISTS "mitarbeiter"
(
	"id"	INTEGER,
	"vorname"	TEXT,
	"nachname"	TEXT,
	"firma_id"	INTEGER,
	PRIMARY KEY
("id" AUTOINCREMENT),
	FOREIGN KEY
("firma_id") REFERENCES "firma"
("id")
);
CREATE TABLE
IF NOT EXISTS "mitarbeiter_team"
(
	"team_id"	INTEGER,
	"mitarbeiter_id"	INTEGER,
	FOREIGN KEY
("team_id") REFERENCES "team"
("id"),
	FOREIGN KEY
("mitarbeiter_id") REFERENCES "mitarbeiter"
("id")
);
COMMIT;
