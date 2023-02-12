CREATE TABLE IF NOT EXISTS styles
(
    style_id SERIAL PRIMARY KEY,
    style_name VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS artist
(
    artist_id SERIAL PRIMARY KEY,
    artist_name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS artist_styles
(
    style_id INTEGER NOT NULL REFERENCES styles(style_id),
    artist_id INTEGER NOT NULL REFERENCES artist(artist_id),
    PRIMARY KEY(style_id, artist_id)
);

CREATE TABLE IF NOT EXISTS album
(
    album_id SERIAL PRIMARY KEY,
    album_name VARCHAR(60) NOT NULL,
    release_date DATE
);

CREATE TABLE IF NOT EXISTS album_artist
(
    album_id INTEGER NOT NULL REFERENCES album(album_id),
    artist_id INTEGER NOT NULL REFERENCES artist(artist_id),
    PRIMARY KEY(album_id, artist_id)
);

CREATE TABLE IF NOT EXISTS track
(
    track_id SERIAL PRIMARY KEY,
    track_name VARCHAR(60) NOT NULL,
    duration INTEGER NOT NULL,
    album_id INTEGER NOT NULL REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS collection
(
    collection_id SERIAL PRIMARY KEY,
    collection_name VARCHAR(60) NOT NULL,
    release_date DATE
);

CREATE TABLE IF NOT EXISTS track_collection
(
    track_id INTEGER NOT NULL REFERENCES track(track_id),
    collection_id INTEGER NOT NULL REFERENCES collection(collection_id),
    PRIMARY KEY(track_id, collection_id)
);