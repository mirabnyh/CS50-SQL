CREATE TABLE `users` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL UNIQUE,
    `username` VARCHAR(32) NOT NULL UNIQUE,
    `password` VARCHAR(32) NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `schools` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL UNIQUE,
    `type` VARCHAR(32) NOT NULL,
    `year` VARCHAR(32) NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `connections_with_people` (
    `user_A_id`,
    `user_B_id`,
    FOREIGN KEY(`user_A_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`user_B_id`) REFERENCES `users`(`id`)
);

CREATE TABLE `connections_with_schools` (
    `user_id`,
    `school_id`,
    `start_affiliation` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `end_affiliation` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `degree` VARCHAR(32),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`school_d`) REFERENCES `schools`(`id`)
);

CREATE TABLE `connections_with_companies` (
    `user_id`,
    `company_id`,
    `start_affiliation` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `end_affiliation` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `title` VARCHAR(32),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`company_d`) REFERENCES `companies`(`id`)
);
