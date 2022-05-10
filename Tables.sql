CREATE TABLE User (
    username VARCHAR,
    password VARCHAR,
    firstName VARCHAR,
    lastName VARCHAR,
    PRIMARY KEY (password, username)
);

CREATE TABLE Post (
    username VARCHAR,
    timeframe DATETIME,
    title VARCHAR,
    desc VARCHAR,
    PRIMARY KEY (username, timeframe),
    FOREIGN KEY (username) REFERENCES User(username)
);

CREATE TABLE Comment (
    username VARCHAR,
    timeframe DATETIME,
    desc VARCHAR,
    PRIMARY KEY (username, timeframe),
    FOREIGN KEY (username) REFERENCES User(username)
);