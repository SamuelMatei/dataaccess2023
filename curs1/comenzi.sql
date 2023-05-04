CREATE TABLE `mydb2023`.`produse` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `nume_produs` VARCHAR(100) NOT NULL ,
    `descriere` TEXT NULL , 
    `pret` DECIMAL(7,2) NOT NULL ,
    `stoc` INT NOT NULL DEFAULT '0' , 
    `producator` VARCHAR(250) NOT NULL ,
    `user_at` INT NOT NULL , 
    `data_adaugare` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id`)) ENGINE = InnoDB;



    INSERT INTO `produse` (
    `id`, `nume_produs`,
    `descriere`, `pret`,
    `stoc`, `producator`,
    `user_at`, 
    `data_adaugare`) VALUES (NULL,
    'Pix', 'Pix albastrtu ',
    '22.5', '10', 'Bic', '1', '2023-05-04 19:34:21');









    -- comentariu
    SELECT * FROM `produse`




    CREATE USER 'mydb2023'@'localhost' 
    IDENTIFIED VIA mysql_native_password USING '***';
    GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON *.* TO 
    'mydb2023'@'localhost' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0
    MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;