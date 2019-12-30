
--
-- Структура таблицы `allCategory`
--

CREATE TABLE `allCategory` (
  `idCategory` int(11) NOT NULL,
  `nameOfCategory` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `allCategory`
--

INSERT INTO `allCategory` (`idCategory`, `nameOfCategory`) VALUES
(1, 'завтрак'),
(2, 'десерт'),
(3, 'обед'),
(4, 'ужин'),
(5, 'с выпечкой'),
(6, 'без выпечки'),
(7, 'первое'),
(8, 'второе'),
(9, 'холодное'),
(10, 'горячее');

-- --------------------------------------------------------

--
-- Структура таблицы `alterNameOfIngredient`
--

CREATE TABLE `alterNameOfIngredient` (
  `idOfIngredient` int(11) NOT NULL,
  `alterName` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `alterNameOfIngredient`
--

INSERT INTO `alterNameOfIngredient` (`idOfIngredient`, `alterName`) VALUES
(1, 'flour'),
(2, 'eggs'),
(3, 'milk'),
(4, 'cocoa');

-- --------------------------------------------------------

--
-- Структура таблицы `categoryOfDish`
--

CREATE TABLE `categoryOfDish` (
  `idOfDish` int(11) NOT NULL,
  `idOfCategory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categoryOfDish`
--

INSERT INTO `categoryOfDish` (`idOfDish`, `idOfCategory`) VALUES
(1, 1),
(1, 6),
(2, 5),
(3, 1),
(4, 1),
(5, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `Dish`
--

CREATE TABLE `Dish` (
  `idDish` int(11) NOT NULL,
  `name` text,
  `timeMinutes` int(5) DEFAULT NULL,
  `instructions` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Dish`
--

INSERT INTO `Dish` (`idDish`, `name`, `timeMinutes`, `instructions`) VALUES
(1, 'какао', 10, 'инструкция1'),
(2, 'печенье ', 40, 'инструкция 2'),
(3, 'омлет', 10, 'инструкция3'),
(4, 'шоколадный омлет\\какао с яйцом', 5, 'инструкция4'),
(5, 'песочное печенье', 30, 'инструкция5'),
(6, 'шоколадное песочное печенье', 30, 'инструкция6');

-- --------------------------------------------------------

--
-- Структура таблицы `equipmentForDish`
--

CREATE TABLE `equipmentForDish` (
  `idOfDish` int(11) NOT NULL,
  `idEquipment` int(11) NOT NULL,
  `equipment` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `equipmentForDish`
--

INSERT INTO `equipmentForDish` (`idOfDish`, `idEquipment`, `equipment`) VALUES
(1, 1, 'кастрюля'),
(1, 2, 'плита'),
(2, 3, 'противень'),
(2, 4, 'пергамент'),
(3, 5, 'миксер'),
(3, 6, 'сковорода'),
(4, 7, 'кастрюля'),
(4, 8, 'ситечко');

-- --------------------------------------------------------

--
-- Структура таблицы `imgForDish`
--

CREATE TABLE `imgForDish` (
  `idImgForDish` int(11) NOT NULL,
  `idForDish` int(11) DEFAULT NULL,
  `imgForDish` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `imgForDish`
--

INSERT INTO `imgForDish` (`idImgForDish`, `idForDish`, `imgForDish`) VALUES
(1, 1, 'http://holest.ru/wp-content/uploads/2018/09/Какао.jpg'),
(2, 2, 'https://wallbox.ru/wallpapers/main/201615/b283a6b416b5968.jpg'),
(3, 3, 'https://yandex.ru/images/_crpd/x8hgBV662/90570756GxH/3A9Yabi4UhDjhutYc1yOTTpOrIv6fQscAinC2sp61l7eZUhpGlThLLPkwuNH307NPRUGT9SaaUokTt-Rrbj9F8zZiuxsqUbD9826yyVJ30s9j-_f7u_YCZd40Vofq1DNn-fUbNlUcfuqJsBiwA'),
(4, 4, 'https://avatars.mds.yandex.net/get-zen_doc/40456/pub_5afe96735f4967a269c25304_5afe978d9b403c5bc1dd48e1/scale_1200'),
(5, 5, 'https://domashniirestoran.ru/wp-content/uploads/2019/05/pesochnoe-pechene-v-multivarke.jpg'),
(6, 6, 'http://candiland.ru/wp-content/uploads/2018/03/maxresdefault-4.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `imgForIngredients`
--

CREATE TABLE `imgForIngredients` (
  `idOfImg` int(11) NOT NULL,
  `idOfIngredient` int(11) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `imgForIngredients`
--

INSERT INTO `imgForIngredients` (`idOfImg`, `idOfIngredient`, `img`) VALUES
(1, 1, 'https://ru.all.biz/img/ru/catalog/6474739.jpg'),
(2, 1, 'https://www.лукоморье74.рф/sites/default/files/flx4z_photo.jpg'),
(3, 2, 'https://avatars.mds.yandex.net/get-pdb/1691218/411160a1-e7e5-4171-a7b6-de1534ab2374/s1200'),
(4, 3, 'https://avatars.mds.yandex.net/get-pdb/1689173/23776da4-eb1c-4a61-afda-c2ab4005e0cc/s1200'),
(5, 4, 'https://hvylya.net/wp-content/uploads/2018/09/kakao.jpg'),
(6, 5, 'https://avatars.mds.yandex.net/get-zen_doc/229502/pub_5bf52be4d238aa00aac52157_5bf52c0d1cbbfb00aa936e06/scale_1200');

-- --------------------------------------------------------

--
-- Структура таблицы `ingredients`
--

CREATE TABLE `ingredients` (
  `idIngrediens` int(11) NOT NULL,
  `nameOfIngredient` varchar(40) NOT NULL,
  `informationOfIngrediens` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ingredients`
--

INSERT INTO `ingredients` (`idIngrediens`, `nameOfIngredient`, `informationOfIngrediens`) VALUES
(1, 'мука', 'мука. продукт переработки зерновых культур в труху. '),
(2, 'яйца', 'продукт продолжения рода курицы, который люди употребляют в пищу. жестоко.  '),
(3, 'молоко', 'почему бы и нет. '),
(4, 'какао', 'продукт переработки какао бобов. '),
(5, 'сахар', 'белая смерть');

-- --------------------------------------------------------

--
-- Структура таблицы `ingredientsForDish`
--

CREATE TABLE `ingredientsForDish` (
  `id` int(11) NOT NULL,
  `idForDish` int(11) DEFAULT NULL,
  `nameIngredients` varchar(40) DEFAULT NULL,
  `quantity` int(4) DEFAULT NULL,
  `unit` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ingredientsForDish`
--

INSERT INTO `ingredientsForDish` (`id`, `idForDish`, `nameIngredients`, `quantity`, `unit`) VALUES
(1, 1, 'молоко', 250, 'мл'),
(2, 1, 'какао', 15, 'г'),
(3, 2, 'молоко', 200, 'мл'),
(4, 2, 'мука', 200, 'г'),
(5, 2, 'яйца', 1, 'шт'),
(6, 3, 'яйца', 2, 'шт'),
(7, 3, 'молоко', 50, 'мл'),
(8, 4, 'молоко', 250, 'мл'),
(9, 4, 'какао', 15, 'г'),
(10, 4, 'яйца', 1, 'шт'),
(11, 5, 'мука', 200, 'г'),
(12, 5, 'яйца', 2, 'шт'),
(13, 5, 'сахар', 200, 'г'),
(14, 6, 'какао', 50, 'г'),
(15, 6, 'мука', 200, 'г'),
(16, 6, 'сахар', 200, 'г'),
(17, 6, 'яйца', 2, 'шт');

-- --------------------------------------------------------

--
-- Структура таблицы `subset`
--

CREATE TABLE `subset` (
  `idOfCategory` int(11) NOT NULL,
  `idOfsubCategory` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `subset`
--

INSERT INTO `subset` (`idOfCategory`, `idOfsubCategory`, `level`) VALUES
(2, 5, 1),
(2, 6, 1),
(3, 7, 1),
(3, 8, 1),
(8, 9, 2),
(8, 10, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `tableOfUnit`
--

CREATE TABLE `tableOfUnit` (
  `atypicalUnit` varchar(10) NOT NULL,
  `nameOfIngredient` varchar(40) NOT NULL,
  `typicalUnit` varchar(10) DEFAULT NULL,
  `QuantityOfTypicalUnit` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tableOfUnit`
--

INSERT INTO `tableOfUnit` (`atypicalUnit`, `nameOfIngredient`, `typicalUnit`, `QuantityOfTypicalUnit`) VALUES
('г', 'какао', 'г', 1),
('г', 'молоко', 'г', 1),
('г', 'мука', 'г', 1),
('г', 'сахар', 'г', 1),
('мл', 'молоко', 'г', 1),
('стакан', 'молоко', 'мл', 250),
('стакан', 'мука', 'г', 220),
('шт', 'яйца', 'г', 60);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `allCategory`
--
ALTER TABLE `allCategory`
  ADD PRIMARY KEY (`idCategory`),
  ADD KEY `idCategory` (`idCategory`);

--
-- Индексы таблицы `alterNameOfIngredient`
--
ALTER TABLE `alterNameOfIngredient`
  ADD UNIQUE KEY `idOfIngredient_2` (`idOfIngredient`);

--
-- Индексы таблицы `categoryOfDish`
--
ALTER TABLE `categoryOfDish`
  ADD PRIMARY KEY (`idOfDish`,`idOfCategory`),
  ADD KEY `idOfDish` (`idOfDish`),
  ADD KEY `idOfCategory` (`idOfCategory`);

--
-- Индексы таблицы `Dish`
--
ALTER TABLE `Dish`
  ADD PRIMARY KEY (`idDish`),
  ADD KEY `idDish` (`idDish`);

--
-- Индексы таблицы `equipmentForDish`
--
ALTER TABLE `equipmentForDish`
  ADD PRIMARY KEY (`idEquipment`),
  ADD KEY `idOfDish` (`idOfDish`);

--
-- Индексы таблицы `imgForDish`
--
ALTER TABLE `imgForDish`
  ADD PRIMARY KEY (`idImgForDish`),
  ADD UNIQUE KEY `idImgForDish` (`idImgForDish`),
  ADD KEY `idForDish` (`idForDish`);

--
-- Индексы таблицы `imgForIngredients`
--
ALTER TABLE `imgForIngredients`
  ADD PRIMARY KEY (`idOfImg`),
  ADD KEY `idOfIngredient` (`idOfIngredient`);

--
-- Индексы таблицы `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`idIngrediens`,`nameOfIngredient`),
  ADD KEY `idIngrediens` (`idIngrediens`),
  ADD KEY `nameOfIngredient` (`nameOfIngredient`);

--
-- Индексы таблицы `ingredientsForDish`
--
ALTER TABLE `ingredientsForDish`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nameIngredients` (`nameIngredients`),
  ADD KEY `idForDish` (`idForDish`);

--
-- Индексы таблицы `subset`
--
ALTER TABLE `subset`
  ADD PRIMARY KEY (`idOfCategory`,`idOfsubCategory`),
  ADD KEY `idOfCategory` (`idOfCategory`),
  ADD KEY `idOfsubCategory` (`idOfsubCategory`);

--
-- Индексы таблицы `tableOfUnit`
--
ALTER TABLE `tableOfUnit`
  ADD PRIMARY KEY (`atypicalUnit`,`nameOfIngredient`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Dish`
--
ALTER TABLE `Dish`
  MODIFY `idDish` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `equipmentForDish`
--
ALTER TABLE `equipmentForDish`
  MODIFY `idEquipment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `imgForDish`
--
ALTER TABLE `imgForDish`
  MODIFY `idImgForDish` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `imgForIngredients`
--
ALTER TABLE `imgForIngredients`
  MODIFY `idOfImg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `idIngrediens` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `ingredientsForDish`
--
ALTER TABLE `ingredientsForDish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `alterNameOfIngredient`
--
ALTER TABLE `alterNameOfIngredient`
  ADD CONSTRAINT `alterNameOfIngredient_ibfk_1` FOREIGN KEY (`idOfIngredient`) REFERENCES `ingredients` (`idIngrediens`);

--
-- Ограничения внешнего ключа таблицы `categoryOfDish`
--
ALTER TABLE `categoryOfDish`
  ADD CONSTRAINT `categoryOfDish_ibfk_1` FOREIGN KEY (`idOfDish`) REFERENCES `Dish` (`idDish`),
  ADD CONSTRAINT `categoryOfDish_ibfk_2` FOREIGN KEY (`idOfCategory`) REFERENCES `allCategory` (`idCategory`);

--
-- Ограничения внешнего ключа таблицы `equipmentForDish`
--
ALTER TABLE `equipmentForDish`
  ADD CONSTRAINT `equipmentForDish_ibfk_1` FOREIGN KEY (`idOfDish`) REFERENCES `Dish` (`idDish`);

--
-- Ограничения внешнего ключа таблицы `imgForDish`
--
ALTER TABLE `imgForDish`
  ADD CONSTRAINT `imgForDish_ibfk_1` FOREIGN KEY (`idForDish`) REFERENCES `Dish` (`idDish`);

--
-- Ограничения внешнего ключа таблицы `imgForIngredients`
--
ALTER TABLE `imgForIngredients`
  ADD CONSTRAINT `imgForIngredients_ibfk_1` FOREIGN KEY (`idOfIngredient`) REFERENCES `ingredients` (`idIngrediens`);

--
-- Ограничения внешнего ключа таблицы `ingredientsForDish`
--
ALTER TABLE `ingredientsForDish`
  ADD CONSTRAINT `ingredientsForDish_ibfk_1` FOREIGN KEY (`nameIngredients`) REFERENCES `ingredients` (`nameOfIngredient`),
  ADD CONSTRAINT `ingredientsForDish_ibfk_2` FOREIGN KEY (`idForDish`) REFERENCES `Dish` (`idDish`);

--
-- Ограничения внешнего ключа таблицы `subset`
--
ALTER TABLE `subset`
  ADD CONSTRAINT `subset_ibfk_1` FOREIGN KEY (`idOfCategory`) REFERENCES `allCategory` (`idCategory`),
  ADD CONSTRAINT `subset_ibfk_2` FOREIGN KEY (`idOfsubCategory`) REFERENCES `allCategory` (`idCategory`);
COMMIT;
