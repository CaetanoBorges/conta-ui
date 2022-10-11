-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Out-2022 às 22:30
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
-- Banco de dados: `app`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_avaliacao`
--

CREATE TABLE `app_avaliacao` (
  `id` int(11) NOT NULL,
  `chave_user` varchar(255) NOT NULL,
  `funcionario` text NOT NULL,
  `nota` text NOT NULL,
  `tipo` text NOT NULL,
  `valor` text NOT NULL,
  `dia_entrada` text NOT NULL,
  `mes_entrada` text NOT NULL,
  `ano_entrada` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_avaliacao`
--

INSERT INTO `app_avaliacao` (`id`, `chave_user`, `funcionario`, `nota`, `tipo`, `valor`, `dia_entrada`, `mes_entrada`, `ano_entrada`) VALUES
(2, '1', '2', '', 'Falta', '7500', '19', '12', '2018'),
(3, '1', '3', 'Nota de entrega de 10 000 000 kz', 'Bonus', '10 000 000', '21', '12', '2018'),
(4, '1', '1', 'Muito Cumbu', 'Bonus', '300 000 000 kz', '21', '12', '2018'),
(5, '1', 'Borges', 'jhdfgf sjdbfjsh', 'Bonus', '300 000 000 kz', '08', '02', '2019'),
(6, '1', 'Caetano Borges', 'jhgjdf', 'Bonus', '300 000 000 kz', '10', '02', '2019'),
(9, '5bf7ea7933793c58d758d88790bbaecd', 'AlÃª Borge', 'Nota nor', 'Bonus', 'Check Branco', '21', '10', '2019');

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_banco`
--

CREATE TABLE `app_banco` (
  `id` int(11) NOT NULL,
  `chave_user` text NOT NULL,
  `banco` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `conta` varchar(255) NOT NULL,
  `iban` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_banco`
--

INSERT INTO `app_banco` (`id`, `chave_user`, `banco`, `nome`, `conta`, `iban`) VALUES
(1, '62af13ab79b6a', 'BAI', 'Edeangola.com BAI', '973465AOA646', 'AO06000000558345739758'),
(4, '5bf7ea7933793c58d758d88790bbaecd', 'Banco Soft', 'Pow', '95789475', '349583045485934'),
(5, '5bf7ea7933793c58d758d88790bbaecd', 'iohruhur', 'toiyjtiyjiotiy', 'rtyjtryiojir', 'roiyjityjioty');

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_cliente`
--

CREATE TABLE `app_cliente` (
  `id` int(11) NOT NULL,
  `chave_user` varchar(255) COLLATE utf8_bin NOT NULL,
  `id_cliente` varchar(30) COLLATE utf8_bin NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin NOT NULL,
  `telefone` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `localizacao` varchar(255) COLLATE utf8_bin NOT NULL,
  `nif` varchar(255) COLLATE utf8_bin NOT NULL,
  `nota` varchar(255) COLLATE utf8_bin NOT NULL,
  `dia_entrada` varchar(4) COLLATE utf8_bin NOT NULL,
  `mes_entrada` varchar(4) COLLATE utf8_bin NOT NULL,
  `ano_entrada` varchar(5) COLLATE utf8_bin NOT NULL,
  `img` text COLLATE utf8_bin NOT NULL,
  `pedidos` text COLLATE utf8_bin NOT NULL,
  `opcoes` text COLLATE utf8_bin NOT NULL,
  `pin` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `app_cliente`
--

INSERT INTO `app_cliente` (`id`, `chave_user`, `id_cliente`, `nome`, `telefone`, `email`, `localizacao`, `nif`, `nota`, `dia_entrada`, `mes_entrada`, `ano_entrada`, `img`, `pedidos`, `opcoes`, `pin`) VALUES
(23, '62af13ab79b6a', 'bbcb6a', 'eter', '999', 'e@e.e', 'Angola', '0000000000000000', 'nota', '01', '03', '2020', '', '', '', 0),
(6, '62af13ab79b6a', '721867', 'Caetano Borges', '921797626', 'cbcaetanoborges@gmail.com', 'Luanda e Lubango', '6545 67 ', 'esse clietene comprou mauirtsdjgfhg', '23', '07', '2019', '', '', '', 0),
(14, '5bf7ea7933793c58d758d88790bbaecd', 'de4cd0', 'Nome', 'telefone', 'email', 'morada', 'Nif', 'quatro', '27', '10', '2019', '', '', '', 0),
(18, '5bf7ea7933793c58d758d88790bbaecd', 'd84006', 'rrr', '8888888', 'pupiu', 'lhuihui', '', '087878', '27', '02', '2020', '', '', '', 0),
(22, '5bf7ea7933793c58d758d88790bbaecd', 'd39b1f', 'Edeangola', '995878776', 'edeangolareal@gmail.com', 'Huila-Lubango', 'nif', 'nota', '01', '03', '2020', '', '', '', 0),
(20, '5bf7ea7933793c58d758d88790bbaecd', '3024aa', 'Um cliente', '921797626', 'c@c.com', 'HuÃ­la', 'ehifjebqfiefub', '09192890283890', '27', '02', '2020', '', '', '', 0),
(24, '5bf7ea7933793c58d758d88790bbaecd', 'Array', 'jsdfhjdf', '34546456456', 'iuehtrjkthrdfg', 'fgfdfghgh', 'fghtrytrytr', 'ryrytryrty', '20', '03', '2020', '', '', '', 0),
(25, '5bf7ea7933793c58d758d88790bbaecd', '13', 'eugryewgrh', '8475678', 'jdfghjkdfhgkjdfg', 'kdhguidghdfg', 'flighiofghirt', 'ghiiorht', '20', '03', '2020', '', '', '', 0),
(26, '5bf7ea7933793c58d758d88790bbaecd', '14', 'Outro_teste20', '78', 'iuseriut', 'iretyui', 'irety8erty', '9roty5y64586', '20', '03', '2020', '', '', '', 0),
(27, '5bf7ea7933793c58d758d88790bbaecd', '15', 'Teste Justo', '921765432', 'justoteste@gmail.com', 'Lunda Norte', '874659348976', '', '21', '03', '2020', '', '', '', 0),
(28, 'eeaf82bb09a2753c50cf670a79c124b4', '1', 'Primeiro cliente', '921797626', 'cbcaetanoborges@gmail.com', 'Lubango', '09879823672352', '', '24', '03', '2022', '', '', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_definicoes`
--

