CREATE TABLE planets (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    orbital_period NUMERIC(10, 3),
    star_id INT REFERENCES stars;)


CREATE TABLE stars (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    temp INT);


CREATE TABLE moons (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    planet_id INT NOT NULL REFERENCES planets);