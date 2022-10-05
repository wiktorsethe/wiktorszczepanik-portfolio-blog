-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Paź 2022, 16:04
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `blog`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` longtext NOT NULL,
  `date` date NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `articles`
--

INSERT INTO `articles` (`id`, `author_id`, `category_id`, `image_id`, `title`, `text`, `date`, `likes`) VALUES
(1, 1, 1, 1, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et ex vitae arcu sagittis feugiat in lobortis orci. Morbi rutrum posuere blandit. Nullam sit amet eros vel ipsum rutrum porta non at urna. Aenean a dui vitae lorem fermentum egestas eget et lorem. Mauris ultricies leo eu elit ultrices lacinia. Donec molestie nulla non ex scelerisque ultrices. Pellentesque et tortor at enim vehicula venenatis ullamcorper nec magna. Pellentesque ornare convallis tortor in convallis. Duis dictum magna quis erat mollis iaculis.\r\n\r\nMaecenas sed dignissim enim. Fusce eros mi, aliquet non nisi iaculis, pretium tincidunt lacus. Suspendisse arcu erat, eleifend sed lorem quis, gravida dapibus magna. Ut at elit vitae elit consequat fringilla. Fusce iaculis suscipit posuere. Phasellus egestas maximus libero, sed mattis magna. Ut malesuada enim est, quis volutpat tellus facilisis nec. Morbi viverra orci accumsan purus venenatis congue. Praesent eleifend est fermentum arcu lobortis, a imperdiet purus egestas. Nunc et diam eu leo condimentum sagittis sed in sem.\r\n\r\nAliquam malesuada leo aliquet augue pellentesque scelerisque. Donec gravida vulputate ligula. Duis porta blandit risus quis tristique. Integer fermentum fermentum elit. Cras magna lacus, condimentum at dignissim nec, rhoncus ut augue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque eu mollis urna. Duis laoreet consectetur condimentum. Quisque gravida eros magna, et vulputate sapien congue nec. Mauris sagittis risus at dui dictum tristique. Pellentesque id iaculis nisl, in lacinia eros. Etiam vel sollicitudin nisl. Fusce cursus lorem at euismod posuere.\r\n\r\nSed odio justo, lacinia eget suscipit quis, congue lacinia augue. Ut in turpis vestibulum velit mattis posuere sit amet vel ipsum. Aliquam facilisis volutpat commodo. Nunc eget elit ex. Cras at odio fringilla, finibus ex semper, auctor augue. Duis neque augue, euismod sit amet magna sit amet, varius vulputate massa. Ut ullamcorper nulla in odio iaculis interdum. Nullam id nulla ultricies, bibendum mi eu, elementum tellus. Morbi nec justo sed mi fringilla scelerisque sed a elit.\r\n\r\nQuisque sed enim sed ex ultrices ultricies. Nunc imperdiet gravida nibh. Etiam lacinia auctor ante, id ultrices nisi facilisis sit amet. Proin non augue faucibus, venenatis ex vitae, interdum est. Nulla blandit, felis quis sodales rutrum, felis enim auctor dui, ut feugiat ex velit nec dui. In nec blandit mi. Ut elementum sem velit, rhoncus varius magna porttitor a. Vestibulum non metus vel elit rhoncus luctus. Proin tristique massa purus, sed venenatis nunc egestas quis. Proin ornare nec diam quis feugiat. Praesent vestibulum tortor et ipsum congue, vitae maximus est semper. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In mattis sapien est, id consectetur mauris scelerisque sit amet. Proin hendrerit sollicitudin nunc, vel aliquam justo scelerisque sagittis.\r\n\r\nPellentesque vestibulum sapien nec lectus fermentum egestas. Donec non est id odio condimentum aliquam at ut sapien. Vestibulum suscipit, dolor posuere porta egestas, ante leo gravida libero, nec malesuada nulla leo eget nisl. Aliquam erat volutpat. Donec laoreet dolor eu ligula aliquet, at luctus tortor rhoncus. Integer eu leo orci. Suspendisse accumsan lacus et purus pellentesque, eget suscipit nibh varius.\r\n\r\nUt ultricies ex vel massa scelerisque venenatis. Etiam in gravida arcu, eget placerat arcu. Vivamus eget odio sit amet ipsum sollicitudin accumsan nec eget eros. Vivamus id varius nisi. Quisque interdum convallis augue quis aliquam. Proin congue ligula leo, ac rutrum felis finibus vitae. Praesent ut nibh dignissim, porta ipsum vel, dictum nibh. Vestibulum pretium dapibus lacinia. Phasellus posuere et neque vitae euismod. Fusce elementum tortor eu velit malesuada, et tincidunt lectus eleifend. Sed ut ante nisi.', '2022-09-01', 4),
(2, 1, 1, 2, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et ex vitae arcu sagittis feugiat in lobortis orci. Morbi rutrum posuere blandit. Nullam sit amet eros vel ipsum rutrum porta non at urna. Aenean a dui vitae lorem fermentum egestas eget et lorem. Mauris ultricies leo eu elit ultrices lacinia. Donec molestie nulla non ex scelerisque ultrices. Pellentesque et tortor at enim vehicula venenatis ullamcorper nec magna. Pellentesque ornare convallis tortor in convallis. Duis dictum magna quis erat mollis iaculis.\r\n\r\nMaecenas sed dignissim enim. Fusce eros mi, aliquet non nisi iaculis, pretium tincidunt lacus. Suspendisse arcu erat, eleifend sed lorem quis, gravida dapibus magna. Ut at elit vitae elit consequat fringilla. Fusce iaculis suscipit posuere. Phasellus egestas maximus libero, sed mattis magna. Ut malesuada enim est, quis volutpat tellus facilisis nec. Morbi viverra orci accumsan purus venenatis congue. Praesent eleifend est fermentum arcu lobortis, a imperdiet purus egestas. Nunc et diam eu leo condimentum sagittis sed in sem.\r\n\r\nAliquam malesuada leo aliquet augue pellentesque scelerisque. Donec gravida vulputate ligula. Duis porta blandit risus quis tristique. Integer fermentum fermentum elit. Cras magna lacus, condimentum at dignissim nec, rhoncus ut augue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque eu mollis urna. Duis laoreet consectetur condimentum. Quisque gravida eros magna, et vulputate sapien congue nec. Mauris sagittis risus at dui dictum tristique. Pellentesque id iaculis nisl, in lacinia eros. Etiam vel sollicitudin nisl. Fusce cursus lorem at euismod posuere.\r\n\r\nSed odio justo, lacinia eget suscipit quis, congue lacinia augue. Ut in turpis vestibulum velit mattis posuere sit amet vel ipsum. Aliquam facilisis volutpat commodo. Nunc eget elit ex. Cras at odio fringilla, finibus ex semper, auctor augue. Duis neque augue, euismod sit amet magna sit amet, varius vulputate massa. Ut ullamcorper nulla in odio iaculis interdum. Nullam id nulla ultricies, bibendum mi eu, elementum tellus. Morbi nec justo sed mi fringilla scelerisque sed a elit.\r\n\r\nQuisque sed enim sed ex ultrices ultricies. Nunc imperdiet gravida nibh. Etiam lacinia auctor ante, id ultrices nisi facilisis sit amet. Proin non augue faucibus, venenatis ex vitae, interdum est. Nulla blandit, felis quis sodales rutrum, felis enim auctor dui, ut feugiat ex velit nec dui. In nec blandit mi. Ut elementum sem velit, rhoncus varius magna porttitor a. Vestibulum non metus vel elit rhoncus luctus. Proin tristique massa purus, sed venenatis nunc egestas quis. Proin ornare nec diam quis feugiat. Praesent vestibulum tortor et ipsum congue, vitae maximus est semper. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In mattis sapien est, id consectetur mauris scelerisque sit amet. Proin hendrerit sollicitudin nunc, vel aliquam justo scelerisque sagittis.\r\n\r\nPellentesque vestibulum sapien nec lectus fermentum egestas. Donec non est id odio condimentum aliquam at ut sapien. Vestibulum suscipit, dolor posuere porta egestas, ante leo gravida libero, nec malesuada nulla leo eget nisl. Aliquam erat volutpat. Donec laoreet dolor eu ligula aliquet, at luctus tortor rhoncus. Integer eu leo orci. Suspendisse accumsan lacus et purus pellentesque, eget suscipit nibh varius.\r\n\r\nUt ultricies ex vel massa scelerisque venenatis. Etiam in gravida arcu, eget placerat arcu. Vivamus eget odio sit amet ipsum sollicitudin accumsan nec eget eros. Vivamus id varius nisi. Quisque interdum convallis augue quis aliquam. Proin congue ligula leo, ac rutrum felis finibus vitae. Praesent ut nibh dignissim, porta ipsum vel, dictum nibh. Vestibulum pretium dapibus lacinia. Phasellus posuere et neque vitae euismod. Fusce elementum tortor eu velit malesuada, et tincidunt lectus eleifend. Sed ut ante nisi.', '2022-09-01', 2),
(3, 2, 2, 3, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et ex vitae arcu sagittis feugiat in lobortis orci. Morbi rutrum posuere blandit. Nullam sit amet eros vel ipsum rutrum porta non at urna. Aenean a dui vitae lorem fermentum egestas eget et lorem. Mauris ultricies leo eu elit ultrices lacinia. Donec molestie nulla non ex scelerisque ultrices. Pellentesque et tortor at enim vehicula venenatis ullamcorper nec magna. Pellentesque ornare convallis tortor in convallis. Duis dictum magna quis erat mollis iaculis.\r\n\r\nMaecenas sed dignissim enim. Fusce eros mi, aliquet non nisi iaculis, pretium tincidunt lacus. Suspendisse arcu erat, eleifend sed lorem quis, gravida dapibus magna. Ut at elit vitae elit consequat fringilla. Fusce iaculis suscipit posuere. Phasellus egestas maximus libero, sed mattis magna. Ut malesuada enim est, quis volutpat tellus facilisis nec. Morbi viverra orci accumsan purus venenatis congue. Praesent eleifend est fermentum arcu lobortis, a imperdiet purus egestas. Nunc et diam eu leo condimentum sagittis sed in sem.\r\n\r\nAliquam malesuada leo aliquet augue pellentesque scelerisque. Donec gravida vulputate ligula. Duis porta blandit risus quis tristique. Integer fermentum fermentum elit. Cras magna lacus, condimentum at dignissim nec, rhoncus ut augue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque eu mollis urna. Duis laoreet consectetur condimentum. Quisque gravida eros magna, et vulputate sapien congue nec. Mauris sagittis risus at dui dictum tristique. Pellentesque id iaculis nisl, in lacinia eros. Etiam vel sollicitudin nisl. Fusce cursus lorem at euismod posuere.\r\n\r\nSed odio justo, lacinia eget suscipit quis, congue lacinia augue. Ut in turpis vestibulum velit mattis posuere sit amet vel ipsum. Aliquam facilisis volutpat commodo. Nunc eget elit ex. Cras at odio fringilla, finibus ex semper, auctor augue. Duis neque augue, euismod sit amet magna sit amet, varius vulputate massa. Ut ullamcorper nulla in odio iaculis interdum. Nullam id nulla ultricies, bibendum mi eu, elementum tellus. Morbi nec justo sed mi fringilla scelerisque sed a elit.\r\n\r\nQuisque sed enim sed ex ultrices ultricies. Nunc imperdiet gravida nibh. Etiam lacinia auctor ante, id ultrices nisi facilisis sit amet. Proin non augue faucibus, venenatis ex vitae, interdum est. Nulla blandit, felis quis sodales rutrum, felis enim auctor dui, ut feugiat ex velit nec dui. In nec blandit mi. Ut elementum sem velit, rhoncus varius magna porttitor a. Vestibulum non metus vel elit rhoncus luctus. Proin tristique massa purus, sed venenatis nunc egestas quis. Proin ornare nec diam quis feugiat. Praesent vestibulum tortor et ipsum congue, vitae maximus est semper. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In mattis sapien est, id consectetur mauris scelerisque sit amet. Proin hendrerit sollicitudin nunc, vel aliquam justo scelerisque sagittis.\r\n\r\nPellentesque vestibulum sapien nec lectus fermentum egestas. Donec non est id odio condimentum aliquam at ut sapien. Vestibulum suscipit, dolor posuere porta egestas, ante leo gravida libero, nec malesuada nulla leo eget nisl. Aliquam erat volutpat. Donec laoreet dolor eu ligula aliquet, at luctus tortor rhoncus. Integer eu leo orci. Suspendisse accumsan lacus et purus pellentesque, eget suscipit nibh varius.\r\n\r\nUt ultricies ex vel massa scelerisque venenatis. Etiam in gravida arcu, eget placerat arcu. Vivamus eget odio sit amet ipsum sollicitudin accumsan nec eget eros. Vivamus id varius nisi. Quisque interdum convallis augue quis aliquam. Proin congue ligula leo, ac rutrum felis finibus vitae. Praesent ut nibh dignissim, porta ipsum vel, dictum nibh. Vestibulum pretium dapibus lacinia. Phasellus posuere et neque vitae euismod. Fusce elementum tortor eu velit malesuada, et tincidunt lectus eleifend. Sed ut ante nisi.', '2022-09-01', 1),
(4, 3, 3, 4, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et ex vitae arcu sagittis feugiat in lobortis orci. Morbi rutrum posuere blandit. Nullam sit amet eros vel ipsum rutrum porta non at urna. Aenean a dui vitae lorem fermentum egestas eget et lorem. Mauris ultricies leo eu elit ultrices lacinia. Donec molestie nulla non ex scelerisque ultrices. Pellentesque et tortor at enim vehicula venenatis ullamcorper nec magna. Pellentesque ornare convallis tortor in convallis. Duis dictum magna quis erat mollis iaculis.\r\n\r\nMaecenas sed dignissim enim. Fusce eros mi, aliquet non nisi iaculis, pretium tincidunt lacus. Suspendisse arcu erat, eleifend sed lorem quis, gravida dapibus magna. Ut at elit vitae elit consequat fringilla. Fusce iaculis suscipit posuere. Phasellus egestas maximus libero, sed mattis magna. Ut malesuada enim est, quis volutpat tellus facilisis nec. Morbi viverra orci accumsan purus venenatis congue. Praesent eleifend est fermentum arcu lobortis, a imperdiet purus egestas. Nunc et diam eu leo condimentum sagittis sed in sem.\r\n\r\nAliquam malesuada leo aliquet augue pellentesque scelerisque. Donec gravida vulputate ligula. Duis porta blandit risus quis tristique. Integer fermentum fermentum elit. Cras magna lacus, condimentum at dignissim nec, rhoncus ut augue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque eu mollis urna. Duis laoreet consectetur condimentum. Quisque gravida eros magna, et vulputate sapien congue nec. Mauris sagittis risus at dui dictum tristique. Pellentesque id iaculis nisl, in lacinia eros. Etiam vel sollicitudin nisl. Fusce cursus lorem at euismod posuere.\r\n\r\nSed odio justo, lacinia eget suscipit quis, congue lacinia augue. Ut in turpis vestibulum velit mattis posuere sit amet vel ipsum. Aliquam facilisis volutpat commodo. Nunc eget elit ex. Cras at odio fringilla, finibus ex semper, auctor augue. Duis neque augue, euismod sit amet magna sit amet, varius vulputate massa. Ut ullamcorper nulla in odio iaculis interdum. Nullam id nulla ultricies, bibendum mi eu, elementum tellus. Morbi nec justo sed mi fringilla scelerisque sed a elit.\r\n\r\nQuisque sed enim sed ex ultrices ultricies. Nunc imperdiet gravida nibh. Etiam lacinia auctor ante, id ultrices nisi facilisis sit amet. Proin non augue faucibus, venenatis ex vitae, interdum est. Nulla blandit, felis quis sodales rutrum, felis enim auctor dui, ut feugiat ex velit nec dui. In nec blandit mi. Ut elementum sem velit, rhoncus varius magna porttitor a. Vestibulum non metus vel elit rhoncus luctus. Proin tristique massa purus, sed venenatis nunc egestas quis. Proin ornare nec diam quis feugiat. Praesent vestibulum tortor et ipsum congue, vitae maximus est semper. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In mattis sapien est, id consectetur mauris scelerisque sit amet. Proin hendrerit sollicitudin nunc, vel aliquam justo scelerisque sagittis.\r\n\r\nPellentesque vestibulum sapien nec lectus fermentum egestas. Donec non est id odio condimentum aliquam at ut sapien. Vestibulum suscipit, dolor posuere porta egestas, ante leo gravida libero, nec malesuada nulla leo eget nisl. Aliquam erat volutpat. Donec laoreet dolor eu ligula aliquet, at luctus tortor rhoncus. Integer eu leo orci. Suspendisse accumsan lacus et purus pellentesque, eget suscipit nibh varius.\r\n\r\nUt ultricies ex vel massa scelerisque venenatis. Etiam in gravida arcu, eget placerat arcu. Vivamus eget odio sit amet ipsum sollicitudin accumsan nec eget eros. Vivamus id varius nisi. Quisque interdum convallis augue quis aliquam. Proin congue ligula leo, ac rutrum felis finibus vitae. Praesent ut nibh dignissim, porta ipsum vel, dictum nibh. Vestibulum pretium dapibus lacinia. Phasellus posuere et neque vitae euismod. Fusce elementum tortor eu velit malesuada, et tincidunt lectus eleifend. Sed ut ante nisi.', '2022-09-01', 7),
(5, 4, 4, 5, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et ex vitae arcu sagittis feugiat in lobortis orci. Morbi rutrum posuere blandit. Nullam sit amet eros vel ipsum rutrum porta non at urna. Aenean a dui vitae lorem fermentum egestas eget et lorem. Mauris ultricies leo eu elit ultrices lacinia. Donec molestie nulla non ex scelerisque ultrices. Pellentesque et tortor at enim vehicula venenatis ullamcorper nec magna. Pellentesque ornare convallis tortor in convallis. Duis dictum magna quis erat mollis iaculis.\r\n\r\nMaecenas sed dignissim enim. Fusce eros mi, aliquet non nisi iaculis, pretium tincidunt lacus. Suspendisse arcu erat, eleifend sed lorem quis, gravida dapibus magna. Ut at elit vitae elit consequat fringilla. Fusce iaculis suscipit posuere. Phasellus egestas maximus libero, sed mattis magna. Ut malesuada enim est, quis volutpat tellus facilisis nec. Morbi viverra orci accumsan purus venenatis congue. Praesent eleifend est fermentum arcu lobortis, a imperdiet purus egestas. Nunc et diam eu leo condimentum sagittis sed in sem.\r\n\r\nAliquam malesuada leo aliquet augue pellentesque scelerisque. Donec gravida vulputate ligula. Duis porta blandit risus quis tristique. Integer fermentum fermentum elit. Cras magna lacus, condimentum at dignissim nec, rhoncus ut augue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque eu mollis urna. Duis laoreet consectetur condimentum. Quisque gravida eros magna, et vulputate sapien congue nec. Mauris sagittis risus at dui dictum tristique. Pellentesque id iaculis nisl, in lacinia eros. Etiam vel sollicitudin nisl. Fusce cursus lorem at euismod posuere.\r\n\r\nSed odio justo, lacinia eget suscipit quis, congue lacinia augue. Ut in turpis vestibulum velit mattis posuere sit amet vel ipsum. Aliquam facilisis volutpat commodo. Nunc eget elit ex. Cras at odio fringilla, finibus ex semper, auctor augue. Duis neque augue, euismod sit amet magna sit amet, varius vulputate massa. Ut ullamcorper nulla in odio iaculis interdum. Nullam id nulla ultricies, bibendum mi eu, elementum tellus. Morbi nec justo sed mi fringilla scelerisque sed a elit.\r\n\r\nQuisque sed enim sed ex ultrices ultricies. Nunc imperdiet gravida nibh. Etiam lacinia auctor ante, id ultrices nisi facilisis sit amet. Proin non augue faucibus, venenatis ex vitae, interdum est. Nulla blandit, felis quis sodales rutrum, felis enim auctor dui, ut feugiat ex velit nec dui. In nec blandit mi. Ut elementum sem velit, rhoncus varius magna porttitor a. Vestibulum non metus vel elit rhoncus luctus. Proin tristique massa purus, sed venenatis nunc egestas quis. Proin ornare nec diam quis feugiat. Praesent vestibulum tortor et ipsum congue, vitae maximus est semper. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In mattis sapien est, id consectetur mauris scelerisque sit amet. Proin hendrerit sollicitudin nunc, vel aliquam justo scelerisque sagittis.\r\n\r\nPellentesque vestibulum sapien nec lectus fermentum egestas. Donec non est id odio condimentum aliquam at ut sapien. Vestibulum suscipit, dolor posuere porta egestas, ante leo gravida libero, nec malesuada nulla leo eget nisl. Aliquam erat volutpat. Donec laoreet dolor eu ligula aliquet, at luctus tortor rhoncus. Integer eu leo orci. Suspendisse accumsan lacus et purus pellentesque, eget suscipit nibh varius.\r\n\r\nUt ultricies ex vel massa scelerisque venenatis. Etiam in gravida arcu, eget placerat arcu. Vivamus eget odio sit amet ipsum sollicitudin accumsan nec eget eros. Vivamus id varius nisi. Quisque interdum convallis augue quis aliquam. Proin congue ligula leo, ac rutrum felis finibus vitae. Praesent ut nibh dignissim, porta ipsum vel, dictum nibh. Vestibulum pretium dapibus lacinia. Phasellus posuere et neque vitae euismod. Fusce elementum tortor eu velit malesuada, et tincidunt lectus eleifend. Sed ut ante nisi.', '2022-09-01', 2),
(6, 4, 3, 6, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et ex vitae arcu sagittis feugiat in lobortis orci. Morbi rutrum posuere blandit. Nullam sit amet eros vel ipsum rutrum porta non at urna. Aenean a dui vitae lorem fermentum egestas eget et lorem. Mauris ultricies leo eu elit ultrices lacinia. Donec molestie nulla non ex scelerisque ultrices. Pellentesque et tortor at enim vehicula venenatis ullamcorper nec magna. Pellentesque ornare convallis tortor in convallis. Duis dictum magna quis erat mollis iaculis.\r\n\r\nMaecenas sed dignissim enim. Fusce eros mi, aliquet non nisi iaculis, pretium tincidunt lacus. Suspendisse arcu erat, eleifend sed lorem quis, gravida dapibus magna. Ut at elit vitae elit consequat fringilla. Fusce iaculis suscipit posuere. Phasellus egestas maximus libero, sed mattis magna. Ut malesuada enim est, quis volutpat tellus facilisis nec. Morbi viverra orci accumsan purus venenatis congue. Praesent eleifend est fermentum arcu lobortis, a imperdiet purus egestas. Nunc et diam eu leo condimentum sagittis sed in sem.\r\n\r\nAliquam malesuada leo aliquet augue pellentesque scelerisque. Donec gravida vulputate ligula. Duis porta blandit risus quis tristique. Integer fermentum fermentum elit. Cras magna lacus, condimentum at dignissim nec, rhoncus ut augue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque eu mollis urna. Duis laoreet consectetur condimentum. Quisque gravida eros magna, et vulputate sapien congue nec. Mauris sagittis risus at dui dictum tristique. Pellentesque id iaculis nisl, in lacinia eros. Etiam vel sollicitudin nisl. Fusce cursus lorem at euismod posuere.\r\n\r\nSed odio justo, lacinia eget suscipit quis, congue lacinia augue. Ut in turpis vestibulum velit mattis posuere sit amet vel ipsum. Aliquam facilisis volutpat commodo. Nunc eget elit ex. Cras at odio fringilla, finibus ex semper, auctor augue. Duis neque augue, euismod sit amet magna sit amet, varius vulputate massa. Ut ullamcorper nulla in odio iaculis interdum. Nullam id nulla ultricies, bibendum mi eu, elementum tellus. Morbi nec justo sed mi fringilla scelerisque sed a elit.\r\n\r\nQuisque sed enim sed ex ultrices ultricies. Nunc imperdiet gravida nibh. Etiam lacinia auctor ante, id ultrices nisi facilisis sit amet. Proin non augue faucibus, venenatis ex vitae, interdum est. Nulla blandit, felis quis sodales rutrum, felis enim auctor dui, ut feugiat ex velit nec dui. In nec blandit mi. Ut elementum sem velit, rhoncus varius magna porttitor a. Vestibulum non metus vel elit rhoncus luctus. Proin tristique massa purus, sed venenatis nunc egestas quis. Proin ornare nec diam quis feugiat. Praesent vestibulum tortor et ipsum congue, vitae maximus est semper. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In mattis sapien est, id consectetur mauris scelerisque sit amet. Proin hendrerit sollicitudin nunc, vel aliquam justo scelerisque sagittis.\r\n\r\nPellentesque vestibulum sapien nec lectus fermentum egestas. Donec non est id odio condimentum aliquam at ut sapien. Vestibulum suscipit, dolor posuere porta egestas, ante leo gravida libero, nec malesuada nulla leo eget nisl. Aliquam erat volutpat. Donec laoreet dolor eu ligula aliquet, at luctus tortor rhoncus. Integer eu leo orci. Suspendisse accumsan lacus et purus pellentesque, eget suscipit nibh varius.\r\n\r\nUt ultricies ex vel massa scelerisque venenatis. Etiam in gravida arcu, eget placerat arcu. Vivamus eget odio sit amet ipsum sollicitudin accumsan nec eget eros. Vivamus id varius nisi. Quisque interdum convallis augue quis aliquam. Proin congue ligula leo, ac rutrum felis finibus vitae. Praesent ut nibh dignissim, porta ipsum vel, dictum nibh. Vestibulum pretium dapibus lacinia. Phasellus posuere et neque vitae euismod. Fusce elementum tortor eu velit malesuada, et tincidunt lectus eleifend. Sed ut ante nisi.', '2022-09-01', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `authors`
--

CREATE TABLE `authors` (
  `author_id` int(11) NOT NULL,
  `author_name` text NOT NULL,
  `author_surname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `authors`
