/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 110102 (11.1.2-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : swan-vanilla

 Target Server Type    : MariaDB
 Target Server Version : 110102 (11.1.2-MariaDB)
 File Encoding         : 65001

 Date: 13/12/2023 10:02:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for todos
-- ----------------------------
DROP TABLE IF EXISTS `todos`;
CREATE TABLE `todos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `todo` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of todos
-- ----------------------------
BEGIN;
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (1, 'Do something nice for someone I care about', NULL, 1, 1, '2023-09-12 20:58:57', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (2, 'Memorize the fifty states and their capitals', NULL, 0, 1, '2022-12-20 13:35:07', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (3, 'Watch a classic movie', NULL, 0, 1, '2023-04-01 07:55:33', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (4, 'Contribute code or a monetary donation to an open-source software project', NULL, 0, 1, '2023-02-15 07:35:34', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (5, 'Solve a Rubik\'s cube', NULL, 0, 1, '2023-11-15 19:46:31', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (6, 'Bake pastries for me and neighbor', NULL, 0, 1, '2023-09-01 11:01:51', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (7, 'Go see a Broadway production', NULL, 0, 1, '2023-10-30 06:27:08', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (8, 'Write a thank you letter to an influential person in my life', NULL, 1, 1, '2023-03-01 23:56:09', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (9, 'Invite some friends over for a game night', NULL, 0, 1, '2022-12-20 00:49:42', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (10, 'Have a football scrimmage with some friends', NULL, 0, 1, '2023-11-04 20:18:56', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (11, 'Text a friend I haven\'t talked to in a long time', NULL, 1, 1, '2023-12-08 02:55:08', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (12, 'Organize pantry', NULL, 1, 1, '2023-07-25 16:25:21', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (13, 'Buy a new house decoration', NULL, 0, 1, '2023-12-04 02:25:39', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (14, 'Plan a vacation I\'ve always wanted to take', NULL, 0, 1, '2023-04-24 21:35:48', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (15, 'Clean out car', NULL, 0, 1, '2023-01-07 07:24:17', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (16, 'Draw and color a Mandala', NULL, 1, 1, '2023-05-20 15:59:10', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (17, 'Create a cookbook with favorite recipes', NULL, 0, 1, '2023-07-29 16:58:32', '2023-12-12 19:47:43');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (18, 'Bake a pie with some friends', NULL, 0, 1, '2023-02-15 15:27:11', '2023-12-12 19:47:43');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (19, 'Create a compost pile', NULL, 1, 1, '2023-02-05 05:42:44', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (20, 'Take a hike at a local park', NULL, 1, 1, '2023-09-04 02:51:03', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (21, 'Take a class at local community center that interests you', NULL, 0, 1, '2023-02-17 20:32:37', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (22, 'Research a topic interested in', NULL, 0, 1, '2023-08-24 03:04:40', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (23, 'Plan a trip to another country', NULL, 1, 1, '2023-06-14 13:54:51', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (24, 'Improve touch typing', NULL, 0, 1, '2023-04-21 15:55:44', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (25, 'Learn Express.js', NULL, 0, 1, '2023-06-19 07:40:04', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (26, 'Learn calligraphy', NULL, 0, 1, '2023-04-20 18:41:54', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (27, 'Have a photo session with some friends', NULL, 0, 1, '2022-12-31 02:58:11', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (28, 'Go to the gym', NULL, 0, 1, '2023-10-28 15:11:16', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (29, 'Make own LEGO creation', NULL, 0, 1, '2023-05-04 18:09:58', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (30, 'Take cat on a walk', NULL, 0, 1, '2023-07-10 05:58:07', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (31, 'Find a charity and donate to it', NULL, 1, 1, '2023-09-17 18:48:18', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (32, 'Donate to local food bank', NULL, 1, 1, '2023-03-14 01:03:32', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (33, 'Uninstall unused apps from devices', NULL, 0, 1, '2022-12-24 22:30:46', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (34, 'Write a handwritten letter to somebody', NULL, 0, 1, '2023-11-20 14:39:21', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (35, 'Fill out a basketball bracket', NULL, 0, 1, '2023-05-03 01:33:52', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (36, 'Do yoga', NULL, 0, 1, '2023-10-15 10:40:35', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (37, 'Make a scrapbook with pictures of favorite memories', NULL, 0, 1, '2023-08-20 02:47:07', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (38, 'Have a bonfire with close friends', NULL, 1, 1, '2023-11-04 16:07:25', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (39, 'Go for a run', NULL, 0, 1, '2023-06-18 21:15:05', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (40, 'Host a movie marathon with some friends', NULL, 0, 1, '2023-11-22 02:43:33', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (41, 'Go see a movie in theaters with a few friends', NULL, 1, 1, '2023-06-05 18:14:17', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (42, 'Wash car', NULL, 0, 1, '2023-02-24 23:05:51', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (43, 'Patronize a local independent restaurant', NULL, 0, 1, '2023-09-03 05:48:44', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (44, 'Watch a Khan Academy lecture on a subject of choosing', NULL, 0, 1, '2023-04-13 20:37:43', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (45, 'Learn Javascript', NULL, 0, 1, '2023-09-04 10:22:24', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (46, 'Volunteer at a local animal shelter', NULL, 0, 1, '2023-07-13 15:00:13', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (47, 'Volunteer at local food pantry', NULL, 0, 1, '2023-04-08 17:52:58', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (48, 'Start a book I\'ve never gotten around to reading', NULL, 0, 1, '2023-05-12 04:08:09', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (49, 'Mow neighbor\'s lawn', NULL, 0, 1, '2023-08-11 05:14:54', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (50, 'Start a band', NULL, 0, 1, '2023-08-09 02:06:42', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (51, 'Organize music collection', NULL, 0, 1, '2023-09-21 12:01:35', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (52, 'Organize a cluttered drawer', NULL, 1, 1, '2022-12-28 04:26:16', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (53, 'Learn a new recipe', NULL, 1, 1, '2023-04-08 22:50:31', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (54, 'Start a daily journal', NULL, 0, 1, '2023-04-23 03:43:24', '2023-12-12 19:47:43');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (55, 'Clean out closet and donate the clothes I\'ve outgrown', NULL, 1, 1, '2023-12-04 06:41:09', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (56, 'Go on a fishing trip with some friends', NULL, 0, 1, '2022-12-22 10:29:09', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (57, 'Learn Morse code', NULL, 0, 1, '2023-07-22 20:46:16', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (58, 'Listen to a new podcast', NULL, 1, 1, '2023-05-19 06:40:20', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (59, 'Color', NULL, 0, 1, '2023-04-27 18:43:19', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (60, 'Take dog on a walk', NULL, 1, 1, '2023-06-01 17:44:38', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (61, 'Start a blog for something I\'m passionate about', NULL, 0, 1, '2023-08-28 13:45:19', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (62, 'Listen to a new music genre', NULL, 0, 1, '2023-12-03 00:07:55', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (63, 'Learn how to write in shorthand', NULL, 0, 1, '2023-07-05 22:25:54', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (64, 'Practice coding in favorite language', NULL, 0, 1, '2023-06-25 04:21:28', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (65, 'Read a formal research paper on an interesting subject', NULL, 1, 1, '2023-10-21 16:35:44', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (66, 'Learn how to whistle with fingers', NULL, 1, 1, '2023-03-27 05:49:30', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (67, 'Make a couch fort', NULL, 0, 1, '2023-10-11 17:26:52', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (68, 'Take a caffeine nap', NULL, 0, 1, '2023-07-25 13:44:19', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (69, 'Find a DIY to do', NULL, 0, 1, '2023-07-04 01:56:35', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (70, 'Go to a concert with some friends', NULL, 0, 1, '2023-12-07 03:55:21', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (71, 'Give pet ten minutes of focused attention', NULL, 0, 1, '2023-03-08 23:39:03', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (72, 'Rearrange and organize room', NULL, 0, 1, '2023-05-19 17:31:15', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (73, 'Learn how to play a new sport', NULL, 0, 1, '2023-01-29 23:56:08', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (74, 'Make homemade ice cream', NULL, 1, 1, '2023-06-25 16:12:16', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (75, 'Hold a yard sale', NULL, 1, 1, '2023-09-15 00:33:18', '2023-12-13 09:41:02');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (76, 'Learn to play a new instrument', NULL, 0, 2, '2023-05-20 22:33:02', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (77, 'Resolve a problem I\'ve been putting off', NULL, 1, 2, '2022-12-28 08:42:06', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (78, 'Bake something I\'ve never tried before', NULL, 1, 2, '2023-01-05 18:58:37', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (79, 'Organize dresser', NULL, 0, 2, '2023-09-23 22:27:15', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (80, 'Fix something that\'s broken in house', NULL, 0, 2, '2023-04-05 03:09:02', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (81, 'Play a video game', NULL, 0, 2, '2023-09-04 17:11:48', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (82, 'Listen to music I haven\'t heard in a while', NULL, 0, 2, '2023-02-28 20:08:31', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (83, 'Look at finances and find one way to save money', NULL, 0, 2, '2023-08-27 06:40:11', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (84, 'Learn the periodic table', NULL, 1, 2, '2023-09-08 18:26:12', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (85, 'Make a budget', NULL, 1, 2, '2023-08-05 15:34:15', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (86, 'Donate blood at a local blood center', NULL, 0, 2, '2023-10-03 15:56:14', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (87, 'Go to the library and find an interesting book', NULL, 0, 2, '2023-11-20 03:04:43', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (88, 'Configure two-factor authentication on accounts', NULL, 0, 2, '2023-02-18 10:26:48', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (89, 'Take a nap', NULL, 1, 2, '2023-10-17 21:51:10', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (90, 'Create or update resume', NULL, 0, 2, '2023-06-15 23:35:03', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (91, 'Prepare a 72-hour kit', NULL, 1, 2, '2023-08-15 03:29:54', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (92, 'Go on a long drive with no music', NULL, 0, 2, '2023-11-27 20:31:42', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (93, 'Learn the NATO phonetic alphabet', NULL, 0, 2, '2023-03-25 01:55:51', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (94, 'Have a jam session with friends', NULL, 0, 2, '2023-05-18 09:16:57', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (95, 'Hold a video game tournament with some friends', NULL, 0, 2, '2023-02-22 08:11:14', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (96, 'Catch up on world news', NULL, 0, 2, '2023-03-30 00:38:24', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (97, 'Do a jigsaw puzzle', NULL, 0, 2, '2023-02-10 21:36:23', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (98, 'Learn about the Golden Ratio', NULL, 0, 2, '2022-12-29 18:00:42', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (99, 'Organize basement', NULL, 1, 2, '2023-09-15 11:29:53', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (100, 'Learn a new programming language', NULL, 1, 2, '2023-01-24 00:24:39', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (101, 'Learn how the internet works', NULL, 0, 2, '2023-04-20 19:37:35', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (102, 'Organize a bookshelf', NULL, 0, 2, '2023-01-06 01:06:32', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (103, 'Go to a local thrift shop', NULL, 1, 2, '2023-01-01 16:04:35', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (104, 'Study a foreign language', NULL, 1, 2, '2023-11-10 16:14:59', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (105, 'Explore a park I have never been to before', NULL, 0, 2, '2023-01-03 05:05:27', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (106, 'Start a garden', NULL, 1, 2, '2023-11-11 17:26:43', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (107, 'Shred old documents I don\'t need anymore', NULL, 0, 2, '2023-08-17 23:33:38', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (108, 'Learn to write with nondominant hand', NULL, 1, 2, '2023-04-18 03:03:22', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (109, 'Go to a nail salon', NULL, 0, 2, '2023-11-14 11:28:07', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (110, 'Create a meal plan for the coming week', NULL, 1, 2, '2023-04-07 04:40:34', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (111, 'Surprise significant other with something considerate', NULL, 0, 2, '2022-12-25 11:21:53', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (112, 'Clean out garage', NULL, 0, 2, '2023-02-08 00:57:46', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (113, 'Make a simple musical instrument', NULL, 0, 2, '2023-07-16 05:35:20', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (114, 'Learn how to fold a paper crane', NULL, 1, 2, '2023-11-29 19:27:13', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (115, 'Learn the Chinese erhu', NULL, 0, 2, '2023-04-24 23:51:54', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (116, 'Start a family tree', NULL, 1, 2, '2023-07-16 11:20:54', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (117, 'Teach dog a new trick', NULL, 1, 2, '2023-11-08 04:41:18', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (118, 'Draw something interesting', NULL, 0, 2, '2023-09-27 09:31:17', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (119, 'Explore the nightlife of city', NULL, 1, 2, '2023-04-18 06:52:23', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (120, 'Make tie dye shirts', NULL, 0, 2, '2022-12-28 20:35:23', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (121, 'Think of a new business idea', NULL, 1, 2, '2022-12-24 18:01:16', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (122, 'Go swimming with a friend', NULL, 0, 2, '2023-07-02 21:47:27', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (123, 'Clean out refrigerator', NULL, 1, 2, '2023-07-25 22:46:27', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (124, 'Pot some plants and put them around house', NULL, 0, 2, '2023-04-23 23:47:16', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (125, 'Learn how to beatbox', NULL, 0, 2, '2023-05-26 09:47:59', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (126, 'Take a bubble bath', NULL, 1, 2, '2023-11-24 19:36:00', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (127, 'Prepare a dish from a foreign culture', NULL, 0, 2, '2023-01-06 17:00:30', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (128, 'Paint the first thing I see', NULL, 0, 2, '2023-09-22 19:56:45', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (129, 'Learn how to use a french press', NULL, 0, 2, '2023-05-06 23:46:50', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (130, 'Learn about a distributed version control system such as Git', NULL, 1, 2, '2023-11-07 22:50:38', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (131, 'Learn GraphQL', NULL, 0, 2, '2023-10-06 10:15:01', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (132, 'Learn origami', NULL, 0, 2, '2023-05-01 15:29:08', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (133, 'Go to a karaoke bar with some friends', NULL, 1, 2, '2023-01-05 21:23:53', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (134, 'Conquer one of fears', NULL, 0, 2, '2023-05-06 03:45:26', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (135, 'Shop at support local farmers market', NULL, 0, 2, '2023-07-02 16:07:37', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (136, 'Compliment someone', NULL, 0, 2, '2023-09-29 02:18:32', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (137, 'Do something I used to do as a kid', NULL, 0, 2, '2023-08-18 12:50:46', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (138, 'Match storage containers with their lids', NULL, 0, 2, '2023-01-19 12:47:41', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (139, 'Learn Kotlin', NULL, 0, 2, '2023-04-16 09:00:09', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (140, 'Write a short story', NULL, 1, 2, '2023-01-19 23:02:55', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (141, 'Visit a nearby museum', NULL, 1, 2, '2023-07-17 07:52:11', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (142, 'Make a new friend', NULL, 0, 2, '2023-10-18 00:32:20', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (143, 'Drink water', NULL, 0, 2, '2023-09-19 12:11:31', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (144, 'Charge the phone', NULL, 0, 2, '2023-02-05 01:47:55', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (145, 'Pay utility bills', NULL, 0, 2, '2023-01-08 06:02:44', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (146, 'Make a JavaScript library', NULL, 0, 2, '2022-12-26 19:20:05', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (147, 'Use DummyJSON', NULL, 0, 2, '2023-05-20 23:13:11', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (148, 'Hug Mom :)', NULL, 0, 2, '2023-01-23 23:46:03', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (149, 'Play cricket', NULL, 0, 2, '2023-10-22 11:10:13', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (150, 'Sleeeeep for the whole day!!!', NULL, 0, 2, '2023-11-07 21:58:26', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (151, 'skuska', NULL, NULL, 2, '2023-12-12 19:35:55', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (152, 'Skuska 3', NULL, 0, 2, '2023-12-12 19:35:55', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (153, 'Skuska 3', NULL, 0, 2, '2023-12-12 19:52:43', '2023-12-13 09:41:07');
INSERT INTO `todos` (`id`, `todo`, `description`, `completed`, `user_id`, `created`, `updated`) VALUES (154, 'test4', NULL, 0, 1, '2023-12-13 09:41:50', '2023-12-13 09:42:01');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `username`, `password`, `created`, `updated`) VALUES (1, 'swan', 'fb52a20dbf0f8d7b042bced00c4710bc', '2023-12-13 09:31:15', '2023-12-13 09:31:15');
INSERT INTO `users` (`id`, `username`, `password`, `created`, `updated`) VALUES (2, 'swan2', 'fb52a20dbf0f8d7b042bced00c4710bc', '2023-12-13 09:41:15', '2023-12-13 09:41:17');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
