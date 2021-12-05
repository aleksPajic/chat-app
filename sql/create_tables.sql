CREATE TABLE IF NOT EXISTS chat_messages (
    id              SERIAL,
    username        VARCHAR(100)    NOT NULL,
    message_text         VARCHAR(200)    NOT NULL,
    datetime_created    	TIMESTAMP 		NOT NULL,
    PRIMARY KEY (id)
);