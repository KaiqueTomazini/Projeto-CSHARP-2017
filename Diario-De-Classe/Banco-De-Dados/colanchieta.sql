-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 13-Nov-2017 às 18:41
-- Versão do servidor: 5.7.16
-- PHP Version: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `colanchieta`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `avisos`
--

CREATE TABLE `avisos` (
  `cod_aviso` int(11) NOT NULL,
  `texto_aviso` text NOT NULL,
  `sala_aviso` int(11) NOT NULL,
  `adicionadopor_aviso` varchar(80) NOT NULL,
  `adicionadoem_aviso` datetime NOT NULL,
  `excluido_avisos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `avisos`
--

INSERT INTO `avisos` (`cod_aviso`, `texto_aviso`, `sala_aviso`, `adicionadopor_aviso`, `adicionadoem_aviso`, `excluido_avisos`) VALUES
(1, 'Seja bem vindo ao Diário de Classe!', 1, 'Equipe', '2017-06-04 17:26:16', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `disc`
--

CREATE TABLE `disc` (
  `cod_discs` int(11) NOT NULL,
  `nome_disc` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disc`
--

INSERT INTO `disc` (`cod_discs`, `nome_disc`) VALUES
(1, 'Matemática'),
(2, 'História'),
(3, 'Biologia'),
(4, 'Física'),
(5, 'Inglês'),
(6, 'Geografia'),
(7, 'Química'),
(8, 'Literatura'),
(9, 'Gramática'),
(10, 'Produção de Texto'),
(11, 'Filosofia'),
(12, 'Sociologia'),
(13, 'Educação Física'),
(14, 'VIAe'),
(15, 'OPI'),
(16, 'Linguagem de Prog.'),
(17, 'Programação WEB'),
(18, 'Org. e Normas'),
(19, 'Redes de PCs'),
(20, 'Banco de Dados'),
(21, 'Hig,Sau,Seg.do.Trab'),
(22, 'Química Orgânica'),
(24, 'Operações Unitárias'),
(25, 'Quím.Quant. Teoria'),
(26, 'Quim.Quant. Prática'),
(27, 'Ling. Portuguesa'),
(28, 'Artes'),
(29, 'Empreendedorismo'),
(30, 'Model. de Sistema'),
(31, 'D.D.M'),
(32, 'Ciências'),
(33, 'Espanhol'),
(34, 'Experimentos Lab.'),
(35, 'Técnicas Digitais'),
(36, 'Info. Aplicada'),
(37, 'Inglês Instrumental'),
(38, 'Análise de Circ.'),
(39, 'Eletrotécnica'),
(40, 'Dir. do Consumidor'),
(41, 'Prev.Direitos Trab.'),
(42, 'Comunicação'),
(43, 'Comp.Org. e Lider.'),
(45, 'Mat. e suas Apps.'),
(46, 'Ética e Empreend.'),
(47, 'Inst. Elétricas'),
(48, 'Adm. de Produção'),
(49, 'Logísica Emp.'),
(50, 'L.E.T.T.'),
(51, 'Rot. de Dep. Pes.'),
(52, 'Mecatrônica Aplicada'),
(53, 'Eletrônica Ind.'),
(54, 'Tec. Quim. Orgânica'),
(55, 'Corrosão'),
(56, 'Análise Quantitativa'),
(57, 'Química Qualitativa'),
(58, 'Prof Andrea');

-- --------------------------------------------------------

--
-- Estrutura da tabela `feedback`
--

CREATE TABLE `feedback` (
  `cod_fb` int(11) NOT NULL,
  `nome_fb` varchar(80) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `email_fb` varchar(80) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `texto_fb` text CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `nota_fb` int(11) NOT NULL,
  `aval_fb` int(11) NOT NULL,
  `empresa_fb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `feedback`
--

INSERT INTO `feedback` (`cod_fb`, `nome_fb`, `email_fb`, `texto_fb`, `nota_fb`, `aval_fb`, `empresa_fb`) VALUES
(1, 'XXXXXXXXX', 'XXXXXXXXX@hotmail.com', 'Bem Massa', 10, 1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `horarios`
--

CREATE TABLE `horarios` (
  `cod_horarios` int(11) NOT NULL,
  `sala_horario` int(11) NOT NULL,
  `dia_semana` varchar(10) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `aula1` int(11) DEFAULT NULL,
  `aula2` int(11) DEFAULT NULL,
  `aula3` int(11) DEFAULT NULL,
  `aula4` int(11) DEFAULT NULL,
  `aula5` int(11) DEFAULT NULL,
  `aula6` int(11) DEFAULT NULL,
  `aula7` int(11) DEFAULT NULL,
  `aula8` int(11) DEFAULT NULL,
  `aula9` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `horarios`
--

INSERT INTO `horarios` (`cod_horarios`, `sala_horario`, `dia_semana`, `aula1`, `aula2`, `aula3`, `aula4`, `aula5`, `aula6`, `aula7`, `aula8`, `aula9`) VALUES
(1, 1, 'Segunda', 14, 5, 9, 8, 6, 1, 17, 18, 18),
(2, 1, 'Terça', 10, 8, 4, 6, 3, 1, 19, 19, 18),
(3, 1, 'Quarta', 7, 10, 4, 1, 115, 5, NULL, NULL, NULL),
(4, 1, 'Quinta', 9, 12, 3, 6, 1, 15, 20, 21, 21),
(6, 1, 'Sexta', 7, 11, 8, 1, 5, 4, 22, 22, 52),
(7, 5, 'Segunda', 9, 14, 13, 7, 1, 8, 27, 28, NULL),
(8, 5, 'Terça', 24, 3, 26, 4, 1, 8, 29, 29, NULL),
(9, 5, 'Quarta', 1, 4, 24, 10, 7, 11, 32, 33, NULL),
(10, 5, 'Quinta', 15, 1, 9, 3, 4, 26, 31, 31, NULL),
(11, 5, 'Sexta', 10, 24, 26, 12, 1, 8, 29, 29, NULL),
(12, 4, 'Segunda', 5, 16, 14, 1, 9, 6, NULL, NULL, NULL),
(13, 4, 'Terça', 8, 10, 1, 8, 4, 11, 89, 89, 91),
(14, 4, 'Quarta', 4, 12, 10, 16, 1, 6, 77, 91, NULL),
(15, 4, 'Quinta', 1, 13, 6, 7, 5, 8, 52, 92, 92),
(16, 4, 'Sexta', 15, 9, 7, 4, 1, 5, 113, 113, 114),
(17, 7, 'Segunda', 7, 34, 8, 16, 35, 13, 20, 80, NULL),
(18, 7, 'Terça', 16, 36, 34, 24, 34, 26, 81, 82, 83),
(19, 7, 'Quarta', 24, 16, 7, 26, 35, 12, 84, 85, 86),
(20, 7, 'Quinta', 8, 26, 34, 39, 34, 40, 87, 87, NULL),
(21, 7, 'Sexta', 38, 37, 9, 7, 15, 9, NULL, NULL, NULL),
(22, 8, 'Segunda', 13, 6, 41, 26, 42, 47, NULL, NULL, NULL),
(23, 8, 'Terça', 41, 46, 48, 45, 43, 6, 50, 51, NULL),
(24, 8, 'Quarta', 43, 3, 48, 44, 47, 41, 53, 52, 52),
(25, 8, 'Quinta', 26, 3, 12, 41, 6, 49, 54, 18, 18),
(26, 8, 'Sexta', 26, 45, 41, 43, 45, 44, 51, 51, NULL),
(27, 13, 'Segunda', 34, 7, 34, 26, 47, 16, NULL, NULL, NULL),
(28, 13, 'Terça', 36, 39, 24, 34, 16, 34, NULL, NULL, NULL),
(29, 13, 'Quarta', 47, 24, 16, 7, 5, 35, NULL, NULL, NULL),
(30, 13, 'Quinta', 40, 7, 40, 34, 13, 12, NULL, NULL, NULL),
(31, 13, 'Sexta', 8, 15, 37, 5, 8, 35, NULL, NULL, NULL),
(32, 14, 'Segunda', 55, 56, 57, 58, 57, 58, NULL, NULL, NULL),
(33, 14, 'Terça', 56, 55, 56, 58, 24, 36, NULL, NULL, NULL),
(34, 14, 'Quarta', 56, 58, 56, 58, 60, 59, NULL, NULL, NULL),
(35, 14, 'Quinta', 36, 60, 61, 57, 61, 55, NULL, NULL, NULL),
(36, 14, 'Sexta', 59, 56, 24, 58, 24, 62, NULL, NULL, NULL),
(37, 15, 'Segunda', 56, 55, 56, 57, 58, 57, NULL, NULL, NULL),
(38, 15, 'Terça', 55, 56, 41, 61, 36, 24, NULL, NULL, NULL),
(39, 15, 'Quarta', 58, 56, 58, 62, 59, 60, NULL, NULL, NULL),
(40, 15, 'Quinta', 60, 55, 59, 61, 57, 36, NULL, NULL, NULL),
(41, 15, 'Sexta', 56, 58, 56, 24, 58, 24, NULL, NULL, NULL),
(42, 16, 'Segunda', 63, 62, 64, 39, 64, 39, NULL, NULL, NULL),
(43, 16, 'Terça', 65, 66, 64, 66, 64, 67, NULL, NULL, NULL),
(44, 16, 'Quarta', 64, 66, 64, 66, 44, 65, NULL, NULL, NULL),
(45, 16, 'Quinta', 63, 36, 66, 67, 44, 67, NULL, NULL, NULL),
(46, 16, 'Sexta', 36, 63, 66, 59, 44, 59, NULL, NULL, NULL),
(47, 2, 'Segunda', 1, 9, 7, 6, 16, 5, NULL, NULL, NULL),
(48, 2, 'Terça', 4, 16, 8, 1, 10, NULL, NULL, NULL, NULL),
(49, 2, 'Quarta', 14, 1, 12, 6, 4, 10, NULL, NULL, NULL),
(50, 2, 'Quinta', 7, 8, 8, 1, 9, 13, NULL, NULL, NULL),
(51, 2, 'Sexta', 1, 5, 15, 4, 11, 6, NULL, NULL, NULL),
(52, 17, 'Segunda', 68, 69, 68, 59, 65, 70, NULL, NULL, NULL),
(53, 17, 'Terça', 62, 69, 55, 36, 70, 57, NULL, NULL, NULL),
(54, 17, 'Quarta', 68, 69, 68, 60, 69, 65, NULL, NULL, NULL),
(55, 17, 'Quinta', 70, 36, 55, 55, 60, 57, NULL, NULL, NULL),
(56, 17, 'Sexta', 69, 68, 59, 68, 57, 69, NULL, NULL, NULL),
(57, 18, 'Segunda', 69, 68, 55, 68, 70, 65, NULL, NULL, NULL),
(58, 18, 'Terça', 69, 62, 36, 70, 57, 70, NULL, NULL, NULL),
(59, 18, 'Quarta', 69, 68, 60, 68, 65, 69, NULL, NULL, NULL),
(60, 18, 'Quinta', 55, 69, 36, 60, 55, 59, NULL, NULL, NULL),
(61, 18, 'Sexta', 68, 59, 68, 57, 37, 57, NULL, NULL, NULL),
(62, 19, 'Segunda', 65, 63, 39, 64, 39, 64, NULL, NULL, NULL),
(63, 19, 'Terça', 66, 62, 66, 64, 67, 64, NULL, NULL, NULL),
(64, 19, 'Quarta', 66, 64, 66, 64, 65, 7, NULL, NULL, NULL),
(65, 19, 'Quinta', 36, 63, 67, 66, 67, 44, NULL, NULL, NULL),
(66, 19, 'Sexta', 63, 36, 59, 66, 59, 44, NULL, NULL, NULL),
(67, 20, 'Segunda', 41, 13, 42, 43, 41, 26, NULL, NULL, NULL),
(68, 20, 'Terça', 3, 47, 45, 41, 6, 48, NULL, NULL, NULL),
(69, 20, 'Quarta', 26, 6, 47, 3, 45, 44, NULL, NULL, NULL),
(70, 20, 'Quinta', 71, 41, 44, 43, 12, 6, NULL, NULL, NULL),
(71, 20, 'Sexta', 26, 45, 41, 48, 49, 43, NULL, NULL, NULL),
(72, 21, 'Segunda', 6, 41, 47, 42, 26, 48, 102, 76, 52),
(73, 21, 'Terça', 45, 41, 46, 43, 48, 3, NULL, NULL, NULL),
(74, 21, 'Quarta', 6, 47, 3, 13, 41, 45, 105, 105, 106),
(75, 21, 'Quinta', 12, 44, 41, 49, 43, 45, 107, 72, 72),
(76, 21, 'Sexta', 44, 26, 43, 6, 41, 26, 104, NULL, NULL),
(77, 6, 'Segunda', NULL, NULL, NULL, NULL, NULL, NULL, 72, 72, 73),
(78, 6, 'Terça', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 6, 'Quarta', NULL, NULL, NULL, NULL, NULL, NULL, 74, 74, 75),
(80, 6, 'Quinta', NULL, NULL, NULL, NULL, NULL, NULL, 77, 76, 76),
(81, 6, 'Sexta', NULL, NULL, NULL, NULL, NULL, NULL, 78, 79, 79),
(82, 22, 'Segunda', 42, 26, 48, 41, 13, 43, NULL, NULL, NULL),
(83, 22, 'Terça', 47, 6, 3, 49, 41, 45, NULL, NULL, NULL),
(84, 22, 'Quarta', 44, 26, 45, 47, 6, 3, NULL, NULL, NULL),
(85, 22, 'Quinta', 41, 71, 26, 48, 41, 43, NULL, NULL, NULL),
(86, 22, 'Sexta', 43, 41, 12, 45, 6, 44, NULL, NULL, NULL),
(87, 23, 'Segunda', 64, 47, 5, 35, 8, 64, NULL, NULL, NULL),
(88, 23, 'Terça', 39, 64, 16, 94, 5, 64, NULL, NULL, NULL),
(89, 23, 'Quarta', 16, 64, 44, 35, 12, 16, NULL, NULL, NULL),
(90, 23, 'Quinta', 95, 15, 13, 8, 44, 5, NULL, NULL, NULL),
(91, 23, 'Sexta', 94, 95, 47, 44, 36, 11, NULL, NULL, NULL),
(92, 24, 'Segunda', 8, 64, 16, 9, 64, 35, 112, 112, NULL),
(93, 24, 'Terça', 64, 24, 40, 26, 64, 16, 27, 83, NULL),
(94, 24, 'Quarta', 64, 7, 26, 12, 16, 7, 101, 80, NULL),
(95, 24, 'Quinta', 39, 40, 15, 13, 8, 37, 86, 84, NULL),
(96, 24, 'Sexta', 24, 9, 7, 26, 35, 36, 81, 82, NULL),
(97, 25, 'Segunda', 47, 42, 26, 48, 43, 41, NULL, NULL, NULL),
(98, 25, 'Terça', 6, 45, 47, 3, 26, 41, NULL, NULL, NULL),
(99, 25, 'Quarta', 49, 44, 43, 48, 3, 13, NULL, NULL, NULL),
(100, 25, 'Quinta', 45, 6, 71, 44, 26, 41, NULL, NULL, NULL),
(101, 25, 'Sexta', 41, 6, 45, 43, 12, 41, NULL, NULL, NULL),
(102, 26, 'Segunda', 26, 1, 6, 47, 48, 42, NULL, NULL, NULL),
(103, 26, 'Terça', 46, 1, 49, 48, 45, 43, 31, 31, NULL),
(104, 26, 'Quarta', 3, 43, 1, 45, 44, 26, 108, 109, NULL),
(105, 26, 'Quinta', 13, 45, 1, 26, 3, 44, 110, 110, 110),
(106, 26, 'Sexta', 6, 1, 6, 47, 43, 12, 109, 111, 111),
(107, 27, 'Segunda', 96, 58, 58, 70, 38, 59, NULL, NULL, NULL),
(108, 27, 'Terça', 14, 58, 62, 38, 97, 65, NULL, NULL, NULL),
(109, 27, 'Quarta', 38, 60, 65, 38, 70, 96, NULL, NULL, NULL),
(110, 27, 'Quinta', 97, 70, 58, 58, 38, 60, NULL, NULL, NULL),
(111, 27, 'Sexta', 97, 96, 58, 38, 59, 14, NULL, NULL, NULL),
(112, 28, 'Segunda', 96, 58, 58, 70, 38, 59, NULL, NULL, NULL),
(113, 28, 'Terça', 14, 58, 62, 38, 97, 65, NULL, NULL, NULL),
(114, 28, 'Quarta', 60, 65, 38, 65, 14, 38, NULL, NULL, NULL),
(115, 28, 'Quinta', 58, 58, 60, 59, 70, 97, NULL, NULL, NULL),
(116, 28, 'Sexta', 58, 38, 96, 97, 62, 38, NULL, NULL, NULL),
(117, 29, 'Segunda', 57, 57, 64, 64, 14, 63, NULL, NULL, NULL),
(118, 29, 'Terça', 38, 38, 64, 64, 65, 14, NULL, NULL, NULL),
(119, 29, 'Quarta', 65, 38, 64, 64, 38, 70, NULL, NULL, NULL),
(120, 29, 'Quinta', 63, 59, 57, 70, 39, 70, NULL, NULL, NULL),
(121, 29, 'Sexta', 39, 62, 38, 59, 38, 63, NULL, NULL, NULL),
(122, 30, 'Segunda', 70, 38, 59, 62, 34, 96, NULL, NULL, NULL),
(123, 30, 'Terça', 61, 14, 39, 98, 61, 97, NULL, NULL, NULL),
(124, 30, 'Quarta', 98, 34, 70, 96, 34, 98, NULL, NULL, NULL),
(125, 30, 'Quinta', 34, 39, 70, 14, 59, 98, NULL, NULL, NULL),
(126, 30, 'Sexta', 98, 34, 97, 34, 96, 97, NULL, NULL, NULL),
(127, 31, 'Segunda', 59, 70, 98, 96, 62, 14, NULL, NULL, NULL),
(128, 31, 'Terça', 34, 61, 14, 39, 98, 61, NULL, NULL, NULL),
(129, 31, 'Quarta', 70, 98, 34, 70, 96, 34, NULL, NULL, NULL),
(130, 31, 'Quinta', 98, 34, 97, 98, 97, 34, NULL, NULL, NULL),
(131, 31, 'Sexta', 34, 39, 98, 96, 97, 59, NULL, NULL, NULL),
(132, 32, 'Segunda', 98, 96, 70, 34, 59, 62, NULL, NULL, NULL),
(133, 32, 'Terça', 70, 34, 61, 14, 39, 98, NULL, NULL, NULL),
(134, 32, 'Quarta', 34, 70, 98, 34, 98, 14, NULL, NULL, NULL),
(135, 32, 'Quinta', 59, 97, 39, 97, 98, 61, NULL, NULL, NULL),
(136, 32, 'Sexta', 96, 97, 34, 98, 34, 96, NULL, NULL, NULL),
(137, 33, 'Segunda', NULL, NULL, NULL, NULL, NULL, NULL, 99, 100, NULL),
(138, 33, 'Terça', NULL, NULL, NULL, NULL, NULL, NULL, 27, 83, NULL),
(139, 33, 'Quarta', NULL, NULL, NULL, NULL, NULL, NULL, 80, 101, NULL),
(140, 33, 'Quinta', NULL, NULL, NULL, NULL, NULL, NULL, 87, 87, NULL),
(141, 33, 'Sexta', NULL, NULL, NULL, NULL, NULL, NULL, 81, 82, NULL),
(142, 12, 'Segunda', 116, 116, 117, 117, 121, NULL, NULL, NULL, NULL),
(147, 12, 'Terça', 117, 117, 121, 116, 42, NULL, NULL, NULL, NULL),
(148, 12, 'Quarta', 116, 116, 62, 117, 117, NULL, NULL, NULL, NULL),
(149, 12, 'Quinta', 117, 116, 116, 122, 42, NULL, NULL, NULL, NULL),
(150, 12, 'Sexta', 118, 119, 120, 116, 117, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `horariosnovo`
--

CREATE TABLE `horariosnovo` (
  `cod_horarios` int(11) NOT NULL,
  `sala_horarios` int(11) NOT NULL,
  `aula` int(11) NOT NULL,
  `segunda_horario` int(11) DEFAULT NULL,
  `terca_horario` int(11) DEFAULT NULL,
  `quarta_horario` int(11) DEFAULT NULL,
  `quinta_horario` int(11) DEFAULT NULL,
  `sexta_horario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `horariosnovo`
--

INSERT INTO `horariosnovo` (`cod_horarios`, `sala_horarios`, `aula`, `segunda_horario`, `terca_horario`, `quarta_horario`, `quinta_horario`, `sexta_horario`) VALUES
(1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(2, 0, 2, NULL, NULL, NULL, NULL, NULL),
(3, 0, 3, NULL, NULL, NULL, NULL, NULL),
(4, 0, 4, NULL, NULL, NULL, NULL, NULL),
(5, 0, 5, NULL, NULL, NULL, NULL, NULL),
(6, 0, 6, NULL, NULL, NULL, NULL, NULL),
(7, 0, 7, NULL, NULL, NULL, NULL, NULL),
(8, 0, 8, NULL, NULL, NULL, NULL, NULL),
(9, 0, 9, NULL, NULL, NULL, NULL, NULL),
(10, 33, 1, NULL, NULL, NULL, NULL, NULL),
(11, 33, 2, NULL, NULL, NULL, NULL, NULL),
(12, 33, 3, NULL, NULL, NULL, NULL, NULL),
(13, 33, 4, NULL, NULL, NULL, NULL, NULL),
(14, 33, 5, NULL, NULL, NULL, NULL, NULL),
(15, 33, 6, NULL, NULL, NULL, NULL, NULL),
(16, 33, 7, 99, 27, 80, 87, 81),
(17, 33, 8, 100, 83, 101, 87, 82),
(18, 33, 9, NULL, NULL, NULL, NULL, NULL),
(19, 6, 1, NULL, NULL, NULL, NULL, NULL),
(20, 6, 2, NULL, NULL, NULL, NULL, NULL),
(21, 6, 3, NULL, NULL, NULL, NULL, NULL),
(22, 6, 4, NULL, NULL, NULL, NULL, NULL),
(23, 6, 5, NULL, NULL, NULL, NULL, NULL),
(24, 6, 6, NULL, NULL, NULL, NULL, NULL),
(25, 6, 7, 72, NULL, 74, 77, 78),
(26, 6, 8, 72, NULL, 74, 76, 79),
(27, 6, 9, 73, NULL, 75, 76, 79),
(28, 9, 1, NULL, NULL, NULL, NULL, NULL),
(29, 9, 2, NULL, NULL, NULL, NULL, NULL),
(30, 9, 3, NULL, NULL, NULL, NULL, NULL),
(31, 9, 4, NULL, NULL, NULL, NULL, NULL),
(32, 9, 5, NULL, NULL, NULL, NULL, NULL),
(33, 9, 6, NULL, NULL, NULL, NULL, NULL),
(34, 9, 7, NULL, NULL, NULL, NULL, NULL),
(35, 9, 8, NULL, NULL, NULL, NULL, NULL),
(36, 9, 9, NULL, NULL, NULL, NULL, NULL),
(37, 10, 1, NULL, NULL, NULL, NULL, NULL),
(38, 10, 2, NULL, NULL, NULL, NULL, NULL),
(39, 10, 3, NULL, NULL, NULL, NULL, NULL),
(40, 10, 4, NULL, NULL, NULL, NULL, NULL),
(41, 10, 5, NULL, NULL, NULL, NULL, NULL),
(42, 10, 6, NULL, NULL, NULL, NULL, NULL),
(43, 10, 7, NULL, NULL, NULL, NULL, NULL),
(44, 10, 8, NULL, NULL, NULL, NULL, NULL),
(45, 10, 9, NULL, NULL, NULL, NULL, NULL),
(46, 11, 1, 123, 123, 123, 123, 123),
(47, 11, 2, 123, 123, 123, 123, 123),
(48, 11, 3, 123, 121, 62, 123, 123),
(49, 11, 4, 123, 123, 123, 60, 123),
(50, 11, 5, 121, 42, 123, 42, 123),
(51, 11, 6, NULL, NULL, NULL, NULL, NULL),
(52, 11, 7, NULL, NULL, NULL, NULL, NULL),
(53, 11, 8, NULL, NULL, NULL, NULL, NULL),
(54, 11, 9, NULL, NULL, NULL, NULL, NULL),
(55, 12, 1, 116, 117, 116, 117, 118),
(56, 12, 2, 116, 117, 116, 116, 119),
(57, 12, 3, 117, 121, 62, 116, 120),
(58, 12, 4, 117, 116, 117, 122, 116),
(59, 12, 5, 121, 42, 117, 42, 117),
(60, 12, 6, NULL, NULL, NULL, NULL, NULL),
(61, 12, 7, NULL, NULL, NULL, NULL, NULL),
(62, 12, 8, NULL, NULL, NULL, NULL, NULL),
(63, 12, 9, NULL, NULL, NULL, NULL, NULL),
(64, 14, 1, 55, 56, 56, 36, 59),
(65, 14, 2, 56, 55, 58, 60, 56),
(66, 14, 3, 57, 56, 56, 61, 24),
(67, 14, 4, 58, 58, 58, 57, 58),
(68, 14, 5, 57, 24, 60, 61, 24),
(69, 14, 6, 58, 36, 59, 55, 62),
(70, 14, 7, NULL, NULL, NULL, NULL, NULL),
(71, 14, 8, NULL, NULL, NULL, NULL, NULL),
(72, 14, 9, NULL, NULL, NULL, NULL, NULL),
(73, 15, 1, 56, 55, 58, 60, 56),
(74, 15, 2, 55, 56, 56, 55, 58),
(75, 15, 3, 56, 41, 58, 59, 56),
(76, 15, 4, 57, 61, 62, 61, 24),
(77, 15, 5, 58, 36, 59, 57, 58),
(78, 15, 6, 57, 24, 60, 36, 24),
(79, 15, 7, NULL, NULL, NULL, NULL, NULL),
(80, 15, 8, NULL, NULL, NULL, NULL, NULL),
(81, 15, 9, NULL, NULL, NULL, NULL, NULL),
(82, 16, 1, 63, 65, 64, 63, 36),
(83, 16, 2, 62, 66, 66, 36, 63),
(84, 16, 3, 64, 64, 64, 66, 66),
(85, 16, 4, 39, 66, 66, 67, 59),
(86, 16, 5, 64, 64, 44, 44, 44),
(87, 16, 6, 39, 67, 65, 67, 59),
(88, 16, 7, NULL, NULL, NULL, NULL, NULL),
(89, 16, 8, NULL, NULL, NULL, NULL, NULL),
(90, 16, 9, NULL, NULL, NULL, NULL, NULL),
(91, 17, 1, 68, 62, 68, 70, 69),
(92, 17, 2, 69, 69, 69, 36, 68),
(93, 17, 3, 68, 55, 68, 55, 59),
(94, 17, 4, 59, 36, 60, 55, 68),
(95, 17, 5, 65, 70, 69, 60, 57),
(96, 17, 6, 70, 57, 65, 57, 69),
(97, 17, 7, NULL, NULL, NULL, NULL, NULL),
(98, 17, 8, NULL, NULL, NULL, NULL, NULL),
(99, 17, 9, NULL, NULL, NULL, NULL, NULL),
(100, 18, 1, 69, 69, 69, 55, 68),
(101, 18, 2, 68, 62, 68, 69, 59),
(102, 18, 3, 55, 36, 60, 36, 68),
(103, 18, 4, 68, 70, 68, 60, 57),
(104, 18, 5, 70, 57, 65, 55, 37),
(105, 18, 6, 65, 70, 69, 59, 57),
(106, 18, 7, NULL, NULL, NULL, NULL, NULL),
(107, 18, 8, NULL, NULL, NULL, NULL, NULL),
(108, 18, 9, NULL, NULL, NULL, NULL, NULL),
(109, 19, 1, 65, 66, 66, 36, 63),
(110, 19, 2, 63, 62, 64, 63, 36),
(111, 19, 3, 39, 66, 66, 67, 59),
(112, 19, 4, 64, 64, 64, 66, 66),
(113, 19, 5, 39, 67, 65, 67, 59),
(114, 19, 6, 64, 64, 7, 44, 44),
(115, 19, 7, NULL, NULL, NULL, NULL, NULL),
(116, 19, 8, NULL, NULL, NULL, NULL, NULL),
(117, 19, 9, NULL, NULL, NULL, NULL, NULL),
(118, 27, 1, 96, 14, 38, 97, 97),
(119, 27, 2, 58, 58, 60, 70, 96),
(120, 27, 3, 58, 62, 65, 58, 58),
(121, 27, 4, 70, 38, 38, 58, 38),
(122, 27, 5, 38, 97, 70, 38, 59),
(123, 27, 6, 59, 65, 96, 60, 14),
(124, 27, 7, NULL, NULL, NULL, NULL, NULL),
(125, 27, 8, NULL, NULL, NULL, NULL, NULL),
(126, 27, 9, NULL, NULL, NULL, NULL, NULL),
(127, 28, 1, 96, 14, 60, 58, 58),
(128, 28, 2, 58, 58, 65, 58, 38),
(129, 28, 3, 58, 62, 38, 60, 96),
(130, 28, 4, 70, 38, 65, 59, 97),
(131, 28, 5, 38, 97, 14, 70, 62),
(132, 28, 6, 59, 65, 38, 97, 38),
(133, 28, 7, NULL, NULL, NULL, NULL, NULL),
(134, 28, 8, NULL, NULL, NULL, NULL, NULL),
(135, 28, 9, NULL, NULL, NULL, NULL, NULL),
(136, 29, 1, 57, 38, 65, 63, 39),
(137, 29, 2, 57, 38, 38, 59, 62),
(138, 29, 3, 64, 64, 64, 57, 38),
(139, 29, 4, 64, 64, 64, 70, 59),
(140, 29, 5, 14, 65, 38, 39, 38),
(141, 29, 6, 63, 14, 70, 70, 63),
(142, 29, 7, NULL, NULL, NULL, NULL, NULL),
(143, 29, 8, NULL, NULL, NULL, NULL, NULL),
(144, 29, 9, NULL, NULL, NULL, NULL, NULL),
(145, 30, 1, 70, 61, 98, 34, 98),
(146, 30, 2, 38, 14, 34, 39, 34),
(147, 30, 3, 59, 39, 70, 70, 97),
(148, 30, 4, 62, 98, 96, 14, 34),
(149, 30, 5, 34, 61, 34, 59, 96),
(150, 30, 6, 96, 97, 98, 98, 97),
(151, 30, 7, NULL, NULL, NULL, NULL, NULL),
(152, 30, 8, NULL, NULL, NULL, NULL, NULL),
(153, 30, 9, NULL, NULL, NULL, NULL, NULL),
(154, 31, 1, 59, 34, 70, 98, 34),
(155, 31, 2, 70, 61, 98, 34, 39),
(156, 31, 3, 98, 14, 34, 97, 98),
(157, 31, 4, 96, 39, 70, 98, 96),
(158, 31, 5, 62, 98, 96, 97, 97),
(159, 31, 6, 14, 61, 34, 34, 59),
(160, 31, 7, NULL, NULL, NULL, NULL, NULL),
(161, 31, 8, NULL, NULL, NULL, NULL, NULL),
(162, 31, 9, NULL, NULL, NULL, NULL, NULL),
(163, 32, 1, 98, 70, 34, 59, 96),
(164, 32, 2, 96, 34, 70, 97, 97),
(165, 32, 3, 70, 61, 98, 39, 34),
(166, 32, 4, 34, 14, 34, 97, 98),
(167, 32, 5, 59, 39, 98, 98, 34),
(168, 32, 6, 62, 98, 14, 61, 96),
(169, 32, 7, NULL, NULL, NULL, NULL, NULL),
(170, 32, 8, NULL, NULL, NULL, NULL, NULL),
(171, 32, 9, NULL, NULL, NULL, NULL, NULL),
(172, 23, 1, 64, 39, 16, 95, 94),
(173, 23, 2, 47, 64, 64, 15, 95),
(174, 23, 3, 5, 16, 44, 13, 47),
(175, 23, 4, 35, 94, 35, 8, 44),
(176, 23, 5, 8, 5, 12, 44, 36),
(177, 23, 6, 64, 64, 16, 5, 11),
(178, 23, 7, NULL, NULL, NULL, NULL, NULL),
(179, 23, 8, NULL, NULL, NULL, NULL, NULL),
(180, 23, 9, NULL, NULL, NULL, NULL, NULL),
(181, 13, 1, 34, 36, 47, 40, 8),
(182, 13, 2, 7, 39, 24, 7, 15),
(183, 13, 3, 34, 24, 16, 40, 37),
(184, 13, 4, 26, 34, 7, 34, 5),
(185, 13, 5, 47, 16, 5, 13, 8),
(186, 13, 6, 16, 34, 35, 12, 35),
(187, 13, 7, NULL, NULL, NULL, NULL, NULL),
(188, 13, 8, NULL, NULL, NULL, NULL, NULL),
(189, 13, 9, NULL, NULL, NULL, NULL, NULL),
(190, 24, 1, 8, 64, 64, 39, 24),
(191, 24, 2, 64, 24, 7, 40, 9),
(192, 24, 3, 16, 40, 26, 15, 7),
(193, 24, 4, 9, 26, 12, 13, 26),
(194, 24, 5, 64, 64, 16, 8, 35),
(195, 24, 6, 35, 16, 7, 37, 36),
(196, 24, 7, 112, 27, 101, 86, 81),
(197, 24, 8, 112, 83, 80, 84, 82),
(198, 24, 9, NULL, NULL, NULL, NULL, NULL),
(199, 7, 1, 7, 16, 24, 8, 38),
(200, 7, 2, 34, 36, 16, 26, 37),
(201, 7, 3, 8, 34, 7, 34, 9),
(202, 7, 4, 16, 24, 26, 39, 7),
(203, 7, 5, 35, 34, 35, 34, 15),
(204, 7, 6, 13, 26, 12, 40, 9),
(205, 7, 7, 20, 81, 84, 87, NULL),
(206, 7, 8, 80, 82, 85, 87, NULL),
(207, 7, 9, NULL, 83, 86, NULL, NULL),
(208, 2, 1, 1, 4, 14, 7, 1),
(209, 2, 2, 9, 16, 1, 8, 5),
(210, 2, 3, 7, 8, 12, 8, 15),
(211, 2, 4, 6, 1, 6, 1, 4),
(212, 2, 5, 16, 10, 4, 9, 11),
(213, 2, 6, 5, NULL, 10, 13, 6),
(214, 2, 7, NULL, NULL, NULL, NULL, NULL),
(215, 2, 8, NULL, NULL, NULL, NULL, NULL),
(216, 2, 9, NULL, NULL, NULL, NULL, NULL),
(217, 3, 1, 16, 1, 12, 6, 5),
(218, 3, 2, 8, 4, 14, 9, 8),
(219, 3, 3, 1, 6, 6, 7, 1),
(220, 3, 4, 13, 16, 4, 4, 8),
(221, 3, 5, 5, 11, 10, 15, 7),
(222, 3, 6, 9, 10, 1, 1, 5),
(223, 3, 7, NULL, NULL, NULL, NULL, NULL),
(224, 3, 8, NULL, NULL, NULL, NULL, NULL),
(225, 3, 9, NULL, NULL, NULL, NULL, NULL),
(226, 4, 1, 5, 8, 4, 1, 15),
(227, 4, 2, 16, 10, 12, 13, 9),
(228, 4, 3, 14, 1, 10, 6, 7),
(229, 4, 4, 1, 8, 16, 7, 4),
(230, 4, 5, 9, 4, 1, 5, 1),
(231, 4, 6, 6, 11, 6, 8, 5),
(232, 4, 7, NULL, 89, 77, 52, 113),
(233, 4, 8, NULL, 89, 91, 92, 113),
(234, 4, 9, NULL, 91, NULL, 92, 114),
(235, 5, 1, 9, 24, 1, 15, 10),
(236, 5, 2, 14, 3, 4, 1, 24),
(237, 5, 3, 13, 26, 24, 9, 26),
(238, 5, 4, 7, 4, 10, 3, 12),
(239, 5, 5, 1, 1, 7, 4, 1),
(240, 5, 6, 8, 8, 11, 26, 8),
(241, 5, 7, 27, 29, 32, 31, 29),
(242, 5, 8, 28, 29, 33, 31, 29),
(243, 5, 9, NULL, NULL, NULL, NULL, NULL),
(244, 1, 1, 14, 10, 7, 9, 7),
(245, 1, 2, 5, 8, 10, 12, 11),
(246, 1, 3, 9, 4, 4, 3, 8),
(247, 1, 4, 8, 6, 1, 6, 1),
(248, 1, 5, 6, 3, 115, 1, 5),
(249, 1, 6, 1, 1, 5, 15, 4),
(250, 1, 7, 17, 19, NULL, 20, 22),
(251, 1, 8, 18, 19, NULL, 21, 22),
(252, 1, 9, 18, 18, NULL, 21, 52),
(253, 22, 1, 42, 47, 44, 41, 43),
(254, 22, 2, 26, 6, 26, 71, 41),
(255, 22, 3, 48, 3, 45, 26, 12),
(256, 22, 4, 41, 49, 47, 48, 45),
(257, 22, 5, 13, 41, 6, 41, 6),
(258, 22, 6, 43, 45, 3, 43, 44),
(259, 22, 7, NULL, NULL, NULL, NULL, NULL),
(260, 22, 8, NULL, NULL, NULL, NULL, NULL),
(261, 22, 9, NULL, NULL, NULL, NULL, NULL),
(262, 25, 1, 47, 6, 49, 45, 41),
(263, 25, 2, 42, 45, 44, 6, 6),
(264, 25, 3, 26, 47, 43, 71, 45),
(265, 25, 4, 48, 3, 48, 44, 43),
(266, 25, 5, 43, 26, 3, 26, 12),
(267, 25, 6, 41, 41, 13, 41, 41),
(268, 25, 7, NULL, NULL, NULL, NULL, NULL),
(269, 25, 8, NULL, NULL, NULL, NULL, NULL),
(270, 25, 9, NULL, NULL, NULL, NULL, NULL),
(271, 20, 1, 41, 3, 26, 71, 26),
(272, 20, 2, 13, 47, 6, 41, 45),
(273, 20, 3, 42, 45, 47, 44, 41),
(274, 20, 4, 43, 41, 3, 43, 48),
(275, 20, 5, 41, 6, 45, 12, 49),
(276, 20, 6, 26, 48, 44, 6, 43),
(277, 20, 7, NULL, NULL, NULL, NULL, NULL),
(278, 20, 8, NULL, NULL, NULL, NULL, NULL),
(279, 20, 9, NULL, NULL, NULL, NULL, NULL),
(280, 21, 1, 6, 45, 6, 12, 44),
(281, 21, 2, 41, 41, 47, 44, 26),
(282, 21, 3, 47, 46, 3, 41, 43),
(283, 21, 4, 42, 43, 13, 49, 6),
(284, 21, 5, 26, 48, 41, 43, 41),
(285, 21, 6, 48, 3, 45, 45, 26),
(286, 21, 7, 102, NULL, 105, 107, 104),
(287, 21, 8, 76, NULL, 105, 72, NULL),
(288, 21, 9, 52, NULL, 106, 72, NULL),
(289, 8, 1, 13, 41, 43, 26, 26),
(290, 8, 2, 6, 46, 3, 3, 45),
(291, 8, 3, 41, 48, 48, 12, 41),
(292, 8, 4, 26, 45, 44, 41, 43),
(293, 8, 5, 42, 43, 47, 6, 45),
(294, 8, 6, 47, 6, 41, 49, 44),
(295, 8, 7, NULL, 50, 53, 54, 51),
(296, 8, 8, NULL, 51, 52, 18, 51),
(297, 8, 9, NULL, NULL, 52, 18, NULL),
(298, 26, 1, 26, 46, 3, 13, 6),
(299, 26, 2, 1, 1, 43, 45, 1),
(300, 26, 3, 6, 49, 1, 1, 6),
(301, 26, 4, 47, 48, 45, 26, 47),
(302, 26, 5, 48, 45, 44, 3, 43),
(303, 26, 6, 42, 43, 26, 44, 12),
(304, 26, 7, NULL, 31, 108, 110, 109),
(305, 26, 8, NULL, 31, 109, 110, 111),
(306, 26, 9, NULL, NULL, NULL, 110, 111);

-- --------------------------------------------------------

--
-- Estrutura da tabela `info_diario`
--

CREATE TABLE `info_diario` (
  `cod_diario` int(11) NOT NULL,
  `versao` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `info_diario`
--

INSERT INTO `info_diario` (`cod_diario`, `versao`) VALUES
(1, 'BETA Fechado 0.9');

-- --------------------------------------------------------

--
-- Estrutura da tabela `info_salas`
--

CREATE TABLE `info_salas` (
  `cod_sala` int(11) NOT NULL,
  `nome_sala` varchar(20) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `numero_sala` smallint(6) DEFAULT NULL,
  `andar` varchar(10) DEFAULT NULL,
  `bloco` varchar(10) DEFAULT NULL,
  `curso` varchar(80) DEFAULT NULL,
  `rep1` varchar(80) DEFAULT NULL,
  `rep2` varchar(80) DEFAULT NULL,
  `coord` int(3) DEFAULT NULL,
  `fund_medio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `info_salas`
--

INSERT INTO `info_salas` (`cod_sala`, `nome_sala`, `numero_sala`, `andar`, `bloco`, `curso`, `rep1`, `rep2`, `coord`, `fund_medio`) VALUES
(0, '', 0, '0', '0', '0', NULL, NULL, NULL, 0),
(1, '2º EMC C', 111, '1', 'C', 'Técnico em Informática', 'XXXXX XXXXX', 'XXXXXXXXXXXXXXX', 1, 3),
(2, '2º EM A', NULL, '1', 'C', 'Acadêmico', '', '', NULL, 3),
(3, '2º EM B', NULL, '1', 'C', 'Acadêmico', '', '', NULL, 3),
(4, '2º EMC A', 108, '1', 'C', 'Técnico em Administração', 'XXXX XXXXXXXX', '', 13, 3),
(5, '2º EMC B/D', 107, '1', 'C', 'Técnico em Química e Eletrônica', 'XXXXXXXXX XXXXXXXXX', 'XXXXXX XXXX', 7, 3),
(6, '2º EMC D', 0, '0', '0', '0', NULL, NULL, NULL, 0),
(7, '1º EMC C', 109, '1', 'C', 'Técnico em Informática', NULL, '', NULL, 3),
(8, '3º EMC C', 0, '2', 'C', 'Técnico em Informática', NULL, '', NULL, 3),
(9, '2º B', 0, '0', 'ABC', 'Ensino Fundamental I', NULL, NULL, NULL, 1),
(10, '3º B', 0, '0', 'ABC', 'Ensino Fundamental I', NULL, NULL, NULL, 1),
(11, '4º C', NULL, '1', 'ABC', 'Ensino Fundamental I', '', '', 65, 1),
(12, '4º D', 0, '1', 'ABC', 'Ensino Fundamental I', NULL, NULL, 62, 1),
(13, '1º EMC A', NULL, '1', 'C', 'Técnico em Administração', '', '', NULL, 3),
(14, '6º A', NULL, '1', 'A', 'Ensino Fundamental II', '', '', NULL, 2),
(15, '6º B', NULL, '1', 'A', 'Ensino Fundamental II', '', '', NULL, 2),
(16, '6º C', NULL, '1', 'A', 'Ensino Fundamental II', '', '', NULL, 2),
(17, '7º A', NULL, '1', 'A', 'Ensino Fundamental II', '', '', NULL, 2),
(18, '7º B', NULL, '0', 'A', 'Ensino Fundamental II', '', '', NULL, 2),
(19, '7º C', NULL, '0', 'A', 'Ensino Fundamental II', '', '', NULL, 2),
(20, '3º EMC A', NULL, '2', 'C', 'Técnico em Administração', '', '', NULL, 3),
(21, '3º EMC B', NULL, '2', 'C', 'Técnico em Eletrônica', '', '', NULL, 3),
(22, '3º EM A', NULL, '2', 'C', 'Acadêmico', '', '', NULL, 3),
(23, '1º EMAX', NULL, '0', 'C', 'Acadêmico Maximizado', '', '', NULL, 3),
(24, '1º EMC B/D', NULL, '1', 'C', 'Técnico em Química e Eletrônica', '', '', NULL, 3),
(25, '3º EM B', NULL, '2', 'C', 'Acadêmico', '', '', NULL, 3),
(26, '3º EMC D', NULL, '2', 'C', 'Técnico em Química', '', '', NULL, 3),
(27, '8º A', NULL, '2', 'A', 'Ensino Fundamental II', '', '', NULL, 2),
(28, '8º B', NULL, '2', 'A', 'Ensino Fundamental II', '', '', NULL, 2),
(29, '8º C', NULL, '2', 'A', 'Ensino Fundamental II', '', '', NULL, 2),
(30, '9º A', NULL, '2', 'A', 'Ensino Fundamental II', '', '', NULL, 2),
(31, '9º B', NULL, '2', 'A', 'Ensino Fundamental II', '', '', NULL, 2),
(32, '9º C', NULL, '2', 'A', 'Ensino Fundamental II', '', '', NULL, 2),
(33, '1º EMC D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `licoes`
--

CREATE TABLE `licoes` (
  `cod` int(11) NOT NULL,
  `licao` text NOT NULL,
  `resumo` text NOT NULL,
  `diaentrega` int(11) NOT NULL,
  `mesentrega` int(11) NOT NULL,
  `adicionadopor` varchar(80) NOT NULL,
  `adicionadoem` datetime NOT NULL,
  `sala` int(11) NOT NULL,
  `disc` int(11) NOT NULL,
  `link_anexo` text,
  `avaliado` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `licoes`
--

INSERT INTO `licoes` (`cod`, `licao`, `resumo`, `diaentrega`, `mesentrega`, `adicionadopor`, `adicionadoem`, `sala`, `disc`, `link_anexo`, `avaliado`) VALUES
(1, 'TESTE AVALIADO -1  Tarefa Páginas 16 e 17 Frente A (Álgebra)', 'Mat. Pgs 16, 17', 9, 5, 'Usuário de Teste', '2017-05-08 20:00:00', 1, 1, NULL, -1),
(2, 'TESTE AVALIADO 0 Tarefa Páginas 16 e 17 Frente A (Álgebra)', 'Mat. Pgs 16, 17', 9, 5, 'Usuário de Teste', '2017-05-08 20:00:00', 1, 1, NULL, 0),
(3, 'TESTE AVALIADO 1 Tarefa Páginas 16 e 17 Frente A (Álgebra)', 'Mat. Pgs 16, 17', 9, 5, 'Usuário de Teste', '2017-05-08 20:00:00', 1, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `cod_login` int(11) NOT NULL,
  `nome_login` varchar(80) NOT NULL,
  `usuario_login` varchar(20) NOT NULL,
  `senha_login` varchar(20) NOT NULL,
  `sala_login` int(11) NOT NULL,
  `datacadastro_login` datetime NOT NULL,
  `perm_login` smallint(6) DEFAULT NULL,
  `solicperm_login` smallint(6) DEFAULT NULL,
  `ip_login` varchar(20) NOT NULL,
  `aval_login` int(1) DEFAULT NULL,
  `email_login` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`cod_login`, `nome_login`, `usuario_login`, `senha_login`, `sala_login`, `datacadastro_login`, `perm_login`, `solicperm_login`, `ip_login`, `aval_login`, `email_login`) VALUES
(1, 'Kaique Tomazini', 'kaique', '123456', 1, '2017-04-18 13:57:47', 3, 0, '', NULL, '');


-- --------------------------------------------------------

--
-- Estrutura da tabela `profdisc`
--

CREATE TABLE `profdisc` (
  `cod_disc` int(11) NOT NULL,
  `discid_disc` int(11) DEFAULT NULL,
  `profid_disc` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `profdisc`
--

INSERT INTO `profdisc` (`cod_disc`, `discid_disc`, `profid_disc`) VALUES
(1, 1, 1),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 2, 6),
(7, 6, 7),
(8, 7, 8),
(9, 8, 9),
(10, 9, 9),
(11, 10, 10),
(12, 11, 11),
(13, 12, 54),
(14, 13, 13),
(15, 14, 13),
(16, 3, 14),
(17, 17, 15),
(18, 15, 15),
(19, 16, 15),
(20, 18, 16),
(21, 19, 16),
(22, 20, 17),
(24, 2, 12),
(26, 5, 18),
(27, 18, 19),
(28, 21, 19),
(29, 22, 20),
(31, 24, 21),
(32, 25, 22),
(33, 26, 20),
(34, 1, 57),
(35, 4, 61),
(36, 13, 26),
(37, 10, 27),
(38, 27, 28),
(39, 28, 29),
(40, 9, 28),
(41, 1, 30),
(42, 13, 31),
(43, 7, 33),
(44, 6, 35),
(45, 4, 22),
(46, 14, 32),
(47, 8, 10),
(48, 9, 27),
(49, 10, 9),
(50, 29, 16),
(51, 15, 16),
(52, 15, 17),
(53, 30, 17),
(54, 31, 15),
(55, 32, 36),
(56, 27, 37),
(57, 6, 38),
(58, 1, 39),
(59, 33, 40),
(60, 28, 41),
(61, 5, 42),
(62, 14, 43),
(63, 32, 3),
(64, 1, 44),
(65, 5, 45),
(66, 27, 46),
(67, 2, 47),
(68, 1, 48),
(69, 27, 27),
(70, 2, 49),
(71, 14, 33),
(72, 34, 50),
(73, 18, 51),
(74, 15, 50),
(75, 35, 51),
(76, 36, 17),
(77, 37, 5),
(78, 38, 50),
(79, 39, 50),
(80, 36, 16),
(81, 40, 11),
(82, 41, 11),
(83, 42, 5),
(84, 43, 52),
(85, 45, 30),
(86, 46, 52),
(87, 47, 53),
(89, 48, 55),
(90, 49, 56),
(91, 15, 57),
(92, 50, 11),
(93, 51, 58),
(94, 9, 10),
(95, 2, 35),
(96, 32, 59),
(97, 6, 60),
(98, 27, 43),
(99, 46, 58),
(100, 43, 58),
(101, 45, 16),
(102, 29, 17),
(103, 52, 50),
(104, 15, 51),
(105, 38, 53),
(106, 53, 53),
(107, 18, 50),
(108, 54, 21),
(109, 55, 22),
(110, 56, 22),
(111, 15, 21),
(112, 57, 21),
(113, 51, 61),
(114, 49, 61),
(115, 12, 12),
(116, 27, 62),
(117, 1, 62),
(118, 32, 62),
(119, 2, 62),
(120, 6, 62),
(121, 5, 63),
(122, 28, 64),
(123, 58, 65);

-- --------------------------------------------------------

--
-- Estrutura da tabela `profs`
--

CREATE TABLE `profs` (
  `cod_prof` int(11) NOT NULL,
  `nome_prof` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `profs`
--

INSERT INTO `profs` (`cod_prof`, `nome_prof`) VALUES
(1, 'Maria1'),
(3, 'Maria2'),
(4, 'Maria3'),
(5, 'Maria4'),
(6, 'Maria5'),
(7, 'Maria6'),
(8, 'Maria7'),
(9, 'Maria8'),
(10, 'Maria9'),
(11, 'Maria10'),
(12, 'Maria11'),
(13, 'Maria12'),
(14, 'Maria13'),
(15, 'Maria14'),
(16, 'Maria15'),
(17, 'Maria16'),
(18, 'Maria17'),
(19, 'Maria18'),
(20, 'Maria19'),
(21, 'Maria20'),
(22, 'Maria21'),
(24, 'Maria22'),
(25, 'Maria23'),
(26, 'Maria24'),
(27, 'Maria25'),
(28, 'Maria26'),
(29, 'Maria27'),
(30, 'Maria28'),
(31, 'Maria29'),
(32, 'Maria30'),
(33, 'Maria31'),
(34, 'Maria32'),
(35, 'Maria33'),
(36, 'Maria34'),
(37, 'Maria35'),
(38, 'Maria36'),
(39, 'Maria37'),
(40, 'Maria38'),
(41, 'Maria39'),
(42, 'Maria40'),
(43, 'Maria41'),
(44, 'Maria42'),
(45, 'Maria43'),
(46, 'Maria44'),
(47, 'Maria45'),
(48, 'Maria46'),
(49, 'Maria47'),
(50, 'Maria48'),
(51, 'Maria49'),
(52, 'Maria50'),
(53, 'Maria51'),
(54, 'Maria52'),
(55, 'Maria53'),
(56, 'Maria54'),
(57, 'Maria55'),
(58, 'Maria56'),
(59, 'Maria57'),
(60, 'Maria58'),
(61, 'Maria59'),
(62, 'Maria60'),
(63, 'Maria61'),
(64, 'Maria62'),
(65, 'Maria63');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avisos`
--
ALTER TABLE `avisos`
  ADD PRIMARY KEY (`cod_aviso`),
  ADD KEY `salaaviso` (`sala_aviso`);

--
-- Indexes for table `disc`
--
ALTER TABLE `disc`
  ADD PRIMARY KEY (`cod_discs`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`cod_fb`);

--
-- Indexes for table `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`cod_horarios`),
  ADD KEY `sala_horario` (`sala_horario`),
  ADD KEY `aula1` (`aula1`),
  ADD KEY `aula2` (`aula2`),
  ADD KEY `aula3` (`aula3`),
  ADD KEY `aula4` (`aula4`),
  ADD KEY `aula5` (`aula5`),
  ADD KEY `aula6` (`aula6`),
  ADD KEY `aula7` (`aula7`),
  ADD KEY `aula8` (`aula8`),
  ADD KEY `aula9` (`aula9`);

--
-- Indexes for table `horariosnovo`
--
ALTER TABLE `horariosnovo`
  ADD PRIMARY KEY (`cod_horarios`),
  ADD KEY `sala_horarios` (`sala_horarios`),
  ADD KEY `segunda_horario` (`segunda_horario`),
  ADD KEY `terca_horario` (`terca_horario`),
  ADD KEY `quarta_horario` (`quarta_horario`),
  ADD KEY `quinta_horario` (`quinta_horario`),
  ADD KEY `sexta_horario` (`sexta_horario`);


--
-- Indexes for table `info_diario`
--
ALTER TABLE `info_diario`
  ADD PRIMARY KEY (`cod_diario`);

--
-- Indexes for table `info_salas`
--
ALTER TABLE `info_salas`
  ADD PRIMARY KEY (`cod_sala`),
  ADD UNIQUE KEY `profcoord` (`coord`);

--
-- Indexes for table `licoes`
--
ALTER TABLE `licoes`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `disc` (`disc`),
  ADD KEY `sala` (`sala`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`cod_login`),
  ADD KEY `sala_login` (`sala_login`);

--
-- Indexes for table `profdisc`
--
ALTER TABLE `profdisc`
  ADD PRIMARY KEY (`cod_disc`),
  ADD KEY `profid_disc` (`profid_disc`),
  ADD KEY `discid_in_disc` (`discid_disc`);

--
-- Indexes for table `profs`
--
ALTER TABLE `profs`
  ADD PRIMARY KEY (`cod_prof`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avisos`
--
ALTER TABLE `avisos`
  MODIFY `cod_aviso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `disc`
--
ALTER TABLE `disc`
  MODIFY `cod_discs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `cod_fb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `horarios`
--
ALTER TABLE `horarios`
  MODIFY `cod_horarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT for table `horariosnovo`
--
ALTER TABLE `horariosnovo`
  MODIFY `cod_horarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;
--
-- AUTO_INCREMENT for table `info_diario`
--
ALTER TABLE `info_diario`
  MODIFY `cod_diario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `info_salas`
--
ALTER TABLE `info_salas`
  MODIFY `cod_sala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `licoes`
--
ALTER TABLE `licoes`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `cod_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `profdisc`
--
ALTER TABLE `profdisc`
  MODIFY `cod_disc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `profs`
--
ALTER TABLE `profs`
  MODIFY `cod_prof` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `avisos`
--
ALTER TABLE `avisos`
  ADD CONSTRAINT `avisos_ibfk_1` FOREIGN KEY (`sala_aviso`) REFERENCES `info_salas` (`cod_sala`);

--
-- Limitadores para a tabela `horarios`
--
ALTER TABLE `horarios`
  ADD CONSTRAINT `horarios_ibfk_1` FOREIGN KEY (`sala_horario`) REFERENCES `info_salas` (`cod_sala`),
  ADD CONSTRAINT `horarios_ibfk_10` FOREIGN KEY (`aula9`) REFERENCES `profdisc` (`cod_disc`),
  ADD CONSTRAINT `horarios_ibfk_2` FOREIGN KEY (`aula1`) REFERENCES `profdisc` (`cod_disc`),
  ADD CONSTRAINT `horarios_ibfk_3` FOREIGN KEY (`aula2`) REFERENCES `profdisc` (`cod_disc`),
  ADD CONSTRAINT `horarios_ibfk_4` FOREIGN KEY (`aula3`) REFERENCES `profdisc` (`cod_disc`),
  ADD CONSTRAINT `horarios_ibfk_5` FOREIGN KEY (`aula4`) REFERENCES `profdisc` (`cod_disc`),
  ADD CONSTRAINT `horarios_ibfk_6` FOREIGN KEY (`aula5`) REFERENCES `profdisc` (`cod_disc`),
  ADD CONSTRAINT `horarios_ibfk_7` FOREIGN KEY (`aula6`) REFERENCES `profdisc` (`cod_disc`),
  ADD CONSTRAINT `horarios_ibfk_8` FOREIGN KEY (`aula7`) REFERENCES `profdisc` (`cod_disc`),
  ADD CONSTRAINT `horarios_ibfk_9` FOREIGN KEY (`aula8`) REFERENCES `profdisc` (`cod_disc`);

--
-- Limitadores para a tabela `horariosnovo`
--
ALTER TABLE `horariosnovo`
  ADD CONSTRAINT `horariosnovo_ibfk_1` FOREIGN KEY (`sala_horarios`) REFERENCES `info_salas` (`cod_sala`),
  ADD CONSTRAINT `horariosnovo_ibfk_2` FOREIGN KEY (`segunda_horario`) REFERENCES `profdisc` (`cod_disc`),
  ADD CONSTRAINT `horariosnovo_ibfk_3` FOREIGN KEY (`terca_horario`) REFERENCES `profdisc` (`cod_disc`),
  ADD CONSTRAINT `horariosnovo_ibfk_4` FOREIGN KEY (`quarta_horario`) REFERENCES `profdisc` (`cod_disc`),
  ADD CONSTRAINT `horariosnovo_ibfk_5` FOREIGN KEY (`quinta_horario`) REFERENCES `profdisc` (`cod_disc`),
  ADD CONSTRAINT `horariosnovo_ibfk_6` FOREIGN KEY (`sexta_horario`) REFERENCES `profdisc` (`cod_disc`);

--
-- Limitadores para a tabela `info_salas`
--
ALTER TABLE `info_salas`
  ADD CONSTRAINT `info_salas_ibfk_1` FOREIGN KEY (`coord`) REFERENCES `profs` (`cod_prof`);

--
-- Limitadores para a tabela `licoes`
--
ALTER TABLE `licoes`
  ADD CONSTRAINT `licoes_ibfk_1` FOREIGN KEY (`disc`) REFERENCES `profdisc` (`cod_disc`),
  ADD CONSTRAINT `licoes_ibfk_2` FOREIGN KEY (`sala`) REFERENCES `info_salas` (`cod_sala`);

--
-- Limitadores para a tabela `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`sala_login`) REFERENCES `info_salas` (`cod_sala`);

--
-- Limitadores para a tabela `profdisc`
--
ALTER TABLE `profdisc`
  ADD CONSTRAINT `profdisc_ibfk_1` FOREIGN KEY (`profid_disc`) REFERENCES `profs` (`cod_prof`),
  ADD CONSTRAINT `profdisc_ibfk_2` FOREIGN KEY (`discid_disc`) REFERENCES `disc` (`cod_discs`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
