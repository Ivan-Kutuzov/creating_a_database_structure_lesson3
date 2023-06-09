-- Таблица "Кабинет":
-- - id (primary key)
-- - номер кабинета
-- - количество рядов
-- - количество парт в ряду

-- Таблица "Ученик":
-- - id (primary key)
-- - ФИО ученика
-- - класс
-- - ряд
-- - партa
-- - вариант

-- Таблица "Занятие":
-- - id (primary key)
-- - id_кабинета (foreign key, ссылается на id таблицы "Кабинет")
-- - предмет
-- - началоурока (TimeStamp)
-- - конецурока (TimeStamp)

-- Таблица "Сводная":
-- - id (primary key)
-- - id_занятия (foreign key, ссылается на id таблицы "Занятие")
-- - id_ученика (foreign key, ссылается на id таблицы "Ученик")


CREATE DATABASE school_cabinet;

USE school_cabinet;

CREATE TABLE `Кабинет` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `номер кабинета` int(11) NOT NULL,
  `количество рядов` int(11) NOT NULL,
  `количество парт в ряду` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Ученик` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ФИО ученика` varchar(255) NOT NULL,
  `класс` int(11) NOT NULL,
  `ряд` int(11) NOT NULL,
  `партa` int(11) NOT NULL,
  `вариант` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Занятие` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_кабинета` int(11) NOT NULL,
  `предмет` varchar(255) NOT NULL,
  `началоурока` TIMESTAMP NOT NULL,
  `конецурока` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_кабинета`) REFERENCES `Кабинет` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Сводная` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_занятия` int(11) NOT NULL,
  `id_ученика` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_занятия`) REFERENCES `Занятие` (`id`),
  FOREIGN KEY (`id_ученика`) REFERENCES `Ученик` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

