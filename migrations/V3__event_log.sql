CREATE TABLE event_log (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT,
    time DATETIME NOT NULL,
    parent_id BIGINT,
    payload VARCHAR(255),
    FOREIGN KEY (parent_id) REFERENCES parents (id)
);