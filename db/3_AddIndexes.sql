use `isuumo`;

ALTER TABLE `isuumo`.`estate` ADD INDEX idx_estate_rent_id (`rent`, `id`);
