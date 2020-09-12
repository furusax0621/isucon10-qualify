use `isuumo`;

ALTER TABLE `isuumo`.`chair` ADD INDEX idx_chair_price_id (`price`, `id`);
ALTER TABLE `isuumo`.`estate` ADD INDEX idx_estate_rent_id (`rent`, `id`);
