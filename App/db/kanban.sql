-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/05/2025 às 13:34
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `kanban`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `projects`
--

CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(100) DEFAULT NULL,
  `fk_user_id` int(11) DEFAULT NULL,
  `project_status` tinyint(4) DEFAULT 0,
  `n_total` int(11) DEFAULT 0,
  `n_done` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `projects`
--

INSERT INTO `projects` (`project_id`, `project_name`, `fk_user_id`, `project_status`, `n_total`, `n_done`) VALUES
(1, 'Primeiro Projeto', 1, 0, 0, 0),
(2, 'Primeiro Projeto                        ', 6, 1, 10, 4),
(3, 'cagar em grupo', 6, 0, 0, 0),
(4, 'Primeiro Projeto', 7, 0, 9, 4),
(5, 'Html', 7, 1, 1, 0),
(6, 'Primeiro Projeto', 8, 0, 10, 4),
(7, 'Criação do Kanban', 8, 1, 5, 3),
(8, 'Primeiro Projeto', 9, 1, 9, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL,
  `task_name` varchar(100) DEFAULT NULL,
  `task_description` text DEFAULT NULL,
  `fk_project_id` int(11) DEFAULT NULL,
  `task_status` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tasks`
--

INSERT INTO `tasks` (`task_id`, `task_name`, `task_description`, `fk_project_id`, `task_status`) VALUES
(1, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 1, 1),
(2, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 1, 1),
(3, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 1, 1),
(4, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 1, 2),
(5, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 1, 2),
(6, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 1, 3),
(7, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 1, 3),
(8, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 1, 3),
(9, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 1, 3),
(10, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 2, 2),
(11, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 2, 1),
(12, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 2, 1),
(13, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 2, 2),
(14, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 2, 2),
(15, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 2, 3),
(16, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 2, 3),
(17, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 2, 3),
(18, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 2, 3),
(20, 'classificar o flamengo', 'flamengo precisa ganhar pelo menos de 1x0 para classificar\r\n', 2, 1),
(21, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 4, 1),
(22, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 4, 1),
(23, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 4, 1),
(24, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 4, 2),
(25, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 4, 2),
(26, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 4, 3),
(27, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 4, 3),
(28, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 4, 3),
(29, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 4, 3),
(31, 'pagina', 'paginalkslkfdksafkdlskafldskafdsadsacc', 5, 1),
(32, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 6, 2),
(33, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 6, 1),
(34, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 6, 1),
(35, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 6, 2),
(36, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 6, 2),
(37, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 6, 3),
(38, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 6, 3),
(39, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 6, 3),
(40, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 6, 3),
(41, 'vencer sempre', '', 6, 1),
(42, 'pagina inicial', '', 7, 3),
(43, 'pagina final', '', 7, 3),
(44, 'pagina 2', '', 7, 2),
(45, 'g', '', 7, 3),
(46, 'ppppp', '', 7, 1),
(47, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 8, 1),
(48, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 8, 1),
(49, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 8, 1),
(50, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 8, 2),
(51, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 8, 2),
(52, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 8, 3),
(53, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 8, 3),
(54, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 8, 3),
(55, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sodales ultricies mollis. Integer vestibulum euismod nunc, quis efficitur purus sagittis eget. Nulla condimentum tellus at massa rutrum venenatis.', 8, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_pass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pass`) VALUES
(1, 'del', 'fender.american@gmail.com', '02d85a4ad43588b0d7e5cabfa84cc96b'),
(6, 'del', 'oi@gmail.com', '1ce6514a86601955ee77c47f66381dc5'),
(7, 'joaquim', 'joaquim@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'eu', 'eusoualenda@gmail.com', '3c6b0cdd47da9f93a376c73d74a7c78c'),
(9, 'cesar', 'cesar@gmail.com', '927bdbe73c948e989741edb3280c73ba');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`),
  ADD KEY `fk_user_id` (`fk_user_id`);

--
-- Índices de tabela `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `fk_project_id` (`fk_project_id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`fk_user_id`) REFERENCES `users` (`user_id`);

--
-- Restrições para tabelas `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`fk_project_id`) REFERENCES `projects` (`project_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
