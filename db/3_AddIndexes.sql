use `isuumo`;

ALTER TABLE `isuumo`.`chair` ADD INDEX idx_chair_price_id (`price`, `id`);
ALTER TABLE `isuumo`.`chair` ADD INDEX idx_chair_height (`height`);
ALTER TABLE `isuumo`.`chair` ADD INDEX idx_chair_width (`width`);
ALTER TABLE `isuumo`.`chair` ADD INDEX idx_chair_depth (`depth`);
ALTER TABLE `isuumo`.`chair` ADD INDEX idx_chair_kind (`kind`);
ALTER TABLE `isuumo`.`chair` ADD INDEX idx_chair_color (`color`);

ALTER TABLE `isuumo`.`estate` ADD INDEX idx_estate_rent_id (`rent`, `id`);
ALTER TABLE `isuumo`.`estate` ADD INDEX idx_estate_latitude_longitude_popularity (`latitude`, `longitude`, `popularity`);
ALTER TABLE `isuumo`.`estate` ADD INDEX idx_estate_door_height (`door_height`);
ALTER TABLE `isuumo`.`estate` ADD INDEX idx_estate_door_width (`door_width`);
