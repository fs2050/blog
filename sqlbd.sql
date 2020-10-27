-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Out-2020 às 12:19
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `blog`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `postagem`
--

CREATE TABLE `postagem` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `conteudo` text NOT NULL,
  `autor` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `postagem`
--

INSERT INTO `postagem` (`id`, `titulo`, `conteudo`, `autor`) VALUES
(4, 'Médicos e hospitalares', 'Nossos equipamentos hospitalares, testes de diagnósticos e materiais de proteção individual salvam vidas.', 'AR70'),
(32, 'E-commerce', 'Plataforma própria que conecta nossos produtos a milhares de consumidores todos os dias, através dos principais sites de e-commerce do Brasil.', 'AR70'),
(42, 'Automotivo', 'Nossos produtos conectados equipam veículos comerciais e de passeio fabricados pelas principais montadoras do mundo.', 'AR70');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `postagem`
--
ALTER TABLE `postagem`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `postagem`
--
ALTER TABLE `postagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
