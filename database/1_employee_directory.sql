SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `employee_directory` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `employee_directory`;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `salary` decimal(10,0) DEFAULT NULL,
  `full_time` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `birth_date`, `email`, `phone`, `job_title`, `salary`, `full_time`) VALUES
(1, 'Jozef', 'Novák', '1992-04-15', 'jozef.novak@ukf.sk', '+421901234567', 'Software Engineer', '2000', 1),
(2, 'Mária', 'Kováčová', '1988-11-20', 'maria.kovacova@ukf.sk', '+421902345678', 'Data Analyst', '1800', 1),
(3, 'Peter', 'Horváth', '1995-07-05', 'peter.horvath@ukf.sk', '+421903456789', 'System Administrator', '1600', 0),
(4, 'Anna', 'Miklová', '1990-09-25', 'anna.miklova@ukf.sk', '+421904567890', 'UX Designer', NULL, 1),
(5, 'Milan', 'Rybár', '1985-03-14', 'milan.rybar@ukf.sk', '+421905678901', 'DevOps Engineer', '2200', 1),
(6, 'Eva', 'Králiková', '1998-02-28', 'eva.kralikova@ukf.sk', '+421906789012', 'Front-End Developer', '1900', 1),
(7, 'Martin', 'Slovák', '1983-12-09', 'martin.slovak@ukf.sk', '+421907890123', 'Back-End Developer', '2100', 0),
(8, 'Jana', 'Poláková', '1991-06-17', 'jana.polakova@ukf.sk', '+421908901234', 'Project Manager', NULL, 1),
(9, 'Tomáš', 'Bielik', '1987-08-30', 'tomas.bielik@ukf.sk', '+421909012345', 'QA Tester', '1700', 1),
(10, 'Zuzana', 'Petríková', '1996-05-22', 'zuzana.petrikova@ukf.sk', '+421910123456', 'Product Owner', '2300', 1);

ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idemployee_UNIQUE` (`id`);

ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
