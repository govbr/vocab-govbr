-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Servidor: mysql01-farm26.kinghost.net
-- Tempo de Geração: Nov 08, 2013 as 02:39 PM
-- Versão do Servidor: 5.5.32
-- Versão do PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `conhecimentopu01`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=116 ;

--
-- Extraindo dados da tabela `VCGE_relacao`
--

INSERT INTO `VCGE_relacao` (`co_relacao`, `co_termo_A`, `tp_relacao`, `co_termo_B`) VALUES
(2, 165, 'TG', 18),
(3, 114, 'TG', 18),
(4, 130, 'TG', 18),
(5, 137, 'TG', 18),
(6, 138, 'TG', 18),
(7, 139, 'TG', 18),
(8, 163, 'TG', 18),
(9, 175, 'TG', 18),
(10, 180, 'TG', 18),
(11, 140, 'TG', 18),
(13, 100, 'TG', 1),
(14, 117, 'TG', 1),
(15, 171, 'TG', 1),
(16, 141, 'TG', 1),
(18, 113, 'TG', 3),
(19, 119, 'TG', 3),
(20, 187, 'TG', 3),
(21, 142, 'TG', 3),
(23, 115, 'TG', 19),
(24, 183, 'TG', 19),
(25, 143, 'TG', 19),
(27, 122, 'TG', 20),
(28, 164, 'TG', 20),
(29, 144, 'TG', 20),
(31, 118, 'TG', 21),
(32, 120, 'TG', 21),
(33, 145, 'TG', 21),
(35, 167, 'TG', 25),
(36, 182, 'TG', 25),
(37, 146, 'TG', 25),
(39, 123, 'TG', 7),
(40, 124, 'TG', 7),
(41, 125, 'TG', 7),
(42, 147, 'TG', 7),
(44, 112, 'TG', 22),
(45, 127, 'TG', 22),
(46, 148, 'TG', 22),
(48, 128, 'TG', 23),
(49, 129, 'TG', 23),
(50, 134, 'TG', 23),
(51, 149, 'TG', 23),
(53, 132, 'TG', 24),
(54, 133, 'TG', 24),
(55, 150, 'TG', 24),
(57, 172, 'TG', 10),
(58, 136, 'TG', 10),
(59, 173, 'TG', 10),
(60, 151, 'TG', 10),
(62, 101, 'TG', 10),
(63, 107, 'TG', 10),
(64, 109, 'TG', 10),
(65, 168, 'TG', 10),
(66, 152, 'TG', 10),
(68, 121, 'TG', 25),
(69, 153, 'TG', 25),
(71, 169, 'TG', 26),
(72, 170, 'TG', 26),
(73, 154, 'TG', 26),
(75, 103, 'TG', 27),
(76, 104, 'TG', 27),
(77, 102, 'TG', 27),
(78, 110, 'TG', 27),
(79, 108, 'TG', 27),
(80, 155, 'TG', 27),
(82, 177, 'TG', 14),
(83, 116, 'TG', 14),
(84, 156, 'TG', 14),
(86, 178, 'TG', 28),
(87, 179, 'TG', 28),
(88, 157, 'TG', 28),
(90, 105, 'TG', 15),
(91, 106, 'TG', 15),
(92, 111, 'TG', 15),
(93, 135, 'TG', 15),
(94, 188, 'TG', 15),
(95, 158, 'TG', 15),
(97, 118, 'TG', 21),
(98, 166, 'TG', 29),
(99, 159, 'TG', 29),
(101, 126, 'TG', 29),
(102, 131, 'TG', 29),
(103, 174, 'TG', 29),
(104, 176, 'TG', 29),
(105, 160, 'TG', 29),
(107, 184, 'TG', 30),
(108, 189, 'TG', 30),
(109, 185, 'TG', 30),
(110, 186, 'TG', 30),
(111, 161, 'TG', 30),
(113, 190, 'TG', 30),
(114, 181, 'TG', 30),
(115, 162, 'TG', 30);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `VCGE_termo`
--

