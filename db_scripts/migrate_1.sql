ALTER TABLE singer RENAME TO musician;

CREATE TABLE Band (
bandName varchar(50),
creation int,
genre varchar(50)
);
INSERT INTO Band (bandName, creation, genre)
VALUES ('Crazy Duo', '2015', 'rock'),
('Luna', '2009', 'classical'),
('Mysterio', '2019', 'pop');

ALTER TABLE musician
ADD role varchar(50);

ALTER TABLE musician
ADD bandName varchar(50);

ALTER TABLE musician
RENAME COLUMN singerName to musicianName;

UPDATE musician
SET role='vocals',  bandName='Crazy Duo'
WHERE musicianName='Alina';

UPDATE musician
SET role='guitar',  bandName='Mysterio'
WHERE musicianName='Mysterio';

UPDATE musician
SET role='percussion',  bandName='Crazy Duo'
WHERE musicianName='Rainbow';

UPDATE musician
SET role='piano',  bandName='Luna'
WHERE musicianName='Luna';

ALTER TABLE Band
ADD PRIMARY KEY (bandName);

ALTER TABLE musician
ADD CONSTRAINT bandName
FOREIGN KEY (bandName) REFERENCES band(bandName);