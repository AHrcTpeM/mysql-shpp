CREATE TABLE IF NOT EXISTS house (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    street_id BIGINT UNSIGNED NOT NULL,
    house_number VARCHAR(20) NOT NULL,
    building VARCHAR(20) DEFAULT NULL,
    latitude DECIMAL(10, 8) DEFAULT NULL,
    longitude DECIMAL(11, 8) DEFAULT NULL,
    postal_code VARCHAR(20) DEFAULT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_house_street_number (street_id, house_number),
    CONSTRAINT fk_house_street
        FOREIGN KEY (street_id)
        REFERENCES street (id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);
