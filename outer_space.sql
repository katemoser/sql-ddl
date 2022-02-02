CREATE TABLE stars (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    temp INT);

CREATE TABLE planets (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    orbital_period NUMERIC(10, 3),
    star_id INT REFERENCES stars);

CREATE TABLE moons (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    planet_id INT NOT NULL REFERENCES planets);

INSERT INTO stars(name, temp)
    VALUES
        ('The Sun', 5800),
        ('Proxima Centauri', 3042),
        ('Gliese 876', 3192);

INSERT INTO planets(name, orbital_period, star_id)
    VALUES
        ('Earth', 1.00, 1),
        ('Mars', 1.882, 1),
        ('Venus', 0.62, 1),
        ('Proxima Centauri b', 0.03, 2),
        ('Gliese 876 b', 0.236, 3);

INSERT INTO moons(name, planet_id)
    VALUES
        ('The Moon', 1),
        ('Phobos', 2),
        ('Deimos', 2);