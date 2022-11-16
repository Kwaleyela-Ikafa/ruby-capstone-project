CREATE TABLE item (
    id  INT GENERATED ALWAYS AS IDENTITY,
    source_id INT,
    genre_id INT,
    author_id INT,
    label_id INT,
    publish_date DATE,
    archived BOOLEAN,
    PRIMARY KEY(id),
    FOREIGN KEY (genre_id) REFERENCES genre (id),
    FOREIGN KEY (author_id) REFERENCES author (id),
    FOREIGN KEY (label_id) REFERENCES label (id),
    FOREIGN KEY (source_id) REFERENCES source (id)
);

CREATE TABLE genre (
    id  INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE source (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE book (
    id INT PRIMARY KEY,
    publisher   VARCHAR(100),
    cover_state VARCHAR(100),
    publish_date DATE,
    item_id INT,
    FOREIGN KEY(item_id) REFERENCES items(id)
);

CREATE TABLE label (
    id int PRIMARY KEY,
    title  VARCHAR(100),
    color  VARCHAR(100)
);

CREATE TABLE author (
    id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
);