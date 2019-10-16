-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 16 2019 г., 12:42
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `books`
--

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE `book` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `discruption` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`id`, `title`, `autor`, `price`, `discruption`) VALUES
(1, 'The Hare With Amber Eyes', 'Nikolay Sobolev', 50, 'The Hare with Amber Eyes (2010) is a family memoir by British ceramicist Edmund de Waal.[1] De Waal tells the story of his family, the Ephrussi, once a very wealthy European Jewish banking dynasty, centered in Odessa, Vienna and Paris, and peers of the Rothschild family. The Ephrussis lost almost everything in 1938 when the Nazis aryanized their property. Even after the war, the family failed to recover most of its extensive property, including priceless artwork, but an easily hidden collection of 264 Japanese netsuke miniature sculptures was saved, tucked away inside a mattress by Anna, a loyal maid at Palais Ephrussi in Vienna during the war years. The collection has been passed down through five generations of the Ephrussi family, providing a common thread for the story of its fortunes from 1871 to 2009.'),
(2, 'The Hare With Amber Eyes', 'Nikolay Sobolev', 25, 'The Hare with Amber Eyes (2010) is a family memoir by British ceramicist Edmund de Waal.[1] De Waal tells the story of his family, the Ephrussi, once a very wealthy European Jewish banking dynasty, centered in Odessa, Vienna and Paris, and peers of the Rothschild family. The Ephrussis lost almost everything in 1938 when the Nazis aryanized their property. Even after the war, the family failed to recover most of its extensive property, including priceless artwork, but an easily hidden collection of 264 Japanese netsuke miniature sculptures was saved, tucked away inside a mattress by Anna, a loyal maid at Palais Ephrussi in Vienna during the war years. The collection has been passed down through five generations of the Ephrussi family, providing a common thread for the story of its fortunes from 1871 to 2009.'),
(3, 'The Immortals of Meluha', 'Nikolay Sobolev', 80, 'The Immortals of Meluha is the first novel of the Shiva trilogy series by Amish Tripathi. The story is set in the land of Meluha and starts with the arrival of the Shiva. The Meluhans believe that Shiva is their fabled saviour Neelkanth. Shiva decides to help the Meluhans in their war against the Chandravanshis, who had joined forces with a cursed Nagas; however, during his journey and the fight that ensues, Shiva learns how his choices actually reflect who he aspires to be and how they lead to dire consequences.'),
(4, 'Life is What You Make It', 'Nikolay Sobolev', 60, 'Life Is What You Make It is a novel by Preeti Shenoy. The book was in “Top books of 2011” as per the Nielsen list which is published in Hindustan Times.[citation needed] It was also on Times of India all-time best sellers of 2011. This is an astonishing love story set in India in 1990s. This is a book of love, hope and how determination can overcome even destiny. The story revolves around protagonist Ankita who is in her 20s and has some issues from the past which haunts her. The story begins with schooling from a town where she gets into a relationship with Abhi and Vaibhav.'),
(5, 'The Hare With Amber Eyes', 'Nikolay Sobolev', 25, 'The Hare with Amber Eyes (2010) is a family memoir by British ceramicist Edmund de Waal.[1] De Waal tells the story of his family, the Ephrussi, once a very wealthy European Jewish banking dynasty, centered in Odessa, Vienna and Paris, and peers of the Rothschild family. The Ephrussis lost almost everything in 1938 when the Nazis aryanized their property. Even after the war, the family failed to recover most of its extensive property, including priceless artwork, but an easily hidden collection of 264 Japanese netsuke miniature sculptures was saved, tucked away inside a mattress by Anna, a loyal maid at Palais Ephrussi in Vienna during the war years. The collection has been passed down through five generations of the Ephrussi family, providing a common thread for the story of its fortunes from 1871 to 2009.'),
(6, 'The War of Art', 'Nikolay Sobolev', 25, 'What keeps so many of us from doing what we long to do? Why is there a naysayer within? How can we avoid the roadblocks of any creative endeavor—be it starting up a dream business venture, writing a novel, or painting a masterpiece? The War of Art identifies the enemy that every one of us must face, outlines a battle plan to conquer this internal foe, then pinpoints just how to achieve the greatest success. The War of Art emphasizes the resolve needed to recognize and overcome the obstacles of ambition and then effectively shows how to reach the highest level of creative discipline. Think of it as tough love . . . for yourself. '),
(7, 'The Hare With Amber Eyes', 'Nikolay Sobolev', 25, 'The Hare with Amber Eyes (2010) is a family memoir by British ceramicist Edmund de Waal.[1] De Waal tells the story of his family, the Ephrussi, once a very wealthy European Jewish banking dynasty, centered in Odessa, Vienna and Paris, and peers of the Rothschild family. The Ephrussis lost almost everything in 1938 when the Nazis aryanized their property. Even after the war, the family failed to recover most of its extensive property, including priceless artwork, but an easily hidden collection of 264 Japanese netsuke miniature sculptures was saved, tucked away inside a mattress by Anna, a loyal maid at Palais Ephrussi in Vienna during the war years. The collection has been passed down through five generations of the Ephrussi family, providing a common thread for the story of its fortunes from 1871 to 2009.'),
(8, 'The Immortals of Meluha', 'Nikolay Sobolev', 80, 'The Immortals of Meluha is the first novel of the Shiva trilogy series by Amish Tripathi. The story is set in the land of Meluha and starts with the arrival of the Shiva. The Meluhans believe that Shiva is their fabled saviour Neelkanth. Shiva decides to help the Meluhans in their war against the Chandravanshis, who had joined forces with a cursed Nagas; however, during his journey and the fight that ensues, Shiva learns how his choices actually reflect who he aspires to be and how they lead to dire consequences.'),
(9, 'Life is What You Make It', 'Nikolay Sobolev', 60, 'Life Is What You Make It is a novel by Preeti Shenoy. The book was in “Top books of 2011” as per the Nielsen list which is published in Hindustan Times.[citation needed] It was also on Times of India all-time best sellers of 2011. This is an astonishing love story set in India in 1990s. This is a book of love, hope and how determination can overcome even destiny. The story revolves around protagonist Ankita who is in her 20s and has some issues from the past which haunts her. The story begins with schooling from a town where she gets into a relationship with Abhi and Vaibhav.'),
(10, 'The Hare With Amber Eyes', 'Nikolay Sobolev', 25, 'The Hare with Amber Eyes (2010) is a family memoir by British ceramicist Edmund de Waal.[1] De Waal tells the story of his family, the Ephrussi, once a very wealthy European Jewish banking dynasty, centered in Odessa, Vienna and Paris, and peers of the Rothschild family. The Ephrussis lost almost everything in 1938 when the Nazis aryanized their property. Even after the war, the family failed to recover most of its extensive property, including priceless artwork, but an easily hidden collection of 264 Japanese netsuke miniature sculptures was saved, tucked away inside a mattress by Anna, a loyal maid at Palais Ephrussi in Vienna during the war years. The collection has been passed down through five generations of the Ephrussi family, providing a common thread for the story of its fortunes from 1871 to 2009.'),
(11, 'The War of Art', 'Nikolay Sobolev', 25, 'What keeps so many of us from doing what we long to do? Why is there a naysayer within? How can we avoid the roadblocks of any creative endeavor—be it starting up a dream business venture, writing a novel, or painting a masterpiece? The War of Art identifies the enemy that every one of us must face, outlines a battle plan to conquer this internal foe, then pinpoints just how to achieve the greatest success. The War of Art emphasizes the resolve needed to recognize and overcome the obstacles of ambition and then effectively shows how to reach the highest level of creative discipline. Think of it as tough love . . . for yourself. '),
(12, 'The Hare With Amber Eyes', 'Nikolay Sobolev', 25, 'The Hare with Amber Eyes (2010) is a family memoir by British ceramicist Edmund de Waal.[1] De Waal tells the story of his family, the Ephrussi, once a very wealthy European Jewish banking dynasty, centered in Odessa, Vienna and Paris, and peers of the Rothschild family. The Ephrussis lost almost everything in 1938 when the Nazis aryanized their property. Even after the war, the family failed to recover most of its extensive property, including priceless artwork, but an easily hidden collection of 264 Japanese netsuke miniature sculptures was saved, tucked away inside a mattress by Anna, a loyal maid at Palais Ephrussi in Vienna during the war years. The collection has been passed down through five generations of the Ephrussi family, providing a common thread for the story of its fortunes from 1871 to 2009.'),
(13, 'The Immortals of Meluha', 'Nikolay Sobolev', 80, 'The Immortals of Meluha is the first novel of the Shiva trilogy series by Amish Tripathi. The story is set in the land of Meluha and starts with the arrival of the Shiva. The Meluhans believe that Shiva is their fabled saviour Neelkanth. Shiva decides to help the Meluhans in their war against the Chandravanshis, who had joined forces with a cursed Nagas; however, during his journey and the fight that ensues, Shiva learns how his choices actually reflect who he aspires to be and how they lead to dire consequences.'),
(14, 'Life is What You Make It', 'Nikolay Sobolev', 60, 'Life Is What You Make It is a novel by Preeti Shenoy. The book was in “Top books of 2011” as per the Nielsen list which is published in Hindustan Times.[citation needed] It was also on Times of India all-time best sellers of 2011. This is an astonishing love story set in India in 1990s. This is a book of love, hope and how determination can overcome even destiny. The story revolves around protagonist Ankita who is in her 20s and has some issues from the past which haunts her. The story begins with schooling from a town where she gets into a relationship with Abhi and Vaibhav.'),
(15, 'The Hare With Amber Eyes', 'Nikolay Sobolev', 25, 'The Hare with Amber Eyes (2010) is a family memoir by British ceramicist Edmund de Waal.[1] De Waal tells the story of his family, the Ephrussi, once a very wealthy European Jewish banking dynasty, centered in Odessa, Vienna and Paris, and peers of the Rothschild family. The Ephrussis lost almost everything in 1938 when the Nazis aryanized their property. Even after the war, the family failed to recover most of its extensive property, including priceless artwork, but an easily hidden collection of 264 Japanese netsuke miniature sculptures was saved, tucked away inside a mattress by Anna, a loyal maid at Palais Ephrussi in Vienna during the war years. The collection has been passed down through five generations of the Ephrussi family, providing a common thread for the story of its fortunes from 1871 to 2009.'),
(16, 'The War of Art', 'Nikolay Sobolev', 25, 'What keeps so many of us from doing what we long to do? Why is there a naysayer within? How can we avoid the roadblocks of any creative endeavor—be it starting up a dream business venture, writing a novel, or painting a masterpiece? The War of Art identifies the enemy that every one of us must face, outlines a battle plan to conquer this internal foe, then pinpoints just how to achieve the greatest success. The War of Art emphasizes the resolve needed to recognize and overcome the obstacles of ambition and then effectively shows how to reach the highest level of creative discipline. Think of it as tough love . . . for yourself. '),
(17, 'The Hare With Amber Eyes', 'Nikolay Sobolev', 25, 'The Hare with Amber Eyes (2010) is a family memoir by British ceramicist Edmund de Waal.[1] De Waal tells the story of his family, the Ephrussi, once a very wealthy European Jewish banking dynasty, centered in Odessa, Vienna and Paris, and peers of the Rothschild family. The Ephrussis lost almost everything in 1938 when the Nazis aryanized their property. Even after the war, the family failed to recover most of its extensive property, including priceless artwork, but an easily hidden collection of 264 Japanese netsuke miniature sculptures was saved, tucked away inside a mattress by Anna, a loyal maid at Palais Ephrussi in Vienna during the war years. The collection has been passed down through five generations of the Ephrussi family, providing a common thread for the story of its fortunes from 1871 to 2009.'),
(18, 'The Immortals of Meluha', 'Nikolay Sobolev', 80, 'The Immortals of Meluha is the first novel of the Shiva trilogy series by Amish Tripathi. The story is set in the land of Meluha and starts with the arrival of the Shiva. The Meluhans believe that Shiva is their fabled saviour Neelkanth. Shiva decides to help the Meluhans in their war against the Chandravanshis, who had joined forces with a cursed Nagas; however, during his journey and the fight that ensues, Shiva learns how his choices actually reflect who he aspires to be and how they lead to dire consequences.'),
(19, 'Life is What You Make It', 'Nikolay Sobolev', 60, 'Life Is What You Make It is a novel by Preeti Shenoy. The book was in “Top books of 2011” as per the Nielsen list which is published in Hindustan Times.[citation needed] It was also on Times of India all-time best sellers of 2011. This is an astonishing love story set in India in 1990s. This is a book of love, hope and how determination can overcome even destiny. The story revolves around protagonist Ankita who is in her 20s and has some issues from the past which haunts her. The story begins with schooling from a town where she gets into a relationship with Abhi and Vaibhav.'),
(20, 'The Hare With Amber Eyes', 'Nikolay Sobolev', 25, 'The Hare with Amber Eyes (2010) is a family memoir by British ceramicist Edmund de Waal.[1] De Waal tells the story of his family, the Ephrussi, once a very wealthy European Jewish banking dynasty, centered in Odessa, Vienna and Paris, and peers of the Rothschild family. The Ephrussis lost almost everything in 1938 when the Nazis aryanized their property. Even after the war, the family failed to recover most of its extensive property, including priceless artwork, but an easily hidden collection of 264 Japanese netsuke miniature sculptures was saved, tucked away inside a mattress by Anna, a loyal maid at Palais Ephrussi in Vienna during the war years. The collection has been passed down through five generations of the Ephrussi family, providing a common thread for the story of its fortunes from 1871 to 2009.'),
(21, 'The War of Art', 'Nikolay Sobolev', 25, 'What keeps so many of us from doing what we long to do? Why is there a naysayer within? How can we avoid the roadblocks of any creative endeavor—be it starting up a dream business venture, writing a novel, or painting a masterpiece? The War of Art identifies the enemy that every one of us must face, outlines a battle plan to conquer this internal foe, then pinpoints just how to achieve the greatest success. The War of Art emphasizes the resolve needed to recognize and overcome the obstacles of ambition and then effectively shows how to reach the highest level of creative discipline. Think of it as tough love . . . for yourself. '),
(22, 'The Hare With Amber Eyes', 'Nikolay Sobolev', 25, 'The Hare with Amber Eyes (2010) is a family memoir by British ceramicist Edmund de Waal.[1] De Waal tells the story of his family, the Ephrussi, once a very wealthy European Jewish banking dynasty, centered in Odessa, Vienna and Paris, and peers of the Rothschild family. The Ephrussis lost almost everything in 1938 when the Nazis aryanized their property. Even after the war, the family failed to recover most of its extensive property, including priceless artwork, but an easily hidden collection of 264 Japanese netsuke miniature sculptures was saved, tucked away inside a mattress by Anna, a loyal maid at Palais Ephrussi in Vienna during the war years. The collection has been passed down through five generations of the Ephrussi family, providing a common thread for the story of its fortunes from 1871 to 2009.'),
(23, 'The Immortals of Meluha', 'Nikolay Sobolev', 80, 'The Immortals of Meluha is the first novel of the Shiva trilogy series by Amish Tripathi. The story is set in the land of Meluha and starts with the arrival of the Shiva. The Meluhans believe that Shiva is their fabled saviour Neelkanth. Shiva decides to help the Meluhans in their war against the Chandravanshis, who had joined forces with a cursed Nagas; however, during his journey and the fight that ensues, Shiva learns how his choices actually reflect who he aspires to be and how they lead to dire consequences.'),
(24, 'Life is What You Make It', 'Nikolay Sobolev', 60, 'Life Is What You Make It is a novel by Preeti Shenoy. The book was in “Top books of 2011” as per the Nielsen list which is published in Hindustan Times.[citation needed] It was also on Times of India all-time best sellers of 2011. This is an astonishing love story set in India in 1990s. This is a book of love, hope and how determination can overcome even destiny. The story revolves around protagonist Ankita who is in her 20s and has some issues from the past which haunts her. The story begins with schooling from a town where she gets into a relationship with Abhi and Vaibhav.');

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