INSERT INTO `VCGE_termo` (`co_termo`, `no_termo`, `co_termo_preferencial`, `tx_nota`, `tx_incluidos`, `fl_outros`) VALUES
(18, 'Administração', 0, 'Inclui todos os aspectos exclusivos da administração. ', '', 0),
(165, 'Planejamento ', 0, '', '', 0),
(114, 'Compras governamentais', 0, 'aquisição de produtos e serviços pela administração pública ', '', 0),
(130, 'Fiscalização do Estado', 0, '', '', 0),
(137, 'Normalização e Qualidade', 0, 'Inclui todas as normalizações que o estado faz sobre a sociedade.', '', 0),
(138, 'Operações de dívida pública', 0, '', '', 0),
(139, 'Orçamento', 0, '', '', 0),
(163, 'Patrimônio', 0, '', '', 0),
(175, 'Recursos humanos', 0, '', '', 0),
(180, 'Serviços Públicos ', 0, '', '', 0),
(140, 'Outros em Administração', 0, '', '', 1),
(1, 'Agropecuária', 0, '', '', 0),
(100, 'Abastecimento', 0, '', '', 0),
(117, 'Defesa agropecuária', 0, '', '', 0),
(171, 'Produção agropecuária', 0, '', '', 0),
(141, 'Outros em Agropecuária', 0, '', '', 1),
(3, 'Comércio e Serviços', 0, '', '', 0),
(113, 'Comercio externo', 0, '', 'Importação e exportação', 0),
(119, 'Defesa do Consumidor', 0, '', '', 0),
(187, 'Turismo ', 0, '', '', 0),
(142, 'Outros em Comércio e serviços', 0, '', '', 1),
(19, 'Comunicações', 0, '', '', 0),
(115, 'Comunicações Postais', 0, '', '', 0),
(183, 'Telecomunicações', 0, '', '', 0),
(143, 'Outros em Comunicações', 0, '', '', 1),
(20, 'Cultura', 0, '', '', 0),
(122, 'Difusão Cultural ', 0, '', '', 0),
(164, 'Patrimônio Cultural ', 0, '', '', 0),
(144, 'Outros em Cultura', 0, '', '', 1),
(21, 'Defesa Nacional', 0, '', '', 0),
(118, 'Defesa Civil', 0, '', 'Bombeiros, enchentes, secas, desabamentos,  resgastes', 0),
(120, 'Defesa militar', 0, '', 'Aeronáutica, Exercito, Marinha', 0),
(145, 'Outros em Defesa Nacional', 0, '', '', 1),
(6, 'Economia e Finanças', 0, '', '', 0),
(167, 'Politica econômica', 0, '', '', 0),
(182, 'Sistema Financeiro ', 0, '', '', 0),
(146, 'Outros em Economia e Finanças', 0, '', '', 1),
(7, 'Educação ', 0, 'Suporte de educação como EAD deverão ser incluídos em um dos itens abaixo. ', '', 0),
(123, 'Educação básica', 0, '', '', 0),
(124, 'Educação profissionalizante ', 0, '', '', 0),
(125, 'Educação superior ', 0, '', '', 0),
(147, 'Outros em Educação', 0, '', '', 1),
(22, 'Energia', 0, '', '', 0),
(112, 'Combustíveis', 0, '', '', 0),
(127, 'Energia elétrica', 0, 'Qualquer geração de energia elétrica ', '', 0),
(148, 'Outros em Energia', 0, '', '', 1),
(23, 'Esporte e Lazer', 0, '', '', 0),
(128, 'Esporte comunitário', 0, '', '', 0),
(129, 'Esporte profissional', 0, '', 'Esportes remunerados, atletas de competição', 0),
(134, 'Lazer', 0, '', '', 0),
(149, 'Outros em Esporte e Lazer', 0, '', '', 1),
(24, 'Habitação', 0, '', '', 0),
(132, 'Habitação Rural', 0, '', '', 0),
(133, 'Habitação Urbana', 0, '', '', 0),
(150, 'Outros em Habitação', 0, '', '', 1),
(10, 'Indústria', 0, '', '', 0),
(172, 'Produção Industrial', 0, '', '', 0),
(136, 'Mineração', 0, '', '', 0),
(173, 'Propriedade Industria', 0, '', '', 0),
(151, 'Outros em Industria', 0, '', '', 1),
(13, 'Meio ambiente ', 0, '', '', 0),
(101, 'Água', 0, '', '', 0),
(107, 'Biodiversidade', 0, '', '', 0),
(109, 'Clima', 0, '', '', 0),
(168, 'Preservação e Conservação Ambiental', 0, '', '', 0),
(152, 'Outros em Meio Ambiente', 0, '', '', 1),
(25, 'Pesquisa e Desenvolvimento', 0, '', '', 0),
(121, 'Difusão', 0, '', '', 0),
(153, 'Outros em Pesquisa e Desenvolvimento', 0, '', '', 1),
(26, 'Previdência Social', 0, '', '', 0),
(169, 'Previdência Básica', 0, '', '', 0),
(170, 'Previdência Complementar', 0, '', '', 0),
(154, 'Outros em Previdência', 0, '', '', 1),
(27, 'Proteção Social', 0, '', '', 0),
(103, 'Assistência ao Idoso', 0, '', '', 0),
(104, 'Assistência ao Portador de Deficiência', 0, '', '', 0),
(102, 'Assistência à Criança e ao Adolescente', 0, '', '', 0),
(110, 'Combate a desigualdade', 0, '', '', 0),
(108, 'Cidadania', 0, 'A alocação de cidadania em Proteção Social foi considerada “não ideal”, mas foi a melhor localização encontrada. ', '', 0),
(155, 'Outros em Proteção Social', 0, '', '', 1),
(14, 'Relações Internacionais', 0, '', '', 0),
(177, 'Relações Diplomáticas', 0, '', '', 0),
(116, 'Cooperação Internacional', 0, '', '', 0),
(156, 'Outros em Relações Internacionais', 0, '', '', 1),
(28, 'Saneamento', 0, '', '', 0),
(178, 'Saneamento Básico Rural', 0, '', '', 0),
(179, 'Saneamento Básico Urbano', 0, '', '', 0),
(157, 'Outros em Saneamento', 0, '', '', 1),
(15, 'Saúde', 0, '', '', 0),
(105, 'Assistência Hospitalar e Ambulatorial', 0, '', '', 0),
(106, 'Atendimento básico ', 0, '', '', 0),
(111, 'Combate a epidemias', 0, '', '', 0),
(135, 'Medicamentos e aparelhos', 0, '', '', 0),
(188, 'Vigilância Sanitária', 0, '', '', 0),
(158, 'Outros em Saúde', 0, '', '', 1),
(29, 'Segurança e Ordem Pública', 0, '', '', 0),
(166, 'Policiamento', 0, '', '', 0),
(159, 'Outros em Segurança e Ordem Pública', 0, '', '', 1),
(16, 'Trabalho ', 0, '', '', 0),
(126, 'Empregabilidade', 0, '', '', 0),
(131, 'Fomento ao Trabalho', 0, '', '', 0),
(174, 'Proteção e Benefícios ao Trabalhador', 0, '', '', 0),
(176, 'Relações de Trabalho', 0, '', '', 0),
(160, 'Outros em Trabalho', 0, '', '', 1),
(30, 'Transportes', 0, '', '', 0),
(184, 'Transporte Aéreo', 0, '', '', 0),
(189, 'Transporte Ferroviário', 0, '', '', 0),
(185, 'Transporte Hidroviário', 0, '', '', 0),
(186, 'Transporte Rodoviário', 0, '', '', 0),
(161, 'Outros em Transporte', 0, '', '', 1),
(31, 'Urbanismo ', 0, '', '', 0),
(190, 'Infra-Estrutura Urbana', 0, '', 'Ruas, redes elétrica, de águas, esgoto, equipamentos de limpeza', 0),
(181, 'Serviços Urbanos', 0, '', '', 0),
(162, 'Outros em Urbanismo', 0, '', '', 1);
