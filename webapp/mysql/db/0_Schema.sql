DROP DATABASE IF EXISTS isuumo;
CREATE DATABASE isuumo;

DROP TABLE IF EXISTS isuumo.estate;
DROP TABLE IF EXISTS isuumo.chair;

CREATE TABLE isuumo.estate
(
    id          INTEGER             NOT NULL PRIMARY KEY,
    name        VARCHAR(64)         NOT NULL,
    description VARCHAR(4096)       NOT NULL,
    thumbnail   VARCHAR(128)        NOT NULL,
    address     VARCHAR(128)        NOT NULL,
    latitude    DOUBLE PRECISION    NOT NULL,
    longitude   DOUBLE PRECISION    NOT NULL,
    rent        INTEGER             NOT NULL,
    door_height INTEGER             NOT NULL,
    door_width  INTEGER             NOT NULL,
    features    VARCHAR(64)         NOT NULL,
    popularity  INTEGER             NOT NULL
);
CREATE INDEX idx_rent ON isuumo.estate(rent);
CREATE INDEX idx_popularity ON isuumo.estate(popularity);
CREATE INDEX idx_door_width ON isuumo.estate(door_width);
CREATE INDEX idx_door_height ON isuumo.estate(door_height);

CREATE INDEX idx_latitude ON isuumo.estate(latitude);
CREATE INDEX idx_longitude ON isuumo.estate(longitude);
CREATE INDEX idx_latitude_longitude ON isuumo.estate(latitude, longitude);

CREATE TABLE isuumo.chair
(
    id          INTEGER         NOT NULL PRIMARY KEY,
    name        VARCHAR(64)     NOT NULL,
    description VARCHAR(4096)   NOT NULL,
    thumbnail   VARCHAR(128)    NOT NULL,
    price       INTEGER         NOT NULL,
    height      INTEGER         NOT NULL,
    width       INTEGER         NOT NULL,
    depth       INTEGER         NOT NULL,
    color       VARCHAR(64)     NOT NULL,
    features    VARCHAR(64)     NOT NULL,
    kind        VARCHAR(64)     NOT NULL,
    popularity  INTEGER         NOT NULL,
    stock       INTEGER         NOT NULL
);
CREATE INDEX idx_price ON isuumo.chair(price);
CREATE INDEX idx_popularity ON isuumo.chair(popularity);
CREATE INDEX idx_width ON isuumo.chair(width);
CREATE INDEX idx_height ON isuumo.chair(height);
CREATE INDEX idx_depth ON isuumo.chair(depth);
CREATE INDEX idx_kind ON isuumo.chair(kind);
CREATE INDEX idx_color ON isuumo.chair(color);