--

INSERT INTO `authors` (`author_id`, `author_name`, `author_surname`) VALUES
(1, 'Marcus', 'Cicero'),
(2, 'Marcus', 'Cicero'),
(3, 'Marcus', 'Cicero'),
(4, 'Marcus', 'Cicero');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `author` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `comments`
--

INSERT INTO `comments` (`comment_id`, `article_id`, `author`, `message`) VALUES
(1, 1, 'Wiktor', 'hello'),
(2, 1, 'Wiktor', 'hi'),
(3, 3, 'Max', 'Supp'),
(29, 1, 'Max', 'Hello!'),
(30, 1, 'Garen', 'Show me this'),
(31, 1, 'beerohol', 'adswa'),
(32, 1, 'Wiktor', 'hellasd'),
(33, 1, 'adaw', 'asdwrasd'),
(34, 1, 'Wiktor', 'jgihgihgi'),
(35, 1, 'beerohola', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(37, 2, 'Wiktorasdad', 'adadawasdad'),
(38, 1, 'asdwad', 'asdwasdad'),
(39, 1, 'wad', 'wadsdaw'),
(40, 1, 'beerohol', 'wdaw'),
(41, 4, 'Wiktorw', 'awdadw'),
(42, 2, 'Wiktor', 'hello'),
(43, 2, 'kayster', 'gfawdad'),
(44, 2, 'beeroholwad', 'awdwadwdwaasd');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` longblob NOT NULL,
  `type` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `images`
--

INSERT INTO `images` (`id`, `name`, `image`, `type`) VALUES
(1, 'articleimage1.png', 0x89504e470d0a1a0a0000000d49484452000000c8000000640804000000698fb780000000a34944415478daedd1010d000008c330ee15ff16c006219d84353da54305081001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111020260011102002024440beb7882a8b119fadc8320000000049454e44ae426082, 'image/png'),
(2, 'articleimage2.png', 0x89504e470d0a1a0a0000000d49484452000000c8000000640804000000698fb780000000a34944415478daedd1010d000008c330ee15ff16c006219d84353da54305081001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111020260011102002024440beb7882a8b119fadc8320000000049454e44ae426082, 'image/png'),
(3, 'articleimage3.png', 0x89504e470d0a1a0a0000000d49484452000000c8000000640804000000698fb780000000a34944415478daedd1010d000008c330ee15ff16c006219d84353da54305081001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111020260011102002024440beb7882a8b119fadc8320000000049454e44ae426082, 'image/png'),
(4, 'articleimage4.png', 0x89504e470d0a1a0a0000000d49484452000000c8000000640804000000698fb780000000a34944415478daedd1010d000008c330ee15ff16c006219d84353da54305081001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111020260011102002024440beb7882a8b119fadc8320000000049454e44ae426082, 'image/png'),
(5, 'articleimage5.png', 0x89504e470d0a1a0a0000000d49484452000000c8000000640804000000698fb780000000a34944415478daedd1010d000008c330ee15ff16c006219d84353da54305081001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111020260011102002024440beb7882a8b119fadc8320000000049454e44ae426082, 'image/png'),
(6, 'articleimage6.png', 0x89504e470d0a1a0a0000000d49484452000000c8000000640804000000698fb780000000a34944415478daedd1010d000008c330ee15ff16c006219d84353da54305081001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111001012220400404888000111020260011102002024440beb7882a8b119fadc8320000000049454e44ae426082, 'image/png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `likes`
--

CREATE TABLE `likes` (
  `like_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `likes`
--

INSERT INTO `likes` (`like_id`, `article_id`, `user_id`) VALUES
(89, 1, 1),
(90, 1, 2),
(91, 1, 3),
(92, 1, 4),
(93, 2, 1),
(94, 2, 2),
(95, 3, 1),
(96, 4, 1),
(97, 4, 2),
(98, 4, 3),
(99, 4, 4),
(100, 4, 5),
(101, 4, 6),
(102, 4, 7),
(103, 5, 1),
(104, 5, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `nickname` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`user_id`, `nickname`) VALUES
(1, 'Wiktor'),
(2, 'Tomek'),
(3, 'Jacek'),
(4, 'Halina'),
(5, 'Jowita'),
(6, 'Zuzanna'),
(7, 'Hubert'),
(8, 'Hugo'),
(9, 'Franek'),
(10, 'Robert');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`,`category_id`),
  ADD KEY `image_id` (`image_id`);

--
-- Indeksy dla tabeli `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indeksy dla tabeli `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indeksy dla tabeli `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`like_id`),
  ADD KEY `article_id` (`article_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT dla tabeli `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `likes`
--
ALTER TABLE `likes`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`);

--
-- Ograniczenia dla tabeli `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `authors_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `articles` (`author_id`);

--
-- Ograniczenia dla tabeli `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);

--
-- Ograniczenia dla tabeli `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`id`) REFERENCES `articles` (`image_id`);

--
-- Ograniczenia dla tabeli `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
