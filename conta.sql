-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Out-2022 às 22:29
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `conta`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `apps`
--

CREATE TABLE `apps` (
  `id` int(11) NOT NULL,
  `chave` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `logo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `apps`
--

INSERT INTO `apps` (`id`, `chave`, `nome`, `descricao`, `logo`) VALUES
(1, 'qwertyazerty', 'Pasaro', 'bn bvn   bh hjkhjt hthjthe hj erjh ejr he rjh erh ejhejr hjebgier gui uierguerguie ruiger uerit eu tuertg uieter tiertu ruith uitwuituwguwgte b ui erui erutheru t  tieurh tiher tty ertert ertyertyeru yt yteur ytrei ytui ', 'https://1.bp.blogspot.com/-26SIrJcPgWs/YKuRHW2dfQI/AAAAAAAABMk/Lr_4Iq9Tlogs1Q5nG_HE48rCn-O5y5WvgCLcBGAsYHQ/w640-h326/lologlog.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `conta`
--

CREATE TABLE `conta` (
  `id` int(11) NOT NULL,
  `chave` text NOT NULL,
  `nome` varchar(50) NOT NULL,
  `apelido` varchar(50) NOT NULL,
  `genero` varchar(2) NOT NULL,
  `dia_nascimento` int(2) NOT NULL,
  `mes_nascimento` int(2) NOT NULL,
  `ano_nascimento` int(4) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `palavra_passe` text NOT NULL,
  `dia_entrada` int(2) NOT NULL,
  `mes_entrada` int(2) NOT NULL,
  `ano_entrada` int(4) NOT NULL,
  `codigo_renova` int(6) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `provincia` varchar(50) NOT NULL,
  `municipio` varchar(50) NOT NULL,
  `bairro_rua` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `conta`
--

INSERT INTO `conta` (`id`, `chave`, `nome`, `apelido`, `genero`, `dia_nascimento`, `mes_nascimento`, `ano_nascimento`, `telefone`, `email`, `palavra_passe`, `dia_entrada`, `mes_entrada`, `ano_entrada`, `codigo_renova`, `pais`, `provincia`, `municipio`, `bairro_rua`, `foto`) VALUES
(7, '62a8dacc6586b', 'Super', 'Borge', 'm', 2, 2, 21, '', 'cbcaetorges@gmail.com', 'd9441a6d65895d9ecacb4d229879ff9a413d76f88e2e07b90d7aaea217bbbb9dbfd97ce7d9ad503dcaf6975468dbb6496e3b47e62d0b47c605ecb27e5263604d', 14, 6, 2022, 0, 'Angola', '', '', '', 'default.png'),
(8, '62af13ab79b6a', 'Caetano', 'Wambembe', 'm', 15, 8, 1996, '947436662', 'cbcaetanoborges@gmail.com', 'd9e6762dd1c8eaf6d61b3c6192fc408d4d6d5f1176d0c29169bc24e71c3f274ad27fcd5811b313d681f7e55ec02d73d499c95455b6b5bb503acf574fba8ffe85', 19, 6, 2022, 0, 'Angola', 'Huíla', 'Lubango', 'CasaVerde Cdnt. CowBoy', '1656186275-d2fd8ac5ab73fe26e2b72ef56cb6f783.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `historicopalavrapasse`
--

CREATE TABLE `historicopalavrapasse` (
  `id` int(11) NOT NULL,
  `chave_user` varchar(255) NOT NULL,
  `palavra_passe` text NOT NULL,
  `quando` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `historicopalavrapasse`
--

INSERT INTO `historicopalavrapasse` (`id`, `chave_user`, `palavra_passe`, `quando`) VALUES
(1, '62af13ab79b6a', 'cabc075fe0017edd54fc581aedc4a6dcfc5075ae39d7ab5903145368637cea919995260e14a18ba6626d4f67bd64c62cce60b9a8be26c8ac497365d99df176e7', 1656284656),
(2, '62af13ab79b6a', 'e13efc991a9bf44bbb4da87cdbb725240184585ccaf270523170e008cf2a3b85f45f86c3da647f69780fb9e971caf5437b3d06d418355a68c9760c70a31d05c7', 1656286636),
(3, '62af13ab79b6a', '6f3fdfeb9cf99fb85fea0a8c2085ee8ce5d121a27acb99472790ec662a3033daa1f7a19ec4b6fcb990c7126bb1d4ba5d99e61c3b93a63c97cf9efc6042912322', 1656287883),
(4, '62af13ab79b6a', '6f3fdfeb9cf99fb85fea0a8c2085ee8ce5d121a27acb99472790ec662a3033daa1f7a19ec4b6fcb990c7126bb1d4ba5d99e61c3b93a63c97cf9efc6042912322', 1656288147),
(5, '62af13ab79b6a', '6f3fdfeb9cf99fb85fea0a8c2085ee8ce5d121a27acb99472790ec662a3033daa1f7a19ec4b6fcb990c7126bb1d4ba5d99e61c3b93a63c97cf9efc6042912322', 1656288283),
(6, '62af13ab79b6a', '6f3fdfeb9cf99fb85fea0a8c2085ee8ce5d121a27acb99472790ec662a3033daa1f7a19ec4b6fcb990c7126bb1d4ba5d99e61c3b93a63c97cf9efc6042912322', 1656288437),
(7, '62af13ab79b6a', '6f3fdfeb9cf99fb85fea0a8c2085ee8ce5d121a27acb99472790ec662a3033daa1f7a19ec4b6fcb990c7126bb1d4ba5d99e61c3b93a63c97cf9efc6042912322', 1656288678),
(8, '62af13ab79b6a', '6f3fdfeb9cf99fb85fea0a8c2085ee8ce5d121a27acb99472790ec662a3033daa1f7a19ec4b6fcb990c7126bb1d4ba5d99e61c3b93a63c97cf9efc6042912322', 1656288748),
(9, '62af13ab79b6a', '6f3fdfeb9cf99fb85fea0a8c2085ee8ce5d121a27acb99472790ec662a3033daa1f7a19ec4b6fcb990c7126bb1d4ba5d99e61c3b93a63c97cf9efc6042912322', 1656288846),
(10, '62af13ab79b6a', '95815e8c1f64fa75703d9ab05e65adf26f821f97f7148c57970b5c58ed4e2e3e1916da0754b0306c16aa39ec3416ac7fd84c16ccabe03a045eafa83afc7349a6', 1656288876),
(11, '62af13ab79b6a', '48ecf6bdee06f82fb24cd70e23c0b4def3f9aed7c59c87ece93c4e698ac2de0956a253d55b3ab36d150d5859f3944a978012fd633d665a0fdaa6795513cb849d', 1665518181),
(12, '62af13ab79b6a', 'd9e6762dd1c8eaf6d61b3c6192fc408d4d6d5f1176d0c29169bc24e71c3f274ad27fcd5811b313d681f7e55ec02d73d499c95455b6b5bb503acf574fba8ffe85', 1665518771);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamentos`
--

CREATE TABLE `pagamentos` (
  `id` int(11) NOT NULL,
  `chave` varchar(255) NOT NULL,
  `chave_user` varchar(255) NOT NULL,
  `chave_app` varchar(255) NOT NULL,
  `quando` varchar(255) NOT NULL,
  `comprovativo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `historicopalavrapasse`
--
ALTER TABLE `historicopalavrapasse`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pagamentos`
--
ALTER TABLE `pagamentos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `apps`
--
ALTER TABLE `apps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `conta`
--
ALTER TABLE `conta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `historicopalavrapasse`
--
ALTER TABLE `historicopalavrapasse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `pagamentos`
--
ALTER TABLE `pagamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