CREATE TABLE `app_definicoes` (
  `id` int(11) NOT NULL,
  `chave_user` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_pass` varchar(255) NOT NULL,
  `email_server` varchar(255) NOT NULL,
  `email_port` varchar(10) NOT NULL,
  `nif` varchar(255) NOT NULL,
  `prov` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `logotipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_definicoes`
--

INSERT INTO `app_definicoes` (`id`, `chave_user`, `nome`, `email`, `email_pass`, `email_server`, `email_port`, `nif`, `prov`, `bairro`, `rua`, `telefone`, `logotipo`) VALUES
(1, '62af13ab79b6a', 'de antemo', 'comercial@debliw.ao', 'qwertyazerty0011', 'cloud3.angoweb.biz', '465', '76348732037465782', 'Hula', 'CasaVerde', 'Rua Principal, Por  da Eunice', '995878776, 935803033', '3bdd32c1f52d34a05cb40edab7969718-3r.png'),
(3, '38fe18f07044cc81d7beae1dba775883', '', 'geral@edeangola.com', 'antesdemimDeus2019', 'benguela.angoweb.biz', '587', '', '', '', '', '', 'default.png'),
(4, 'ef19b956aaf41ea8e440d42d8a4fb3f3', '', 'geral@edeangola.com', 'antesdemimDeus2019', 'benguela.angoweb.biz', '587', '', '', '', '', '', 'default.png'),
(5, 'a4c59fab6d3e80d1bb0e281b6090b44d', '', 'geral@edeangola.com', 'antesdemimDeus2019', 'benguela.angoweb.biz', '587', '', '', '', '', '', 'default.png'),
(6, '078670ee46cdc3e93da141859f09f524', '', 'geral@edeangola.com', 'antesdemimDeus2019', 'benguela.angoweb.biz', '587', '', '', '', '', '', 'default.png'),
(7, 'eeaf82bb09a2753c50cf670a79c124b4', '', 'geral@edeangola.com', 'antesdemimDeus2019', 'benguela.angoweb.biz', '587', '', '', '', '', '', '9cb24a8b1d67c80be1f6506433a1bfbd-ig.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_funcionario`
--

CREATE TABLE `app_funcionario` (
  `id` int(11) NOT NULL,
  `chave_user` varchar(255) NOT NULL,
  `nomecompleto` text NOT NULL,
  `bi` text NOT NULL,
  `morada` text NOT NULL,
  `telefone` text NOT NULL,
  `email` text NOT NULL,
  `funcao` text NOT NULL,
  `ganho` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_funcionario`
--

INSERT INTO `app_funcionario` (`id`, `chave_user`, `nomecompleto`, `bi`, `morada`, `telefone`, `email`, `funcao`, `ganho`) VALUES
(12, '5bf7ea7933793c58d758d88790bbaecd', 'Caetano Wambembe', '921797626', 'Australia', '921797626', 'Wambembe@cb.com', 'Dono & CEO', 'ilimitado'),
(15, '5bf7ea7933793c58d758d88790bbaecd', 'AlÃª Borge', '76656 87676 8976 ', 'CasaVerde, Lubango', '921797626', 'aleborge@edeangola.com', 'Co Fundador', 'Ilimitado'),
(16, '5bf7ea7933793c58d758d88790bbaecd', 'Mais um dois', 'uirtrhtrhtuiertu', 'rkhtuirhitu', 'rkthruitr', 'rkhturt', 'Ã§iohturt 5t', 'urththfjgnuir');

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_imposto`
--

CREATE TABLE `app_imposto` (
  `id` int(11) NOT NULL,
  `chave_user` text NOT NULL,
  `nome` varchar(255) NOT NULL,
  `percentagem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_imposto`
--

INSERT INTO `app_imposto` (`id`, `chave_user`, `nome`, `percentagem`) VALUES
(1, '5bf7ea7933793c58d758d88790bbaecd', 'IVA', 14),
(2, '5bf7ea7933793c58d758d88790bbaecd', 'irytrytri', 0),
(3, '5bf7ea7933793c58d758d88790bbaecd', 'outro', 56);

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_produto`
--

CREATE TABLE `app_produto` (
  `id` int(11) NOT NULL,
  `chave_user` varchar(255) DEFAULT NULL,
  `stock` varchar(255) DEFAULT NULL,
  `nome` text DEFAULT NULL,
  `preco_adquirido` float DEFAULT NULL,
  `qtd_adquirida` varchar(255) DEFAULT NULL,
  `preco_venda` varchar(255) DEFAULT NULL,
  `venda_por` varchar(255) DEFAULT NULL,
  `boca` varchar(255) DEFAULT NULL,
  `dia_entrada` varchar(255) DEFAULT NULL,
  `mes_entrada` varchar(255) DEFAULT NULL,
  `ano_entrada` varchar(255) DEFAULT NULL,
  `img` text DEFAULT NULL,
  `opcoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_produto`
--

INSERT INTO `app_produto` (`id`, `chave_user`, `stock`, `nome`, `preco_adquirido`, `qtd_adquirida`, `preco_venda`, `venda_por`, `boca`, `dia_entrada`, `mes_entrada`, `ano_entrada`, `img`, `opcoes`) VALUES
(10, '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Lona de ouro', 3200, '50', '5900', 'metro', '1.2', '16', '10', '2019', '', ''),
(11, '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Quatro Vinil + PVC 30x30', 1500, '800', '2500', 'unidade', '', '16', '10', '2019', '', ''),
(13, '5bf7ea7933793c58d758d88790bbaecd', 'Novo', 'teste', 7647, '7486', '34957', 'unidade', '', '27', '10', '2019', '', ''),
(16, '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'OutroProd', 17000, '100', '35000', 'unidade', '', '15', '12', '2019', '', ''),
(17, '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'FeniX-Shirt ', 10000, '100', '14500', 'unidade', '', '27', '02', '2020', '', ''),
(28, '62af13ab79b6a', 'rt tryry', '6666', 677, '866', '999', 'unidade', NULL, '2', '8', '2022', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_proforma`
--

CREATE TABLE `app_proforma` (
  `id` int(11) NOT NULL,
  `id_fatura` varchar(255) NOT NULL,
  `chave_fatura` varchar(255) NOT NULL,
  `chave_user` varchar(255) NOT NULL,
  `stock` varchar(255) NOT NULL,
  `id_cliente` varchar(255) NOT NULL,
  `itens_da_fatura` text NOT NULL,
  `total_da_fatura` varchar(255) NOT NULL,
  `impostos` varchar(255) NOT NULL,
  `total_com_impostos` varchar(255) NOT NULL,
  `hora` varchar(255) NOT NULL,
  `dia_entrada` varchar(4) NOT NULL,
  `mes_entrada` varchar(4) NOT NULL,
  `ano_entrada` varchar(10) NOT NULL,
  `nota_da_fatura` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_proforma`
--

INSERT INTO `app_proforma` (`id`, `id_fatura`, `chave_fatura`, `chave_user`, `stock`, `id_cliente`, `itens_da_fatura`, `total_da_fatura`, `impostos`, `total_com_impostos`, `hora`, `dia_entrada`, `mes_entrada`, `ano_entrada`, `nota_da_fatura`) VALUES
(193, '1', '8cd13c80324b1ee0cc0f78605852dd8e', '5bf7ea7933793c58d758d88790bbaecd', '0', 'Teste Justo-15', '{}', '0', '0', '0', '18h-34m-3s', '20', '03', '2020', '0'),
(194, '2', 'de5f47554c89516892d0ed8ed8117a2f', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Teste Justo-15', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"2\",\"lar\":\"2\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"23600\"},\"2\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"s\",\"cor\":\"vermelha\",\"pu\":\"14500\",\"pt\":\"14500\"}}', '38100', ' IVA: 14%, + 5.334,00 | ', '43434', '1h-9m-53s', '21', '03', '2020', 'Essa proforma vale por 48h'),
(195, '3', '71bef7956ec56d5c97be5d976162d70a', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'jsdfhjdf-Array', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"2500\"}}', '2500', ' IVA: 14%, + 350,00 | ', '2850', '19h-52m-48s', '28', '03', '2020', ''),
(196, '4', '7c0e1293f921084140a2b99f162c0225', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"2850\",\"impostos\":\" IVA 14% : 350,00 kz<br>irytrytri 0% : 0,00 kz<br>\"},\"2\":{\"des\":\"Outro Produto\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"\",\"alt\":\"\",\"pm\":\"5900\",\"pt\":\"6726\",\"impostos\":\" IVA 14% : 182,00 kz<br>irytrytri 0% : 0,00 kz<br>\"}}', '11058', 'Impostsos: IVA - 14 % | irytrytri - 0 % | ', '11058', '10h-43m-24s', '28', '6', '2020', ''),
(197, '5', '60a9eb7c4357b246a18dc205196fd930', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'eter-bbcb6a', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"2850\",\"impostos\":\" IVA 14% : 350,00 kz<br>irytrytri 0% : 0,00 kz<br>\"},\"2\":{\"des\":\"Outro Produto\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"1300\",\"pt\":\"1482\",\"impostos\":\" IVA 14% : 182,00 kz<br>irytrytri 0% : 0,00 kz<br>\"}}', '4332', 'Impostsos: IVA - 14 % | irytrytri - 0 % | ', '4332', '10h-50m-27s', '28', '6', '2020', ''),
(198, '6', '176b593ff7bac5d6e94683d53425a049', '5bf7ea7933793c58d758d88790bbaecd', 'Novo', '', '{\"1\":{\"des\":\"teste\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"34957\",\"pt\":\"39851\",\"impostos\":\" IVA 14% : 4.893,98 kz<br>irytrytri 0% : 0,00 kz<br>\"}}', '39851', 'Impostsos: IVA - 14 % | irytrytri - 0 % | ', '39851', '11h-10m-9s', '28', '6', '2020', ''),
(199, '7', 'c2b5646831e3ffb178f26e72dca7b74e', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'jsdfhjdf-Array', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"\",\"alt\":\"\",\"pm\":\"5900\",\"pt\":\"6726\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. \"},\"2\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"14500\",\"pt\":\"16530\",\"impostos\":\" <b>IVA<\\/b> 14% : 2.030,00. <b>irytrytri<\\/b> 0% : 0,00. \"}}', '23256', 'Impostos: IVA - 14 % | irytrytri - 0 % | ', '23256', '15h-34m-33s', '10', '7', '2020', ''),
(200, '8', 'a8484c07305dc2ba87289823eb415d54', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Outro_teste20-14', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"2850\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. \"},\"2\":{\"des\":\"Outro Produto\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"1300\",\"pt\":\"1482\",\"impostos\":\" <b>IVA<\\/b> 14% : 182,00. <b>irytrytri<\\/b> 0% : 0,00. \"}}', '4332', 'Impostos: IVA - 14 % | irytrytri - 0 % | ', '4332', '16h-33m-3s', '10', '7', '2020', ''),
(201, '9', 'bf7d2962a5c080f31dd0d50451db3b37', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"2\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"14500\",\"pt\":\"24650\",\"pt_si\":\"14500\",\"impostos\":\" <b>IVA<\\/b> 14% : 2.030,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 8.120,00. \"}}', '17000', '', '28900', '20h-11m-56s', '9', '12', '2020', 'jygi ui yufy ll t ul l7 tl lit7 7 l'),
(202, '10', '6da7d3a69a649d6188e5a947a01179d7', '5bf7ea7933793c58d758d88790bbaecd', 'Novo', 'Caetano Borges-721867', '{\"1\":{\"des\":\"teste\",\"venda_por\":\"unidade\",\"qtd\":\"6\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"34957\",\"pt\":\"356561\",\"pt_si\":\"209742\",\"impostos\":\" <b>IVA<\\/b> 14% : 29.363,88. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 117.455,52. \"}}', '209742', '', '356561', '20h-16m-11s', '9', '12', '2020', ''),
(203, '11', 'ff9e39df17a87f42622d52120670b366', '5bf7ea7933793c58d758d88790bbaecd', 'Novo', 'Caetano Borges-721867', '{\"1\":{\"des\":\"teste\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"34957\",\"pt\":\"59427\",\"pt_si\":\"34957\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.893,98. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.575,92. \"}}', '34957', '', '59427', '20h-17m-59s', '9', '12', '2020', ''),
(204, '12', 'a123de2af634c281ca076a934acda839', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"2\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"}}', '8400', '', '14280', '20h-36m-31s', '9', '12', '2020', ''),
(205, '13', '73a964894b6b0cd3cc8c61f6ca5541ad', '5bf7ea7933793c58d758d88790bbaecd', '0', 'Caetano Borges-721867', '{}', '0', '0', '0', '21h-4m-42s', '9', '12', '2020', '0'),
(206, '14', '5e6bd808bb81f21f9f2a2995aaf3d933', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"2\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"},\"3\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"14500\",\"pt\":\"24650\",\"pt_si\":\"14500\",\"impostos\":\" <b>IVA<\\/b> 14% : 2.030,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 8.120,00. \"}}', '22900', '', '38930', '16h-11m-1s', '11', '1', '2022', 'gf hfghf'),
(207, '15', '0d8de72750e4d1f735a25d0549e8d70c', '5bf7ea7933793c58d758d88790bbaecd', 'Novo', 'Nome-de4cd0', '{\"1\":{\"des\":\"teste\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"34957\",\"pt\":\"59427\",\"pt_si\":\"34957\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.893,98. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.575,92. \"},\"2\":{\"des\":\"teste\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"34957\",\"pt\":\"59427\",\"pt_si\":\"34957\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.893,98. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.575,92. \"}}', '69914', '', '118854', '17h-10m-6s', '11', '1', '2022', ''),
(208, '16', '481a7472226b5a1dc3963d760e6e0a7b', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'eter-bbcb6a', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"3\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"}}', '10900', '', '18530', '17h-10m-48s', '11', '1', '2022', ''),
(209, '17', '8db2098a382ecd7ee1a6ff6415a7e1b4', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"}}', '2500', '', '4250', '17h-35m-57s', '11', '1', '2022', ''),
(210, '18', '3108a4a9fcff0a85e0921f612de11893', '62af13ab79b6a', 'T-shirt e lona', 'Caetano Borges-721867', '{\"1\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"14500\",\"pt\":\"24650\",\"pt_si\":\"14500\",\"impostos\":\" <b>IVA<\\/b> 14% : 2.030,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 8.120,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"3\":{\"des\":\"Outro Produto\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"1300\",\"pt\":\"2210\",\"pt_si\":\"1300\",\"impostos\":\" <b>IVA<\\/b> 14% : 182,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 728,00. \"}}', '18300', '', '31110', '14h-38m-20s', '13', '1', '2022', ''),
(211, '1', '4fdc11287f0c750cded5540addb74138', '62af13ab79b6a', 'Tshirt e lona', 'Primeiro cliente-1', '{\"1\":{\"des\":\"Tshirt\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"3800\",\"pt\":\"3800\",\"pt_si\":\"3800\",\"impostos\":\" \"},\"2\":{\"des\":\"Lona\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"8900\",\"pt\":\"8900\",\"pt_si\":\"8900\",\"impostos\":\" \"}}', '0', '', '0', '22h-47m-24s', '24', '3', '2022', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_registo`
--

CREATE TABLE `app_registo` (
  `id` int(11) NOT NULL,
  `id_fatura` varchar(255) NOT NULL,
  `chave_fatura` varchar(255) NOT NULL,
  `chave_user` varchar(255) NOT NULL,
  `stock` varchar(255) NOT NULL,
  `id_cliente` varchar(255) NOT NULL,
  `nif_cliente` text NOT NULL,
  `tipo_de_pagamento` varchar(50) NOT NULL,
  `banco` varchar(255) NOT NULL,
  `numero_talao` varchar(255) NOT NULL,
  `itens_da_fatura` text NOT NULL,
  `total_da_fatura` double NOT NULL,
  `impostos` varchar(255) NOT NULL,
  `total_com_impostos` varchar(255) NOT NULL,
  `hora` varchar(255) NOT NULL,
  `dia_entrada` varchar(4) NOT NULL,
  `mes_entrada` varchar(4) NOT NULL,
  `ano_entrada` varchar(10) NOT NULL,
  `nota_da_fatura` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_registo`
--

INSERT INTO `app_registo` (`id`, `id_fatura`, `chave_fatura`, `chave_user`, `stock`, `id_cliente`, `nif_cliente`, `tipo_de_pagamento`, `banco`, `numero_talao`, `itens_da_fatura`, `total_da_fatura`, `impostos`, `total_com_impostos`, `hora`, `dia_entrada`, `mes_entrada`, `ano_entrada`, `nota_da_fatura`) VALUES
(209, '13', '95860cac9bcf6d65ed397dbb570ad321', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', ' ', ' ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"2\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"5700\",\"pt_si\":\"5000\",\"impostos\":\" <b>IVA<\\/b> 14% : 700,00. <b>irytrytri<\\/b> 0% : 0,00. \"},\"2\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"2\",\"alt\":\"2\",\"pm\":\"5900\",\"pt\":\"26904\",\"pt_si\":\"23600\",\"impostos\":\" <b>IVA<\\/b> 14% : 3.304,00. <b>irytrytri<\\/b> 0% : 0,00. \"}}', 28600, 'Impostos: IVA - 14 % | irytrytri - 0 % | ', '32604', '18h-50m-35s', '13', '7', '2020', ''),
(210, '2', '687abf95c4016e66b5818a94cbd1a360', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', ' ', ' ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"2\",\"lar\":\"2\",\"alt\":\"2\",\"pm\":\"5900\",\"pt\":\"53808\",\"pt_si\":\"47200\",\"impostos\":\" <b>IVA<\\/b> 14% : 6.608,00. <b>irytrytri<\\/b> 0% : 0,00. \"},\"2\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"5\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"14500\",\"pt\":\"82650\",\"pt_si\":\"72500\",\"impostos\":\" <b>IVA<\\/b> 14% : 10.150,00. <b>irytrytri<\\/b> 0% : 0,00. \"}}', 119700, 'Impostos: IVA - 14 % | irytrytri - 0 % | ', '136458', '12h-25m-13s', '15', '7', '2020', ''),
(211, '3', '7cf99d74f1361d89e0c2a08a9e5d947f', '5bf7ea7933793c58d758d88790bbaecd', 'Novo', ' ', ' ', 'TPA', 'BAI', '', '{\"1\":{\"des\":\"teste\",\"venda_por\":\"unidade\",\"qtd\":\"2\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"34957\",\"pt\":\"79702\",\"pt_si\":\"69914\",\"impostos\":\" <b>IVA<\\/b> 14% : 9.787,96. <b>irytrytri<\\/b> 0% : 0,00. \"}}', 69914, 'Impostos: IVA - 14 % | irytrytri - 0 % | ', '79702', '12h-26m-2s', '15', '7', '2020', ''),
(212, '4', '34e79c534d91c9965e24a5e854ab14a7', '5bf7ea7933793c58d758d88790bbaecd', 'Teste de calculos', ' ', ' ', 'Transferencia', 'Banco Soft', '6767 76868 56756 657', '{\"1\":{\"des\":\"vinil de corte\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"3\",\"alt\":\"3\",\"pm\":\"5500\",\"pt\":\"56430\",\"pt_si\":\"49500\",\"impostos\":\" <b>IVA<\\/b> 14% : 6.930,00. <b>irytrytri<\\/b> 0% : 0,00. \"}}', 49500, 'Impostos: IVA - 14 % | irytrytri - 0 % | ', '56430', '12h-26m-46s', '15', '7', '2020', ''),
(213, '5', '2b7b6508feb751afa7554fa935da3f75', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"6726\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"2850\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. \"}}', 8400, '', '9576', '19h-44m-24s', '16', '10', '2020', 'Teste '),
(214, '6', 'a04b8fd5aa88f6f2c2648711deb65cca', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Transferencia', 'Banco Soft', '6577 657575 44664646 4 45647', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"3\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"12750\",\"pt_si\":\"7500\",\"impostos\":\" <b>IVA<\\/b> 14% : 1.050,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 4.200,00. \"},\"2\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"}}', 13400, '', '22780', '21h-17m-59s', '8', '12', '2020', ''),
(215, '7', '7c3ae674cc291dda9db0f9b5e7e57ecb', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"}}', 8400, '', '14280', '21h-27m-3s', '8', '12', '2020', ''),
(216, '8', '67496e0513d8c1ab78ec27bbe8b1a115', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'TPA', 'Banco Soft', '', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"2\":{\"des\":\"Outro Produto\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"1300\",\"pt\":\"2210\",\"pt_si\":\"1300\",\"impostos\":\" <b>IVA<\\/b> 14% : 182,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 728,00. \"}}', 3800, '', '6460', '21h-41m-32s', '8', '12', '2020', ''),
(217, '9', '0fc97038e441a53dfc50bdff09dae51b', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"14500\",\"pt\":\"24650\",\"pt_si\":\"14500\",\"impostos\":\" <b>IVA<\\/b> 14% : 2.030,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 8.120,00. \"},\"2\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"14500\",\"pt\":\"24650\",\"pt_si\":\"14500\",\"impostos\":\" <b>IVA<\\/b> 14% : 2.030,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 8.120,00. \"}}', 29000, '', '49300', '21h-47m-14s', '8', '12', '2020', ''),
(218, '10', '8c1e7cf9d1e0cfd5f111b3b163e39307', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Transferencia', 'Banco Soft', '7754547 86799', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"2\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"14500\",\"pt\":\"24650\",\"pt_si\":\"14500\",\"impostos\":\" <b>IVA<\\/b> 14% : 2.030,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 8.120,00. \"},\"3\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"}}', 37400, '', '63580', '19h-57m-11s', '9', '12', '2020', 'jhv hlglll ggl klhh iliulk uih ihilu ul li l il il uiy ll li'),
(219, '11', '85c1c4f9a7054a0939ef473d07cceb24', '5bf7ea7933793c58d758d88790bbaecd', 'Novo', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"teste\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"34957\",\"pt\":\"59427\",\"pt_si\":\"34957\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.893,98. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.575,92. \"}}', 34957, '', '59427', '20h-28m-23s', '9', '12', '2020', ''),
(220, '12', '27aa4c4133e2c2a6c4c02d38caa19a7c', '5bf7ea7933793c58d758d88790bbaecd', 'Novo', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"teste\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"34957\",\"pt\":\"59427\",\"pt_si\":\"34957\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.893,98. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.575,92. \"}}', 34957, '', '59427', '20h-28m-41s', '9', '12', '2020', ''),
(221, '13', 'c5251ef1d5484c6bfad78e62e29ba6e5', '5bf7ea7933793c58d758d88790bbaecd', 'Novo', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"teste\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"34957\",\"pt\":\"59427\",\"pt_si\":\"34957\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.893,98. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.575,92. \"}}', 34957, '', '59427', '20h-30m-11s', '9', '12', '2020', ''),
(222, '14', '57cec47dcd40b2454c87ebc67f744fb0', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"}}', 5900, '', '10030', '20h-31m-41s', '9', '12', '2020', ''),
(223, '15', '2299974d01f6fb51ed92582653759750', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"2\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"}}', 8400, '', '14280', '20h-36m-10s', '9', '12', '2020', ''),
(224, '16', '8d9e1fcc56a77409139edd808e3d2cb5', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"2\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"}}', 8400, '', '14280', '20h-36m-22s', '9', '12', '2020', ''),
(225, '17', '68e31ee0a8310e647ccf60007ad3b36d', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"2\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"}}', 8400, '', '14280', '20h-43m-12s', '9', '12', '2020', ''),
(226, '18', 'aebb6399385a26eb721133d8bec963ad', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"}}', 2500, '', '4250', '20h-45m-8s', '9', '12', '2020', ''),
(227, '19', '46651b935bd6b0b38eb68f90f0c8a7a1', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Outro Produto\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"1300\",\"pt\":\"2210\",\"pt_si\":\"1300\",\"impostos\":\" <b>IVA<\\/b> 14% : 182,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 728,00. \"}}', 1300, '', '2210', '20h-47m-36s', '9', '12', '2020', ''),
(228, '20', 'fd0223564307c45c4d6a401063ab42a8', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"2\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"}}', 8400, '', '14280', '20h-48m-3s', '9', '12', '2020', ''),
(229, '21', '64277b4dd94b4306a5c219fb7873d03d', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '20h-55m-3s', '9', '12', '2020', ''),
(230, '22', '1795e8c5d363ea688d8864d24b0bf92e', '62af13ab79b6a', 'Tshirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"vinil de corte\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5500\",\"pt\":\"9350\",\"pt_si\":\"5500\",\"impostos\":\" <b>IVA<\\/b> 14% : 770,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.080,00. \"}}', 5500, '', '9350', '20h-56m-4s', '9', '12', '2020', ''),
(231, '23', '3eb0bdaa27b911679e4a833684a31705', '62af13ab79b6a', 'Tshirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Lona\",\"venda_por\":\"metro\",\"qtd\":\"3\",\"lar\":\"2\",\"alt\":\"1.7\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"}}', 5900, '', '10030', '21h-3m-9s', '9', '12', '2020', ''),
(232, '24', '6bb20bbf1b6f8d951fe3490dfe638165', '62af13ab79b6a', 'Tshirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"}}', 1, '', '1', '21h-7m-45s', '9', '12', '2020', ''),
(233, '25', 'ec4b6e71bc9aeb93d572e44041350c28', '62af13ab79b6a', 'Tshirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Tshirt\",\"venda_por\":\"unidade\",\"qtd\":\"24\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"}}', 2500, '', '4250', '21h-18m-4s', '9', '12', '2020', ''),
(234, '26', '1b870753893d8d22aa048e013856301a', '5bf7ea7933793c58d758d88790bbaecd', 'Novo', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"teste\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"34957\",\"pt\":\"59427\",\"pt_si\":\"34957\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.893,98. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.575,92. \"}}', 34957, '', '59427', '21h-23m-39s', '9', '12', '2020', ''),
(235, '27', '6d5cbdb4a9f479a8c35295deb21ffc82', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '21h-24m-57s', '9', '12', '2020', ''),
(236, '28', '4ace09177ed4dcb8c5d4114fb449ff8a', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"14500\",\"pt\":\"24650\",\"pt_si\":\"14500\",\"impostos\":\" <b>IVA<\\/b> 14% : 2.030,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 8.120,00. \"}}', 14500, '', '24650', '21h-27m-12s', '9', '12', '2020', ''),
(237, '29', '030bb0caf8da4ff4dfa265ec22cbd191', '5bf7ea7933793c58d758d88790bbaecd', '0', 'Caetano Borges-721867', '0', '0', '0', '0', '{}', 0, '0', '0', '11h-26m-0s', '10', '12', '2020', '0'),
(238, '30', '9915b34c0ea76971c20bd0d40fc01ed8', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"}}', 8400, '', '14280', '16h-18m-43s', '11', '1', '2022', ''),
(239, '31', '432d67222355f6063dde99f303c7a0be', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"}}', 8400, '', '14280', '16h-18m-55s', '11', '1', '2022', ''),
(240, '32', '34141952cd61a044d8a7dde12bcd0057', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"}}', 8400, '', '14280', '16h-19m-11s', '11', '1', '2022', ''),
(241, '33', '09f64617e353d38fa54998a64afce3ae', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"}}', 8400, '', '14280', '16h-19m-21s', '11', '1', '2022', ''),
(242, '34', 'd2a9d72fea86af6d66766c23b93bd3fa', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"}}', 8400, '', '14280', '16h-19m-28s', '11', '1', '2022', ''),
(243, '35', '1931ab93c678430859f7ca38beeb1a36', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Nome-de4cd0', 'Nif', 'TPA', 'Banco Soft', '', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"},\"2\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"14500\",\"pt\":\"24650\",\"pt_si\":\"14500\",\"impostos\":\" <b>IVA<\\/b> 14% : 2.030,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 8.120,00. \"}}', 20400, '', '34680', '16h-39m-38s', '11', '1', '2022', ''),
(244, '36', '01cd601a194c07e27c5aa84a1783dc24', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Nome-de4cd0', 'Nif', 'TPA', 'Banco Soft', '', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"},\"2\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"14500\",\"pt\":\"24650\",\"pt_si\":\"14500\",\"impostos\":\" <b>IVA<\\/b> 14% : 2.030,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 8.120,00. \"}}', 20400, '', '34680', '16h-40m-59s', '11', '1', '2022', ''),
(245, '37', 'a48f8a19dcdf542eaa07166ba06ba82a', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', ' ', ' ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"}}', 2500, '', '4250', '16h-44m-18s', '11', '1', '2022', ''),
(246, '38', 'b79019785657bbd1da22033c0720ccd4', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"}}', 2500, '', '4250', '16h-45m-0s', '11', '1', '2022', ''),
(247, '39', '212dd595ac123823ceaffaa93540886b', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'TPA', ' ', '', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"2\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"}}', 8400, '', '14280', '16h-47m-47s', '11', '1', '2022', ''),
(248, '40', 'dbf469f0c4e4ef5a759bdc09e2077cbb', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'eter-bbcb6a', '0000000000000000', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"14500\",\"pt\":\"24650\",\"pt_si\":\"14500\",\"impostos\":\" <b>IVA<\\/b> 14% : 2.030,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 8.120,00. \"}}', 14500, '', '24650', '16h-49m-5s', '11', '1', '2022', ''),
(249, '41', 'e2b551fe3ec8bea99956895bbfe84004', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Nome-de4cd0', 'Nif', 'TPA', 'BAI', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '16h-49m-53s', '11', '1', '2022', ''),
(250, '42', '609560772d975ddc7264b0c2e1054ffd', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', ' ', ' ', 'Transferencia', 'iohruhur', '', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"}}', 5900, '', '10030', '16h-50m-17s', '11', '1', '2022', ''),
(251, '43', 'ac1c0837557d6336b87c2a6495d6540b', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'eter-bbcb6a', '0000000000000000', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"}}', 2500, '', '4250', '16h-52m-21s', '11', '1', '2022', ''),
(252, '44', '2401d8c3bd6ac6caefadaa9d40261ffa', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"}}', 5000, '', '8500', '16h-54m-51s', '11', '1', '2022', ''),
(253, '45', 'c494dce6b3790b2e65a1fe1f3bad5b8b', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', 'null', '', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"}}', 5000, '', '8500', '16h-55m-8s', '11', '1', '2022', ''),
(254, '46', '59ec09b9810277492fa38652d4029432', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', 'null', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '16h-55m-20s', '11', '1', '2022', ''),
(255, '47', '8f74c2f61aa092cef0f591176b1d1e03', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"}}', 5000, '', '8500', '17h-9m-35s', '11', '1', '2022', ''),
(256, '48', '9bfafef88095a800a50ed3cc088816b6', '5bf7ea7933793c58d758d88790bbaecd', 'Novo', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"teste\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"34957\",\"pt\":\"59427\",\"pt_si\":\"34957\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.893,98. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.575,92. \"}}', 34957, '', '59427', '13h-0m-17s', '12', '1', '2022', ''),
(257, '49', '32c7ce502a4adbc3ff3f040069a6f661', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"2\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"14500\",\"pt\":\"24650\",\"pt_si\":\"14500\",\"impostos\":\" <b>IVA<\\/b> 14% : 2.030,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 8.120,00. \"}}', 17000, '', '28900', '17h-36m-17s', '11', '1', '2022', ''),
(258, '50', 'b434fb0f07728a9c66836dcf933e108f', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"2\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"14500\",\"pt\":\"24650\",\"pt_si\":\"14500\",\"impostos\":\" <b>IVA<\\/b> 14% : 2.030,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 8.120,00. \"}}', 17000, '', '28900', '17h-36m-17s', '11', '1', '2022', ''),
(259, '51', '1b0d45d445134b218a3d9cd860b55881', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"2\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"14500\",\"pt\":\"24650\",\"pt_si\":\"14500\",\"impostos\":\" <b>IVA<\\/b> 14% : 2.030,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 8.120,00. \"}}', 17000, '', '28900', '17h-36m-17s', '11', '1', '2022', ''),
(260, '52', '3af59830ab5e9cbe973753206d1e6112', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"}}', 2500, '', '4250', '15h-28m-17s', '12', '1', '2022', ''),
(261, '53', '039a8ebdf163eca3ce6731ec152aabe7', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"2\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"14500\",\"pt\":\"24650\",\"pt_si\":\"14500\",\"impostos\":\" <b>IVA<\\/b> 14% : 2.030,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 8.120,00. \"}}', 17000, '', '28900', '15h-30m-31s', '12', '1', '2022', ''),
(262, '54', '7c58294b655a847ac41b379c0f9be431', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-30m-44s', '12', '1', '2022', ''),
(263, '55', '0e7b1505d5d7e4256083585394ee78cd', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"2\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"14500\",\"pt\":\"24650\",\"pt_si\":\"14500\",\"impostos\":\" <b>IVA<\\/b> 14% : 2.030,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 8.120,00. \"},\"3\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"14500\",\"pt\":\"24650\",\"pt_si\":\"14500\",\"impostos\":\" <b>IVA<\\/b> 14% : 2.030,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 8.120,00. \"}}', 31500, '', '53550', '15h-31m-13s', '12', '1', '2022', ''),
(264, '56', '41f9c41dbf83daab79e07cf401d7d4f4', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', ' ', ' ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"}}', 5900, '', '10030', '15h-35m-44s', '12', '1', '2022', ''),
(265, '57', '7b6e595e3a5f9a3188121352ddab7ae1', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(266, '58', '273fc84b768430242f8ae9f5b837e7f7', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(267, '59', 'fcea701958fb6005e3ee5c5a7238f54b', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(268, '60', '77ea9631260dced5fd75d70c62269b4a', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(269, '61', '431777d444f2978799105ae5de23da0a', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(270, '62', 'e5f32d12797558749eb18ed8848c610c', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(271, '63', '559567a71c8037e7469a8617a672a21b', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(272, '64', '63287534ce71f64d7cecca23ad9c922f', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(273, '65', '593f8c4abd4955c2313712853815b0b6', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(274, '66', 'fa4131e92066c15fcf66fa4a81715a96', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(275, '67', 'c42c3c19dc23a5da5b581c2ee7b0fb7f', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(276, '68', '68bd24c59a12c306222f929979e3c9b6', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(277, '69', '62c4af3c3e3a99c176db812f137bb04f', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(278, '70', '9b6d1f02ba02e69105eae18a76db4f7c', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(279, '71', '1b255916a1d589c8dcc707cddfe0644e', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(280, '72', '0c4cfd959acf0cee747fda57f4e08a54', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(281, '73', '41e250baa09f42a40663d55e007c3cec', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(282, '74', 'cc74cfa133ce940b09871400bf177708', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(283, '75', '750a80f64227078f2df44e743dde680c', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(284, '76', 'f4c873ca6cb513229ad0abab81a64706', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(285, '77', '3a3156bbca43f15943515099f10441b3', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(286, '78', '48ac7f8eb52f8bcd96c053964109f34d', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(287, '79', 'a7c778250ca4dfefb28ffde547d303e9', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(288, '80', '6eedd8f7410e47a96196b0e0cc8081f5', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(289, '81', '44675ea413e88936605b19fb154af844', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(290, '82', 'a8d93b17c088a4c5c08d3e9d24ba0a79', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(291, '83', 'ca3a8bd4d8c8fc7594928fd3295d2bb1', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(292, '84', 'c439c01e71276a9c9acaff4660f174fb', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(293, '85', '71252afd171ce85ff7155869f02124e3', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(294, '86', '527d80f8f59d00971703ec8cced0e34a', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(295, '87', '21e337dab295a1062a37fbcba3e06028', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', '');
INSERT INTO `app_registo` (`id`, `id_fatura`, `chave_fatura`, `chave_user`, `stock`, `id_cliente`, `nif_cliente`, `tipo_de_pagamento`, `banco`, `numero_talao`, `itens_da_fatura`, `total_da_fatura`, `impostos`, `total_com_impostos`, `hora`, `dia_entrada`, `mes_entrada`, `ano_entrada`, `nota_da_fatura`) VALUES
(296, '88', 'bdfff8957b5dda1401c6b4ca4be04820', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(297, '89', '7d71a0221dec38377073e4f139da4a6c', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(298, '90', 'b2d2257f635fbb2fccd21090e1492c87', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(299, '91', 'a488daa39286d78aa4b58b75808d94d8', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(300, '92', 'b78ce66cb65f392373596f7048c4fcaf', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(301, '93', '4185b1146eef4a12e014d326ea36fac8', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(302, '94', '9162a35fa1516424c31ad92bda55f366', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(303, '95', '3048f84e0b3f96373b1a01dd5a5a8d4c', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(304, '96', '47849a0496da4c1f725f887c24590367', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(305, '97', '2346e0e8f170bc0a054ec48f581703ae', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(306, '98', 'beb78363d307e512cea2675d3917edd3', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(307, '99', 'f4fafb5b76c05a800a21d00cb08a8250', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(308, '100', '03a294d6ad6c1afb8b2cecf481d60847', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(309, '101', '6673d3e5171658440b5b769d1e3d0160', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(310, '102', '4a7ad43f9ea7b3d465bcd370def56fcb', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(311, '103', '4fd3b977edc9e61fbd9f7eb3efc996c0', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(312, '104', 'da91b47e6efc1362a1c592ea823f24dd', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'TPA', 'Banco Soft', '', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"4\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"40120\",\"pt_si\":\"23600\",\"impostos\":\" <b>IVA<\\/b> 14% : 3.304,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 13.216,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"3\",\"cor\":\"3\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"3\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"6\",\"tam\":\"s\",\"cor\":\"verd\",\"pu\":\"14500\",\"pt\":\"147900\",\"pt_si\":\"87000\",\"impostos\":\" <b>IVA<\\/b> 14% : 12.180,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 48.720,00. \"}}', 113100, '', '192270', '17h-29m-1s', '12', '1', '2022', 'Nota aqui'),
(313, '105', '0d2ea961d26a2bc1d9725142f48c7935', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(314, '106', '575ed4f74764b6d9fcb09a864712e428', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(315, '107', 'd5c9ad390b2cf7fbaeb35dc16d9fbdb4', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(316, '108', '4d79012ef8b6f6634d4debf390b82e15', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(317, '109', 'f8371ad3999cafbbcbdca4c18fb39ada', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(318, '110', '7b1aff22b9d557385cfe0fbdbba76228', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(319, '111', 'd0c849f77384b3082f92046c8d1b692a', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(320, '112', 'd6a48def370a33fa82f1cc59f0f502b9', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(321, '113', '400bde46fa6e87e76cada284769dfb91', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(322, '114', 'ed0a0c41e4b5cc3d5b03b1d86cc8d7ec', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(323, '115', '149b10b9fae3172d9b125b5a457bcdcd', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(324, '116', 'beaf8b8842e9be39e2ef50bd6d4d7d81', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(325, '117', 'fdce5d329fca7a94f2722d102a477fe8', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(326, '118', 'f0451fe63a4e3a90eb37aa22242f4b3e', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(327, '119', '61a86c21e9ce1ad18e794320c25d58be', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(328, '120', 'd2ce9ffd9936eb807311f87e1b7a4bab', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(329, '121', '393dc06565b2e62035158487661a4854', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(330, '122', '22d348e916c39caeab8da212e73f0dd2', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Transferencia', ' ', '', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"},\"2\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"14500\",\"pt\":\"24650\",\"pt_si\":\"14500\",\"impostos\":\" <b>IVA<\\/b> 14% : 2.030,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 8.120,00. \"}}', 20400, '', '34680', '13h-21m-49s', '13', '1', '2022', 'Tem nota muito bem'),
(331, '123', '1269c5f8d29bcf45b021d26a369015aa', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Transferencia', 'Banco Soft', '7564783 384y5-98345', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"5\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"50150\",\"pt_si\":\"29500\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.130,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 16.520,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"5\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"21250\",\"pt_si\":\"12500\",\"impostos\":\" <b>IVA<\\/b> 14% : 1.750,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 7.000,00. \"},\"3\":{\"des\":\"Outro Produto\",\"venda_por\":\"unidade\",\"qtd\":\"5\",\"tam\":\"s, m\",\"cor\":\"verd, amar\",\"pu\":\"1300\",\"pt\":\"11050\",\"pt_si\":\"6500\",\"impostos\":\" <b>IVA<\\/b> 14% : 910,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.640,00. \"}}', 48500, '', '82450', '13h-23m-54s', '13', '1', '2022', 'Tem nota'),
(332, '124', 'a7aff70b34e23b465bac947788b5fa6f', '5bf7ea7933793c58d758d88790bbaecd', 'Novo', 'Caetano Borges-721867', '6545 67 ', 'Transferencia', 'Banco Soft', '894589-ABCDoi5u684', '{\"1\":{\"des\":\"teste\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"s\",\"cor\":\"v\",\"pu\":\"34957\",\"pt\":\"59427\",\"pt_si\":\"34957\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.893,98. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.575,92. \"},\"2\":{\"des\":\"teste\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"34957\",\"pt\":\"59427\",\"pt_si\":\"34957\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.893,98. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.575,92. \"},\"3\":{\"des\":\"teste\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"34957\",\"pt\":\"59427\",\"pt_si\":\"34957\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.893,98. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.575,92. \"}}', 104871, '', '178281', '13h-26m-22s', '13', '1', '2022', 'tkjnt yjktry t jj y j'),
(333, '125', '9005fc256941f533cb2d3886686051f6', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(334, '126', '98812856fe483479eb6cc3ac67e85dd3', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(335, '127', '4a6ca5ecdb0c1eba1878568108652da7', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Transferencia', 'Banco Soft', '--ooo00099', '{\"1\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"4250\",\"pt_si\":\"2500\",\"impostos\":\" <b>IVA<\\/b> 14% : 350,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 1.400,00. \"},\"2\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"1\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"5900\",\"pt\":\"10030\",\"pt_si\":\"5900\",\"impostos\":\" <b>IVA<\\/b> 14% : 826,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 3.304,00. \"},\"3\":{\"des\":\"Outro Produto\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"1300\",\"pt\":\"2210\",\"pt_si\":\"1300\",\"impostos\":\" <b>IVA<\\/b> 14% : 182,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 728,00. \"}}', 12200, '', '20740', '14h-44m-39s', '13', '1', '2022', '---pppp11'),
(336, '128', 'c1728c0d88064d587c7a8a2d0668f4cf', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(337, '129', '855eeca61b1bf16243adb367448ab7a3', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(338, '130', 'c16bf55d5e5638d79653f920a73ff581', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(339, '131', '0e53c410d4d7dc3f45b6a398eaee0201', '5bf7ea7933793c58d758d88790bbaecd', 'mais um stock', 'Caetano Borges-721867', '6545 67 ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"OutroProd\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"35000\",\"pt\":\"59500\",\"pt_si\":\"35000\",\"impostos\":\" <b>IVA<\\/b> 14% : 4.900,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 19.600,00. \"}}', 35000, '', '59500', '15h-35m-57s', '12', '1', '2022', ''),
(340, '132', '3027c347e29fd6cc38be2fa83b231c1c', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Transferencia', 'Banco Soft', 'numero do recibo', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"2\",\"lar\":\"1.5\",\"alt\":\"0.5\",\"pm\":\"5900\",\"pt\":\"15045\",\"pt_si\":\"8850\",\"impostos\":\" <b>IVA<\\/b> 14% : 1.239,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 4.956,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"4\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"17000\",\"pt_si\":\"10000\",\"impostos\":\" <b>IVA<\\/b> 14% : 1.400,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 5.600,00. \"},\"3\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"3\",\"tam\":\"M, S, XL\",\"cor\":\"Azul, Vermelho, Preto\",\"pu\":\"14500\",\"pt\":\"73950\",\"pt_si\":\"43500\",\"impostos\":\" <b>IVA<\\/b> 14% : 6.090,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 24.360,00. \"}}', 62350, '', '105995', '13h-47m-6s', '17', '1', '2022', ''),
(341, '133', '5918ce1a24f22833d7ae15b9ac343887', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Transferencia', 'Banco Soft', 'numero do recibo', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"2\",\"lar\":\"1.5\",\"alt\":\"0.5\",\"pm\":\"5900\",\"pt\":\"15045\",\"pt_si\":\"8850\",\"impostos\":\" <b>IVA<\\/b> 14% : 1.239,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 4.956,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"4\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"17000\",\"pt_si\":\"10000\",\"impostos\":\" <b>IVA<\\/b> 14% : 1.400,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 5.600,00. \"},\"3\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"3\",\"tam\":\"M, S, XL\",\"cor\":\"Azul, Vermelho, Preto\",\"pu\":\"14500\",\"pt\":\"73950\",\"pt_si\":\"43500\",\"impostos\":\" <b>IVA<\\/b> 14% : 6.090,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 24.360,00. \"}}', 62350, '', '105995', '13h-47m-6s', '17', '1', '2022', ''),
(342, '134', '28e1a16a4c1a5b7dbca3e76c3b11b21d', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Transferencia', 'Banco Soft', 'numero do recibo', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"2\",\"lar\":\"1.5\",\"alt\":\"0.5\",\"pm\":\"5900\",\"pt\":\"15045\",\"pt_si\":\"8850\",\"impostos\":\" <b>IVA<\\/b> 14% : 1.239,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 4.956,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"4\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"17000\",\"pt_si\":\"10000\",\"impostos\":\" <b>IVA<\\/b> 14% : 1.400,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 5.600,00. \"},\"3\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"3\",\"tam\":\"M, S, XL\",\"cor\":\"Azul, Vermelho, Preto\",\"pu\":\"14500\",\"pt\":\"73950\",\"pt_si\":\"43500\",\"impostos\":\" <b>IVA<\\/b> 14% : 6.090,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 24.360,00. \"}}', 62350, '', '105995', '13h-47m-6s', '17', '1', '2022', ''),
(343, '135', '682a323bf5316f40100326c901a4c542', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Transferencia', 'Banco Soft', 'numero do recibo', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"2\",\"lar\":\"1.5\",\"alt\":\"0.5\",\"pm\":\"5900\",\"pt\":\"15045\",\"pt_si\":\"8850\",\"impostos\":\" <b>IVA<\\/b> 14% : 1.239,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 4.956,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"4\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"17000\",\"pt_si\":\"10000\",\"impostos\":\" <b>IVA<\\/b> 14% : 1.400,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 5.600,00. \"},\"3\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"3\",\"tam\":\"M, S, XL\",\"cor\":\"Azul, Vermelho, Preto\",\"pu\":\"14500\",\"pt\":\"73950\",\"pt_si\":\"43500\",\"impostos\":\" <b>IVA<\\/b> 14% : 6.090,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 24.360,00. \"}}', 62350, '', '105995', '13h-47m-6s', '17', '1', '2022', ''),
(344, '136', '3dca907b9b380e542a4b0c4f06c4ddce', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Transferencia', 'Banco Soft', 'numero do recibo', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"2\",\"lar\":\"1.5\",\"alt\":\"0.5\",\"pm\":\"5900\",\"pt\":\"15045\",\"pt_si\":\"8850\",\"impostos\":\" <b>IVA<\\/b> 14% : 1.239,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 4.956,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"4\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"17000\",\"pt_si\":\"10000\",\"impostos\":\" <b>IVA<\\/b> 14% : 1.400,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 5.600,00. \"},\"3\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"3\",\"tam\":\"M, S, XL\",\"cor\":\"Azul, Vermelho, Preto\",\"pu\":\"14500\",\"pt\":\"73950\",\"pt_si\":\"43500\",\"impostos\":\" <b>IVA<\\/b> 14% : 6.090,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 24.360,00. \"}}', 62350, '', '105995', '13h-47m-6s', '17', '1', '2022', ''),
(345, '137', 'd4d9d0716d9aa9d3f42dd95c62d3fedc', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Transferencia', 'Banco Soft', 'numero do recibo', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"2\",\"lar\":\"1.5\",\"alt\":\"0.5\",\"pm\":\"5900\",\"pt\":\"15045\",\"pt_si\":\"8850\",\"impostos\":\" <b>IVA<\\/b> 14% : 1.239,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 4.956,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"4\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"17000\",\"pt_si\":\"10000\",\"impostos\":\" <b>IVA<\\/b> 14% : 1.400,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 5.600,00. \"},\"3\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"3\",\"tam\":\"M, S, XL\",\"cor\":\"Azul, Vermelho, Preto\",\"pu\":\"14500\",\"pt\":\"73950\",\"pt_si\":\"43500\",\"impostos\":\" <b>IVA<\\/b> 14% : 6.090,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 24.360,00. \"}}', 62350, '', '105995', '13h-47m-6s', '17', '1', '2022', ''),
(346, '138', 'fe3e74dff289d015b19843d49c2b90dc', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Transferencia', 'Banco Soft', 'numero do recibo', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"2\",\"lar\":\"1.5\",\"alt\":\"0.5\",\"pm\":\"5900\",\"pt\":\"15045\",\"pt_si\":\"8850\",\"impostos\":\" <b>IVA<\\/b> 14% : 1.239,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 4.956,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"4\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"17000\",\"pt_si\":\"10000\",\"impostos\":\" <b>IVA<\\/b> 14% : 1.400,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 5.600,00. \"},\"3\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"3\",\"tam\":\"M, S, XL\",\"cor\":\"Azul, Vermelho, Preto\",\"pu\":\"14500\",\"pt\":\"73950\",\"pt_si\":\"43500\",\"impostos\":\" <b>IVA<\\/b> 14% : 6.090,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 24.360,00. \"}}', 62350, '', '105995', '13h-47m-6s', '17', '1', '2022', ''),
(347, '139', 'e2ff4ad4245c54dca675b73d09b00adb', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Transferencia', 'Banco Soft', 'numero do recibo', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"2\",\"lar\":\"1.5\",\"alt\":\"0.5\",\"pm\":\"5900\",\"pt\":\"15045\",\"pt_si\":\"8850\",\"impostos\":\" <b>IVA<\\/b> 14% : 1.239,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 4.956,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"4\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"17000\",\"pt_si\":\"10000\",\"impostos\":\" <b>IVA<\\/b> 14% : 1.400,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 5.600,00. \"},\"3\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"3\",\"tam\":\"M, S, XL\",\"cor\":\"Azul, Vermelho, Preto\",\"pu\":\"14500\",\"pt\":\"73950\",\"pt_si\":\"43500\",\"impostos\":\" <b>IVA<\\/b> 14% : 6.090,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 24.360,00. \"}}', 62350, '', '105995', '13h-47m-6s', '17', '1', '2022', ''),
(348, '140', 'b35d57d1b0f383ade9cc77c4ee3c32c1', '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'Caetano Borges-721867', '6545 67 ', 'Transferencia', 'Banco Soft', 'numero do recibo', '{\"1\":{\"des\":\"Lona de ouro\",\"venda_por\":\"metro\",\"qtd\":\"2\",\"lar\":\"1.5\",\"alt\":\"0.5\",\"pm\":\"5900\",\"pt\":\"15045\",\"pt_si\":\"8850\",\"impostos\":\" <b>IVA<\\/b> 14% : 1.239,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 4.956,00. \"},\"2\":{\"des\":\"Quatro Vinil + PVC 30x30\",\"venda_por\":\"unidade\",\"qtd\":\"4\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"2500\",\"pt\":\"17000\",\"pt_si\":\"10000\",\"impostos\":\" <b>IVA<\\/b> 14% : 1.400,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 5.600,00. \"},\"3\":{\"des\":\"FeniX-Shirt \",\"venda_por\":\"unidade\",\"qtd\":\"3\",\"tam\":\"M, S, XL\",\"cor\":\"Azul, Vermelho, Preto\",\"pu\":\"14500\",\"pt\":\"73950\",\"pt_si\":\"43500\",\"impostos\":\" <b>IVA<\\/b> 14% : 6.090,00. <b>irytrytri<\\/b> 0% : 0,00. <b>outro<\\/b> 56% : 24.360,00. \"}}', 62350, '', '105995', '13h-47m-6s', '17', '1', '2022', ''),
(349, '1', '211120652b8e54462d7e7f8beb879ed4', 'eeaf82bb09a2753c50cf670a79c124b4', 'Tshirt e lona', ' ', ' ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Tshirt\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"3800\",\"pt\":\"3800\",\"pt_si\":\"3800\",\"impostos\":\" \"}}', 3800, '', '3800', '21h-42m-9s', '24', '3', '2022', ''),
(350, '2', '6af65c89f168e1676de880195f841c50', 'eeaf82bb09a2753c50cf670a79c124b4', 'Tshirt e lona', ' ', ' ', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Tshirt\",\"venda_por\":\"unidade\",\"qtd\":\"1\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"3800\",\"pt\":\"3800\",\"pt_si\":\"3800\",\"impostos\":\" \"},\"2\":{\"des\":\"Lona\",\"venda_por\":\"metro\",\"qtd\":\"4\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"8900\",\"pt\":\"35600\",\"pt_si\":\"35600\",\"impostos\":\" \"}}', 39400, '', '39400', '22h-33m-31s', '24', '3', '2022', ''),
(351, '3', '56538074d7811659bec422050c7c038f', 'eeaf82bb09a2753c50cf670a79c124b4', 'Tshirt e lona', 'Primeiro cliente-1', '09879823672352', 'Dinheiro', ' ', '', '{\"1\":{\"des\":\"Tshirt\",\"venda_por\":\"unidade\",\"qtd\":\"3\",\"tam\":\"\",\"cor\":\"\",\"pu\":\"3800\",\"pt\":\"11400\",\"pt_si\":\"11400\",\"impostos\":\" \"},\"2\":{\"des\":\"Lona\",\"venda_por\":\"metro\",\"qtd\":\"3\",\"lar\":\"1\",\"alt\":\"1\",\"pm\":\"8900\",\"pt\":\"26700\",\"pt_si\":\"26700\",\"impostos\":\" \"}}', 38100, '', '38100', '8h-59m-7s', '9', '7', '2022', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_saida`
--

CREATE TABLE `app_saida` (
  `id` int(11) NOT NULL,
  `chave_fatura` varchar(255) NOT NULL,
  `chave_user` varchar(255) NOT NULL,
  `t_paga` varchar(255) NOT NULL,
  `banco` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `nota` varchar(255) NOT NULL,
  `hora` varchar(255) NOT NULL,
  `dia_entrada` text NOT NULL,
  `mes_entrada` text NOT NULL,
  `ano_entrada` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_saida`
--

INSERT INTO `app_saida` (`id`, `chave_fatura`, `chave_user`, `t_paga`, `banco`, `valor`, `nota`, `hora`, `dia_entrada`, `mes_entrada`, `ano_entrada`) VALUES
(23, 'f7da67a34a55de652857bfb3cc167', '5bf7ea7933793c58d758d88790bbaecd', 'TPA', '', '7000', 'iusgfyi rltugyrt lrete rterut ertire tÃ§erht erÃ§th erÃ§ti ert Ã§ terit r tier terÃ§ti ', '15h-57m-14s', '08', '08', '2019'),
(27, 'c6049f0ddd782a4f55a8795259d6daef', '5bf7ea7933793c58d758d88790bbaecd', 'Transferencia', '', '3000', 'kjhfj gebjt ty', '13h-25m-21s', '19', '10', '2019'),
(28, '174bba964699e09d5ec434c0594db5a0', '5bf7ea7933793c58d758d88790bbaecd', 'Dinheiro', '', '8767876', '87y78y7y7h87y7ygyuyu', '17h-14m-43s', '27', '10', '2019'),
(29, '79cdb12e736f15e6a85e4fa2b3cdca49', '5bf7ea7933793c58d758d88790bbaecd', 'Dinheiro', '', '8765', 'jhgyghjhgjg', '17h-26m-22s', '27', '10', '2019'),
(30, '1605bb4364c31df6a90969414e641e4e', '5bf7ea7933793c58d758d88790bbaecd', 'Dinheiro', '', '3446', '456gt y.yjb45y\n45yg y45uybyu4y l5by yl4y l5y5 y5ily', '17h-27m-52s', '27', '10', '2019'),
(31, '34149e6f4f296e1f5078ce861ee54ed6', '5bf7ea7933793c58d758d88790bbaecd', 'Dinheiro', '', '765', 'iuyut uyyu yt uo\noyu  oygygg\np uiu  iug igi  ', '17h-28m-40s', '27', '10', '2019'),
(32, '003fc90c307a26882388845214f4f3f5', '5bf7ea7933793c58d758d88790bbaecd', 'Dinheiro', '', '76687', 'jhgygy jgfuy ygyu ugyu uy', '17h-48m-33s', '27', '10', '2019'),
(33, 'b27d2322097bb201f6d08f6f0af66634', '5bf7ea7933793c58d758d88790bbaecd', 'Dinheiro', '', '3000', '6886345 45', '13h-11m-24s', '15', '12', '2019'),
(34, '58712e0a103ffbb2abc9ea060cd18e5d', '5bf7ea7933793c58d758d88790bbaecd', 'Dinheiro', '', '6666777', 'uytuug luygyu kuy', '13h-15m-30s', '15', '12', '2019'),
(37, 'd724d0902a8e92a560e57c3fb95eb088', '5bf7ea7933793c58d758d88790bbaecd', 'Dinheiro', '', '568765', 'uor7i i76r 76r6', '13h-17m-30s', '15', '12', '2019'),
(46, 'e0a6e314f914e0ee75ee9342df5c2025', '5bf7ea7933793c58d758d88790bbaecd', 'Dinheiro', '', '500', 'uewhfuher', '20h-26m-22s', '28', '3', '2020'),
(47, '7673a28ba29928d6a2914f69d59b06eb', '5bf7ea7933793c58d758d88790bbaecd', 'TPA', 'Banco Soft', '7676765', 'banco soft é o melhor', '10h-30m-11s', '26', '6', '2020'),
(48, '2ec761e1197abe946c1506e8713d99bb', '5bf7ea7933793c58d758d88790bbaecd', 'Transferencia', 'BAI', '3076', 'outro', '10h-31m-19s', '26', '6', '2020'),
(49, 'e20f8dfbb2833014ca9dd52aa15e8d7c', '5bf7ea7933793c58d758d88790bbaecd', 'Dinheiro', 'Banco', '698', 'yjgdyudbdjhgd', '10h-45m-52s', '26', '6', '2020'),
(50, 'aa585261e790174e871c7e62caa41cc7', '5bf7ea7933793c58d758d88790bbaecd', 'TPA', 'Banco Soft', '7866', 'mdfjbgdfh', '13h-52m-30s', '28', '6', '2020'),
(52, 'deb8e70d013634a514d5c927dea04c59', '5bf7ea7933793c58d758d88790bbaecd', 'TPA', 'BAI', '786', '09898', '19h-29m-0s', '3', '7', '2020'),
(53, '8e59a037949b78e83bb110620a682229', '5bf7ea7933793c58d758d88790bbaecd', 'Transferencia', 'Banco Soft', '5000', 'iouiou iugi uig ibu', '19h-29m-15s', '3', '7', '2020'),
(54, '4cfe2b5fa1fb236d9751a6354dfb52a2', '5bf7ea7933793c58d758d88790bbaecd', 'Dinheiro', ' ', '3000', 'iy3 4iuth4ut 565ui65 645ib757 45747n', '19h-46m-7s', '3', '7', '2020'),
(55, '0c4b9345dabd1f829510e975dadeac06', '5bf7ea7933793c58d758d88790bbaecd', 'TPA', 'BAI', '768769678', 'uoo 6 7u 56u 76u 7 u776  76u76 ', '10h-25m-58s', '13', '7', '2020'),
(56, 'd005dfe626006c67b80bdd009ec1f91f', '5bf7ea7933793c58d758d88790bbaecd', 'Transferencia', 'Banco Soft', '4654', '6756nn  h tyhty yt utyuty u tyutyut utyu  tutyu utyu tuty tyutyu', '10h-29m-6s', '13', '7', '2020'),
(57, 'deb0d54ea650cfb7e9a16cf254bc89c9', '5bf7ea7933793c58d758d88790bbaecd', 'TPA', 'BAI', '4554', '45bytb', '19h-46m-13s', '15', '7', '2020'),
(58, 'df228bfc538f67a7ce426de58d8d6c23', '5bf7ea7933793c58d758d88790bbaecd', 'Transferencia', 'iohruhur', '456547757', '56767', '19h-46m-27s', '15', '7', '2020'),
(59, '0e85e874007f055bd2edfd366303f69a', '5bf7ea7933793c58d758d88790bbaecd', 'Dinheiro', 'iohruhur', '564576', '768768457', '19h-46m-37s', '15', '7', '2020'),
(60, '9e3a743c1a59fd6ea9d46f57bde5246e', '62af13ab79b6a', 'Dinheiro', 'iohruhur', '443', 'hgjhjhgj', '19h-47m-20s', '15', '7', '2020'),
(61, '0dc1f8d35a2c415955d8723f6d73a158', '62af13ab79b6a', 'Dinheiro', ' ', '0', 'ghgfj', '19h-51m-31s', '15', '7', '2020'),
(62, '7b9f42e6f1e0137e482d1caa68d50797', '5bf7ea7933793c58d758d88790bbaecd', 'Dinheiro', ' ', '23235235', 'kdfhgkdfh', '16h-57m-38s', '11', '1', '2022'),
(63, '76efafbf7a4a5ab5d7a4dbd7f30a8500', '5bf7ea7933793c58d758d88790bbaecd', 'TPA', 'Banco Soft', '436436346', 'irhire oieroiey', '16h-57m-58s', '11', '1', '2022'),
(64, '5eefe22a608681cbe45d6b8aee1f8e87', 'eeaf82bb09a2753c50cf670a79c124b4', 'Dinheiro', ' ', '600', '', '22h-39m-53s', '24', '3', '2022');

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_stock`
--

CREATE TABLE `app_stock` (
  `id` int(11) NOT NULL,
  `chave_user` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `dia_entrada` varchar(255) NOT NULL,
  `mes_entrada` varchar(255) NOT NULL,
  `ano_entrada` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_stock`
--

INSERT INTO `app_stock` (`id`, `chave_user`, `nome`, `descricao`, `dia_entrada`, `mes_entrada`, `ano_entrada`) VALUES
(6, '5bf7ea7933793c58d758d88790bbaecd', 'Novo', 'weihuhw ritur', '24', '10', '2019'),
(4, '5bf7ea7933793c58d758d88790bbaecd', 'T-shirt e lona', 'sos te skdhjkg dÃ§k ght trhjbtrjyr yry jilr rhul ul ruli uj uj yujk uljkr ukt ujt utju', '16', '10', '2019'),
(56, '62af13ab79b6a', 'rt tryry', 'rt yt yrtyr ty', '2', '8', '2022'),
(53, '5bf7ea7933793c58d758d88790bbaecd', 'rtert', 'ertert', '13', '12', '2020');

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_user`
--

CREATE TABLE `app_user` (
  `id` int(11) NOT NULL,
  `chave` varchar(255) NOT NULL,
  `upline` varchar(255) NOT NULL,
  `nome` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` text NOT NULL,
  `permissao` text NOT NULL,
  `quando` varchar(255) NOT NULL,
  `pacote` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_user`
--

INSERT INTO `app_user` (`id`, `chave`, `upline`, `nome`, `email`, `senha`, `permissao`, `quando`, `pacote`) VALUES
(1, '5bf7ea7933793c58d758d88790bbaecd', '50721223a6f426a81defff85c568daee', 'Caetano Borges', 'cbcaetanoborges@gmail.com', '4d1f31ec259939003df00474b24f8b473c7a498141f347b281f4316609deb508', '4d1f31ec259939003df00474b24f8b473c7a498141f347b281f4316609deb508', '03-02-2022', 'anual'),
(4, '5bf7ea79', '50721223a6f426a81defff85c568daee', 'Outro no', 'outronome@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '481f6cc0511143ccdd7e2d1b1b94faf0a700a8b49cd13922a70b5ae28acaa8c5', '29-04-2020', 'semestral'),
(5, 'ef19b956aaf41ea8e440d42d8a4fb3f3', '87650456573875As', 'ytrtugtyrgeyturter', 'rtretertrtrtretrt', 'db26fb10d5be6005fb081047946d3bfc1aaa0ca1d3d2bdb3ebff597da4c82427', 'ba20a385c72a6843296cbff9c5b216bc325e942a08f13533aa3ab673fee96ff8', '21-02-2022', 'semestral'),
(6, 'a4c59fab6d3e80d1bb0e281b6090b44d', '87650456573875As', 'Alê Borg', 'aleborge@edeangola.com', '4d1f31ec259939003df00474b24f8b473c7a498141f347b281f4316609deb508', '4d1f31ec259939003df00474b24f8b473c7a498141f347b281f4316609deb508', '26-06-2020', 'semestral'),
(7, '078670ee46cdc3e93da141859f09f524', '87650456573875As', 'edeangola.com', 'edeangolareal@gmail.com', 'ee79976c9380d5e337fc1c095ece8c8f22f91f306ceeb161fa51fecede2c4ba1', 'ee79976c9380d5e337fc1c095ece8c8f22f91f306ceeb161fa51fecede2c4ba1', '14-05-2020', 'semestral'),
(8, '62af13ab79b6a', '87650456573875As', 'Um usuario', 'uu@uu.ao', '4d1f31ec259939003df00474b24f8b473c7a498141f347b281f4316609deb508', '57612a22a89a0da42b7c0306bf5beaa9696ef779f08885361d6d78f9460a1124b7e680c7a423478e18d7850626d3ca9b62346debf11c4891c10d46c18beceb96', '01-03-2022', 'anual');

-- --------------------------------------------------------

--
-- Estrutura da tabela `assoc_log`
--

CREATE TABLE `assoc_log` (
  `id` int(11) NOT NULL,
  `chave_assoc` varchar(255) NOT NULL,
  `acao` text NOT NULL,
  `data` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `assoc_menu`
--

CREATE TABLE `assoc_menu` (
  `id` int(11) NOT NULL,
  `sessao` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `rol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `assoc_menu`
--

INSERT INTO `assoc_menu` (`id`, `sessao`, `url`, `rol`) VALUES
(1, 'Home', 'home.html', 'senior'),
(2, 'Sênior(s)', 'senior.html', 'senior'),
(3, 'Júnior(s)', 'junior.html', 'senior'),
(4, 'Associado(s)', 'associados.html', 'senior'),
(5, 'Usuario(s)', 'usuarios.html', 'senior'),
(6, 'Definiçoes', 'definicoes.html', 'senior'),
(7, 'Suporte', 'suporte.html', 'senior'),
(8, 'Home', 'home.html', 'junior'),
(10, 'Associado(s)', 'associados.html', 'junior'),
(11, 'Usuario(s)', 'usuarios.html', 'junior'),
(12, 'Definiçoes', 'definicoes.html', 'junior'),
(13, 'Suporte', 'suporte.html', 'junior'),
(14, 'Home', 'home.html', 'assoc'),
(16, 'Usuario(s)', 'usuarios.html', 'assoc'),
(17, 'Definiçoes', 'definicoes.html', 'assoc'),
(18, 'Suporte', 'suporte.html', 'assoc');

-- --------------------------------------------------------

--
-- Estrutura da tabela `assoc_user`
--

CREATE TABLE `assoc_user` (
  `id` int(11) NOT NULL,
  `chave_assoc` varchar(255) NOT NULL,
  `upline` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `bi` varchar(255) NOT NULL,
  `morada` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rol` varchar(255) NOT NULL,
  `foto` text NOT NULL,
  `senha` text NOT NULL,
  `quando` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `assoc_user`
--

INSERT INTO `assoc_user` (`id`, `chave_assoc`, `upline`, `nome`, `bi`, `morada`, `telefone`, `email`, `rol`, `foto`, `senha`, `quando`) VALUES
(1, '87650456573875As', '', 'Caetano Borges', '976AH0834h', 'Luanda, Viana', '921797626', 'cbcaetanoborges@gmail.com', 'senior', '2543cefab0781308fdbb3099a7058957-1077003.png', '4d1f31ec259939003df00474b24f8b473c7a498141f347b281f4316609deb508', '5y'),
(4, '80593a76c1beb2591dd0603f3a64225a', '87650456573875As', 'yyy', 'tytyty', 'tytyty', 'tytyty', 'tytyty', 'senior', 'default.png', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '66'),
(5, '0509fe7757b1dba5b323c4459d8d2fb7', '87650456573875As', 'ooo', 'tytyty', 'tytyty', 'tytyty', 'tytyty', 'assoc', 'default.png', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '666'),
(6, '2aa0436087ab4a8330dd66ba5e55927e', '87650456573875As', 'Caetano Wambembe Mais', '868745454', 'Luanda', '921998877', 'bcbc@vbv.com', 'junior', 'default.png', 'bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a', ''),
(7, '50721223a6f426a81defff85c568daee', '87650456573875As', 'Marisa', '9999999999999999', 'Huila', '888888888888888888888', 'MS@edeangola.co', 'assoc', 'cbbef66c2bbfb0c06e3af3d4731b6ab8-pp.jpg', '73d5b2f4ba82d59c723c16a909524559d8f31e33c5d8fdcfc57065dca5c9f189', '24-04-2020'),
(11, '9a17ec8e1dcc832a004a32164c813c89', '50721223a6f426a81defff85c568daee', 'Primeiro junior', '9835465293478', 'Benguela', '995878776', 'bg@gmail.com', 'assoc', 'default.png', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '28-04-2020'),
(12, '06cb6c7452ee28d6740a9c9e9482c310', '50721223a6f426a81defff85c568daee', 'Segundo junio', '9835465293478', 'Namibe', '995878776', 'bg@gmail.com', 'junior', 'default.png', 'af41e68e1309fa29a5044cbdc36b90a3821d8807e68c7675a6c495112bc8a55f', '28-04-2020'),
(13, 'f2af2072786152a493968e62fb1e5310', '50721223a6f426a81defff85c568daee', 'Mais Um Junior', '93846', 'Huambo', '893654678', 'hb@hb.com', 'assoc', 'default.png', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '28-04-2020'),
(15, '28bf1a6dd13948b65b3f983d8bc6ab6b', '50721223a6f426a81defff85c568daee', 'aaaaaaaa', 'irugtuirturt', 'rkthjrtjrjtnjrt', 'rtjrtjirojtio', 'ritirtiirt', 'assoc', 'default.png', '3576488488687e078417b4d5b185d3bdbb7f9a02d9b5c4618f33495fe038b14c', '28-04-2020'),
(16, '31a411f44fc299800006bf3d6a1232a5', '50721223a6f426a81defff85c568daee', 'kjnjkjkjkjkln', 'nionoojnjnjnjkj', 'klnknnnuikjnknjnkj', 'klmkiii9jinbbbububu', 'klmklnjnnibjniubnjj', 'assoc', 'default.png', '80311dd0ff1c25d9a3743d08c14d4cd8df8a5b8c4ee22cb8f78e2eb649363fe5', '28-04-2020'),
(17, '446d838bcc49141a44270c45e16fff68', '50721223a6f426a81defff85c568daee', 'jhbjhbhbkb', 'kjbhih', 'jkbhboiio', 'jkbhyuyuuh', 'jkbuiguy', 'assoc', 'default.png', 'fe6a51664f0be6f19d3f45d209811e2c790a6bf13617037405e0fc6527a79ccf', '28-04-2020'),
(18, '9425aec473246d0b6e7086d51ca97e59', '50721223a6f426a81defff85c568daee', 'hghghgiuujbh', 'jkbbuiguigugugi', 'uiuihiuhuuuhuhuhi', 'jkbibuibuijnjnuinn', 'jkbjbjjbjbkjihunjkjn', 'assoc', 'default.png', '2fdcaa465af7ce2a94cc69ad38f662176bf55ff6ccf6ef7b6b2f7975f6753f4a', '28-04-2020'),
(19, '246e8925e4dbe31e0371e86985654715', '87650456573875As', 'ghgggggggggg', 'gggggggggggggg', 'ggggggggggggg', 'gggggggggggg', 'ggggggggggggg', 'senior', 'default.png', 'a8fd7c84506bdac170357eeb664a2d0ed7f991193eee0d48d2226bec3d01bc3b', '28-04-2020'),
(20, '01e203dd791bd671761bb44d9d48ed5c', '50721223a6f426a81defff85c568daee', 'ttttttttttt', 'tttttttttt', 'ttttttttt', 'ttttttttt', 'tttttttt', 'assoc', 'default.png', 'b8e32a6402d7086090ad6e985d1823763b2902e5ec6f0c63ad6c2dced61d097b', '28-04-2020'),
(21, '5b192e3bc0bf091f5f0475a6c5891565', '50721223a6f426a81defff85c568daee', 'uitiutuiuiuti', 'jhhghghjghgjh', 'jfyfyuyuyuuyuy', '889iiuyujkhjkhj', 'uuiuiyuyuyuiui', 'assoc', 'default.png', 'ac8bfba54f589944060f4773bb441a4084c703dbd1c58f43b869c8d4438fbbbc', '28-04-2020'),
(22, '3b94918809cf6fe2c85013284ffeec68', '50721223a6f426a81defff85c568daee', 'hhhhhhhhh', '23233423432', '34324234234', '324234234234', '234234234234', 'assoc', 'default.png', 'bb506732214393921de27254fa0b17eecd7a16c593866229d62f7259720cf22f', '28-04-2020'),
(23, 'a2ec1b26bccb827415e1744a5bf538c0', '50721223a6f426a81defff85c568daee', 'editado', 'tytrytrytr', 'tytrytrytryy', 'tytrytrytry', 'trytrytrytytryt', 'assoc', 'default.png', 'f676a5c7240bc97bb3dc627d5d7a335bb8a1f69d155a6287d7f0408e5a675285', '28-04-2020'),
(24, '6260df8f9d2f4d6aa784264c36076e01', '50721223a6f426a81defff85c568daee', 'rrytrytryrty', 'tytryrtytry', 'tytrytrytryt', 'tytrytrytry', 'tytrytrytrytr', 'junior', 'default.png', '9b2056870beeeed9e9757ded87406f58dbb0cc2a426b0c21700cc51c04130b39', '28-04-2020'),
(25, '8109c6bcfdf8e10b239518a5221372f2', '50721223a6f426a81defff85c568daee', 'qwwqeqwew', 'qweqwew', 'qweqwewe', 'wewqew', 'wqeqwewe', 'junior', 'default.png', 'd87ed848d603f26a6fbac4f55038ebf6572a967cac0db8793319f588b9025ff4', '28-04-2020'),
(26, '9fb2613c0e32caac1d0d0d8157b05ed1', '87650456573875As', 'eretertret', 'erterter', 'rtretreter', 'retertert', 'ertretert', 'senior', 'default.png', 'daf9dbfba185b7d8fb4d5d45cf8e5d1a941cd42a49b61c6053af655fe0f81427', '28-04-2020'),
(28, '0ce01a6ce303e1b5ba9adb6e71555749', '50721223a6f426a81defff85c568daee', 'vvvvbr', 'vvvvvv', 'vvvvvvv', 'vvvvvvvv', 'vvvvvvvv', 'junior', 'default.png', '5e22363936e77b200d078a778a0eef2db904174476b41e4569df1344839ced8e', '29-04-2020'),
(29, '6c18322262e72ba87da56c94ff491162', '50721223a6f426a81defff85c568daee', 'jkgkgou', 'kjhjgjk', 'lkhjhjkh', 'hjhjkhk', 'kjhjhjkh', 'assoc', 'default.png', '5a5160d1ac377e67d2c174eb3b3ff311e938cfcb85d24510ad77de6e505cc9d7', '01-05-2020'),
(30, '841ca5155db3a415162e9278a77310ec', '87650456573875As', 'vvvvvvv', 'bbbbbbbbbb', 'cccccccccccccccc', '------------------------', 'zzzzzzzzzzzzzzzzzzz', 'assoc', 'default.png', 'bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a', '14-05-2020');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `app_avaliacao`
--
ALTER TABLE `app_avaliacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `app_banco`
--
ALTER TABLE `app_banco`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `app_cliente`
--
ALTER TABLE `app_cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `app_definicoes`
--
ALTER TABLE `app_definicoes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chave_user` (`chave_user`);

--
-- Índices para tabela `app_funcionario`
--
ALTER TABLE `app_funcionario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `app_imposto`
--
ALTER TABLE `app_imposto`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `app_produto`
--
ALTER TABLE `app_produto`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `app_proforma`
--
ALTER TABLE `app_proforma`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `app_registo`
--
ALTER TABLE `app_registo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `app_saida`
--
ALTER TABLE `app_saida`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `app_stock`
--
ALTER TABLE `app_stock`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `assoc_log`
--
ALTER TABLE `assoc_log`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `assoc_menu`
--
ALTER TABLE `assoc_menu`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `assoc_user`
--
ALTER TABLE `assoc_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `app_avaliacao`
--
ALTER TABLE `app_avaliacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `app_banco`
--
ALTER TABLE `app_banco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `app_cliente`
--
ALTER TABLE `app_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `app_definicoes`
--
ALTER TABLE `app_definicoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `app_funcionario`
--
ALTER TABLE `app_funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `app_imposto`
--
ALTER TABLE `app_imposto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `app_produto`
--
ALTER TABLE `app_produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `app_proforma`
--
ALTER TABLE `app_proforma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT de tabela `app_registo`
--
ALTER TABLE `app_registo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT de tabela `app_saida`
--
ALTER TABLE `app_saida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de tabela `app_stock`
--
ALTER TABLE `app_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de tabela `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `assoc_log`
--
ALTER TABLE `assoc_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `assoc_menu`
--
ALTER TABLE `assoc_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `assoc_user`
--
ALTER TABLE `assoc_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