CREATE TABLE `cart` (
  `id` int(11) UNSIGNED NOT NULL,
  `login` varchar(20) NOT NULL,
  `id_book` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cart`
--

INSERT INTO `cart` (`id`, `login`, `id_book`, `count`) VALUES
(1, 'diamondkirov', 4, 1),
(2, 'diamondkirov', 4, 1),
(3, 'diamondkirov', 4, 1),
(4, 'diamondkirov', 4, 1),
(5, 'diamondkirov', 4, 1),
(6, 'diamondkirov', 4, 1),
(7, 'diamondkirov', 4, 1),
(8, 'diamondkirov', 4, 1),
(9, 'diamondkirov', 4, 1),
(10, 'diamondkirov', 4, 1),
(11, 'diamondkirov', 4, 1),
(12, 'diamondkirov', 4, 1),
(13, 'diamondkirov', 4, 1),
(14, 'diamondkirov', 10, 1),
(15, 'yoblana', 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `login` varchar(20) NOT NULL,
  `time` int(22) NOT NULL,
  `text` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `id_book` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `login`, `time`, `text`, `id_book`) VALUES
(20, 'diamondkirov', 1567260316, 'Ну сайт такой, на двоечку (с ноги)', 1),
(21, 'diamondkirov', 1567260408, 'Согласен с комментарием ниже', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `name`, `surname`) VALUES
(24, 'DiamondKirov', 'b6e6e9a421eefd139d3e6d7f4066abd6', 'Artyom', 'Pupkov'),
(25, 'yoblana', 'b6e6e9a421eefd139d3e6d7f4066abd6', 'Artem', 'Pupkov');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `cart`
--
ALTER TABLE `cart`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
