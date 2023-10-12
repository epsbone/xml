-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-10-2023 a las 09:15:43
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbbookstore`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `author_name` varchar(500) NOT NULL,
  `price` varchar(500) NOT NULL,
  `ISBN` varchar(50) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `books`
--

INSERT INTO `books` (`id`, `title`, `author_name`, `price`, `ISBN`, `category`) VALUES
(1, 'C++ By Example', 'John', '500', 'PR-123-A1', 'Programming'),
(2, 'Java Book', 'Jane davis', '450', 'PR-456-A2', 'Programming'),
(3, 'Database Management Systems', 'Mark', '300', 'DB-123-ASD', 'Database'),
(4, 'Harry Potter and the Order of the Phoenix', 'J.K. Rowling', '650', 'FC-123-456', 'Novel'),
(5, 'Pride and Prejudice', 'Jane Austen', '450', 'FC-456-678', 'Novel'),
(6, 'Learning Web Development ', 'Michael', '300', 'ABC-123-456', 'Web Development'),
(7, 'Professional PHP & MYSQL', 'Programmer Blog', '340', 'PR-123-456', 'Drama'),
(8, 'Lord of the Rings', 'J.R.R. Tolkien', '200', 'PR-678-A2', 'Adventure'),
(9, 'Test124', 'Esteban Pereda', '200', 'AB-1234-AC', 'Comedy'),
(10, 'Test2', 'Luis Fernando Cabral', '300', 'PC-234-AC', 'Horror');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
