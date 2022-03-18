CREATE TABLE [IF NOT EXISTS] messages (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    content VARCHAR (255),
    ip_address inet,
    location_id INTEGER,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    CONSTRAINT fk_loc
        FOREIGN KEY(location_id)
            REFERENCES locations(location_id)
);
-- ALTER TABLE ONLY messages ALTER COLUMN created_at SET DEFAULT now();

CREATE TABLE IF NOT EXISTS locations (
    location_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    country VARCHAR ( 60 ),
    state_or_province VARCHAR ( 100 ),
    city VARCHAR ( 100 ),
    coords POINT DEFAULT '42.7325,84.5555'
);

INSERT INTO locations (country, state_or_province, city, coords)
    VALUES (
        'United States',
        'Michigan',
        'Lansing',
        '42.7325,84.5555'
    );
INSERT INTO messages (content, ip_address, location_id)
    VALUES (
        'HEEELLLOOOOOOO',
        '127.0.0.1',
        1
    )