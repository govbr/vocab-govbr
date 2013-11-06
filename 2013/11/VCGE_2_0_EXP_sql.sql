-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Servidor: mysql06.kinghost.net
-- Tempo de Geração: Ago 06, 2013 as 04:04 PM
-- Versão do Servidor: 5.1.70
-- Versão do PHP: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `rsl01`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `VCGE_relacao`
--

CREATE TABLE IF NOT EXISTS `VCGE_relacao` (
  `co_relacao` int(11) NOT NULL AUTO_INCREMENT,
  `co_termo_A` int(11) NOT NULL,
  `tp_relacao` varchar(2) NOT NULL,
  `co_termo_B` int(11) NOT NULL,
  PRIMARY KEY (`co_relacao`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=95 ;

--
-- Extraindo dados da tabela `VCGE_relacao`
--

INSERT INTO `VCGE_relacao` (`co_relacao`, `co_termo_A`, `tp_relacao`, `co_termo_B`) VALUES
(1, 234, 'we', 234),
(2, 18, 'TG', 19),
(3, 18, 'TG', 20),
(4, 18, 'TG', 21),
(5, 18, 'TG', 22),
(6, 18, 'TG', 23),
(7, 18, 'TG', 24),
(8, 18, 'TG', 25),
(9, 18, 'TG', 26),
(10, 18, 'TG', 27),
(11, 18, 'TG', 28),
(12, 1, 'TG', 29),
(13, 1, 'TG', 30),
(14, 1, 'TG', 31),
(15, 1, 'TG', 32),
(16, 3, 'TG', 33),
(17, 3, 'TG', 34),
(18, 3, 'TG', 35),
(19, 3, 'TG', 36),
(20, 37, 'TG', 38),
(21, 37, 'TG', 39),
(22, 37, 'TG', 40),
(23, 41, 'TG', 42),
(24, 41, 'TG', 43),
(25, 41, 'TG', 44),
(26, 45, 'TG', 46),
(27, 45, 'TG', 47),
(28, 45, 'TG', 48),
(29, 6, 'TG', 49),
(30, 6, 'TG', 50),
(31, 6, 'TG', 51),
(32, 7, 'TG', 52),
(33, 7, 'TG', 53),
(34, 7, 'TG', 54),
(35, 7, 'TG', 55),
(36, 56, 'TG', 57),
(37, 56, 'TG', 58),
(38, 56, 'TG', 59),
(39, 60, 'TG', 61),
(40, 60, 'TG', 62),
(41, 60, 'TG', 63),
(42, 60, 'TG', 64),
(43, 65, 'TG', 66),
(44, 65, 'TG', 67),
(45, 65, 'TG', 68),
(46, 10, 'TG', 69),
(47, 10, 'TG', 70),
(48, 10, 'TG', 71),
(49, 10, 'TG', 72),
(50, 12, 'TG', 73),
(51, 12, 'TG', 74),
(52, 12, 'TG', 75),
(53, 12, 'TG', 76),
(54, 12, 'TG', 77),
(55, 78, 'TG', 79),
(57, 78, 'TG', 81),
(58, 82, 'TG', 83),
(59, 82, 'TG', 84),
(60, 82, 'TG', 85),
(61, 86, 'TG', 87),
(62, 86, 'TG', 88),
(63, 86, 'TG', 89),
(64, 86, 'TG', 90),
(65, 86, 'TG', 91),
(66, 86, 'TG', 92),
(67, 14, 'TG', 93),
(68, 14, 'TG', 94),
(69, 14, 'TG', 95),
(70, 96, 'TG', 97),
(71, 96, 'TG', 98),
(72, 96, 'TG', 99),
(73, 15, 'TG', 100),
(74, 15, 'TG', 101),
(75, 15, 'TG', 102),
(76, 15, 'TG', 103),
(77, 15, 'TG', 104),
(78, 15, 'TG', 105),
(79, 106, 'TG', 46),
(80, 106, 'TG', 107),
(81, 106, 'TG', 108),
(82, 16, 'TG', 109),
(83, 16, 'TG', 110),
(84, 16, 'TG', 111),
(85, 16, 'TG', 112),
(86, 16, 'TG', 113),
(87, 114, 'TG', 115),
(88, 114, 'TG', 116),
(89, 114, 'TG', 117),
(90, 114, 'TG', 118),
(91, 114, 'TG', 119),
(92, 120, 'TG', 121),
(93, 120, 'TG', 122),
(94, 120, 'TG', 123);

-- --------------------------------------------------------

--
-- Estrutura da tabela `VCGE_termo`
--

CREATE TABLE IF NOT EXISTS `VCGE_termo` (
  `co_termo` int(11) NOT NULL,
  `no_termo` varchar(50) NOT NULL,
  `co_termo_preferencial` int(11) NOT NULL,
  `tx_nota` varchar(250) NOT NULL,
  `tx_incluidos` varchar(250) NOT NULL,
  `fl_outros` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `VCGE_termo`
--

INSERT INTO `VCGE_termo` (`co_termo`, `no_termo`, `co_termo_preferencial`, `tx_nota`, `tx_incluidos`, `fl_outros`) VALUES
(19, 'Planejamento ', 0, '', '', 0),
(20, 'Compras governamentais', 0, '', '', 0),
(21, 'Fiscalização do Estado', 0, '', '', 0),
(22, 'Normalização e Qualidade', 0, 'Inclui todas as normalizações que o estado faz sobre a sociedade.', '', 0),
(23, 'Operações de dívida pública', 0, '', '', 0),
(24, 'Orçamento', 0, '', '', 0),
(25, 'Patrimônio', 0, '', '', 0),
(26, 'Recursos humanos', 0, '', '', 0),
(27, 'Serviços Públicos ', 0, '', '', 0),
(28, 'Outros em Administração', 0, '', '', 1),
(1, 'Agropecuária', 0, '', '', 0),
(29, 'Abastecimento', 0, '', '', 0),
(30, 'Defesa agropecuária', 0, '', '', 0),
(31, 'Produção agropecuária', 0, '', '', 0),
(32, 'Outros em Agropecuária', 0, '', '', 1),
(3, 'Comércio e Serviços', 0, '', '', 0),
(33, 'Comercio externo', 0, '', '', 0),
(34, 'Defesa do Consumidor', 0, '', '', 0),
(35, 'Turismo ', 0, '', '', 0),
(36, 'Outros em Comércio e serviços', 0, '', '', 1),
(37, 'Comunicações', 0, '', '', 0),
(38, 'Comunicações Postais', 0, '', '', 0),
(39, 'Telecomunicações', 0, '', '', 0),
(40, 'Outros em Comunicações', 0, '', '', 1),
(41, 'Cultura', 0, '', '', 0),
(42, 'Difusão Cultural ', 0, '', '', 0),
(43, 'Patrimônio Cultural ', 0, '', '', 0),
(44, 'Outros em Cultura', 0, '', '', 1),
(45, 'Defesa Nacional', 0, '', '', 0),
(46, 'Defesa Civil', 0, '', 'Bombeiros, enchentes, secas, desabamentos, resgastes', 0),
(47, 'Defesa militar', 0, '', 'Aeronáutica, Exercito, Marinha', 0),
(48, 'Outros em Defesa Nacional', 0, '', '', 1),
(6, 'Economia e Finanças', 0, '', '', 0),
(49, 'Politica econômica', 0, '', '', 0),
(50, 'Sistema Financeiro ', 0, '', '', 0),
(51, 'Outros em Economia e Finanças', 0, '', '', 1),
(7, 'Educação ', 0, 'Suporte de educação como EAD deverão ser incluídos em um dos itens abaixo. ', '', 0),
(52, 'Educação básica', 0, '', '', 0),
(53, 'Educação profissionalizante ', 0, '', '', 0),
(54, 'Educação superior ', 0, '', '', 0),
(55, 'Outros em Educação', 0, '', '', 1),
(56, 'Energia', 0, '', '', 0),
(57, 'Combustíveis', 0, '', '', 0),
(58, 'Energia elétrica', 0, 'Qualquer geração de energia elétrica ', '', 0),
(59, 'Outros em Energia', 0, '', '', 1),
(60, 'Esporte e Lazer', 0, '', '', 0),
(61, 'Esporte comunitário', 0, '', '', 0),
(62, 'Esporte profissional', 0, '', 'Esportes remunerados, atletas de competição', 0),
(63, 'Lazer', 0, '', '', 0),
(64, 'Outros em Esporte e Lazer', 0, '', '', 1),
(65, 'Habitação', 0, '', '', 0),
(66, 'Habitação Rural', 0, '', '', 0),
(67, 'Habitação Urbana', 0, '', '', 0),
(68, 'Outros em Habitação', 0, '', '', 1),
(10, 'Indústria', 0, '', '', 0),
(69, 'Produção Industrial', 0, '', '', 0),
(70, 'Mineração', 0, '', '', 0),
(71, 'Propriedade Industria', 0, '', '', 0),
(72, 'Outros em Industria', 0, '', '', 1),
(12, 'Meio ambiente ', 0, '', '', 0),
(73, 'Água', 0, '', '', 0),
(74, 'Biodiversidade', 0, '', '', 0),
(75, 'Clima', 0, '', '', 0),
(76, 'Preservação e Conservação Ambiental', 0, '', '', 0),
(77, 'Outros em Meio Ambiente', 0, '', '', 1),
(78, 'Pesquisa e Desenvolvimento', 0, '', '', 0),
(79, 'Difusão', 0, '', '', 0),
(81, 'Outros em Pesquisa e Desenvolvimento', 0, '', '', 1),
(82, 'Previdência Social', 0, '', '', 0),
(83, 'Previdência Básica', 0, '', '', 0),
(84, 'Previdência Complementar', 0, '', '', 0),
(85, 'Outros em Previdência', 0, '', '', 1),
(86, 'Proteção Social', 0, '', '', 0),
(87, 'Assistência ao Idoso', 0, '', '', 0),
(88, 'Assistência ao Portador de Deficiência', 0, '', '', 0),
(89, 'Assistência à Criança e ao Adolescente', 0, '', '', 0),
(90, 'Combate a desigualdade', 0, '', '', 0),
(91, 'Cidadania', 0, 'A alocação de cidadania em Proteção Social foi considerada “não ideal”, mas foi a melhor localização encontrada. ', '', 0),
(92, 'Outros em Proteção Social', 0, '', '', 1),
(14, 'Relações Internacionais ', 0, '', '', 0),
(93, 'Relações Diplomáticas', 0, '', '', 0),
(94, 'Cooperação Internacional', 0, '', '', 0),
(95, 'Outros em Relações Internacionais', 0, '', '', 1),
(96, 'Saneamento', 0, '', '', 0),
(97, 'Saneamento Básico Rural', 0, '', '', 0),
(98, 'Saneamento Básico Urbano', 0, '', '', 0),
(99, 'Outros em Saneamento', 0, '', '', 1),
(15, 'Saúde', 0, '', '', 0),
(100, 'Assistência Hospitalar e Ambulatorial', 0, '', '', 0),
(101, 'Atendimento básico ', 0, '', '', 0),
(102, 'Combate a epidemias', 0, '', '', 0),
(103, 'Medicamentos e aparelhos', 0, '', '', 0),
(104, 'Vigilância Sanitária', 0, '', '', 0),
(105, 'Outros em Saúde', 0, '', '', 1),
(106, 'Segurança e Ordem Pública', 0, '', '', 0),
(46, 'Defesa Civil', 0, '', 'Bombeiros, enchentes, secas, desabamentos, resgastes', 0),
(107, 'Policiamento', 0, '', '', 0),
(108, 'Outros em Segurança e Ordem Pública', 0, '', '', 1),
(16, 'Trabalho ', 0, '', '', 0),
(109, 'Empregabilidade', 0, '', '', 0),
(110, 'Fomento ao Trabalho', 0, '', '', 0),
(111, 'Proteção e Benefícios ao Trabalhador', 0, '', '', 0),
(112, 'Relações de Trabalho', 0, '', '', 0),
(113, 'Outros em Trabalho', 0, '', '', 1),
(114, 'Transportes', 0, '', '', 0),
(115, 'Transporte Aéreo', 0, '', '', 0),
(116, 'Transporte Ferroviário', 0, '', '', 0),
(117, 'Transporte Hidroviário', 0, '', '', 0),
(118, 'Transporte Rodoviário', 0, '', '', 0),
(119, 'Outros em Transporte', 0, '', '', 1),
(120, 'Urbanismo ', 0, '', '', 0),
(121, 'Infra-Estrutura Urbana', 0, '', 'Ruas, redes elétrica, de águas, esgoto, equipamentos de limpeza', 0),
(122, 'Serviços Urbanos', 0, '', 'Transporte urbano, eletricidade, água, esgoto, coleta de lixo', 0),
(123, 'Outros em Urbanismo', 0, '', '', 1);
