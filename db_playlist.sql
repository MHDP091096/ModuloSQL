CREATE TABLE cancion(
  id_cancion INTEGER PRIMARY KEY,
  nombre text NOT NULL,
  duracion text NOT NULL
);
CREATE TABLE categoria(
  id_categoria integer primary key,
  nombre text not null,
  
  cancion integer,
  FOREIGN KEY(cancion) REFERENCES Cancion(id_cancion)
);
CREATE TABLE playlist(
  id_playlist INTEGER PRIMARY KEY,
  nombre TEXT NOT NULL,
  cancion INTEGER,
  FOREIGN KEY(cancion) REFERENCES Cancion(id_cancion)
);

ALTER TABLE cancion ADD disco TEXT NULL;
ALTER TABLE cancion ADD year INTEGER NULL;
ALTER TABLE cancion DROP year;
ALTER TABLE cancion RENAME COLUMN disco TO album;

INSERT INTO cancion (
  id_cancion, nombre, duracion
)
VALUES 
(1, "Duele","4:16"),
(2, "Cara Luna","4:26"),
(3, "Dejate caer","4:36"),
(4, "Como un sol","4:56"),
(5, "Razon","3.29");

SELECT * FROM cancion;

