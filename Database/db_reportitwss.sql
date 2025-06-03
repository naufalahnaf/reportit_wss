/*
 Navicat Premium Data Transfer

 Source Server         : reportitss
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : db_reportitwss

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 25/04/2025 14:59:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area`  (
  `id_area` int NOT NULL AUTO_INCREMENT,
  `area` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_area`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES (1, 'Yogyakarta');
INSERT INTO `area` VALUES (2, 'Bali');

-- ----------------------------
-- Table structure for jabatan
-- ----------------------------
DROP TABLE IF EXISTS `jabatan`;
CREATE TABLE `jabatan`  (
  `id_jabatan` int NOT NULL AUTO_INCREMENT,
  `jabatan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_jabatan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jabatan
-- ----------------------------
INSERT INTO `jabatan` VALUES (1, 'Direktur');
INSERT INTO `jabatan` VALUES (2, 'Wakil Direktur');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `isi_log` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tgl_log` datetime NOT NULL,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id_log`) USING BTREE,
  INDEX `id_user`(`id_user` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 116 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (74, 'Pengaduan pc uluwatu error berhasil ditambahkan', '2025-03-28 14:17:57', 3);
INSERT INTO `log` VALUES (75, 'Pengaduan ok berhasil ditambahkan', '2025-03-28 14:41:19', 3);
INSERT INTO `log` VALUES (76, 'Pengaduan okkk berhasil ditambahkan', '2025-03-28 14:42:28', 3);
INSERT INTO `log` VALUES (77, 'Pengaduan pc coro meledak berhasil ditambahkan', '2025-03-29 11:08:26', 1);
INSERT INTO `log` VALUES (78, 'Pengaduan pc angga gantian meledak berhasil ditambahkan', '2025-03-29 11:08:58', 1);
INSERT INTO `log` VALUES (79, 'Pengaduan okkk berhasil ditambahkan', '2025-03-29 11:43:44', 1);
INSERT INTO `log` VALUES (80, 'Pengaduan ok berhasil ditambahkan', '2025-03-29 11:43:56', 1);
INSERT INTO `log` VALUES (81, 'Tanggapan on proses oleh angga berhasil ditambahkan', '2025-04-07 09:49:37', 3);
INSERT INTO `log` VALUES (82, 'Pengaduan pc angga jeblug berhasil ditambahkan', '2025-04-07 15:29:06', 3);
INSERT INTO `log` VALUES (83, 'Tanggapan mantap berhasil ditambahkan', '2025-04-07 15:31:51', 3);
INSERT INTO `log` VALUES (84, 'Tanggapan okee berhasil ditambahkan', '2025-04-07 15:33:12', 3);
INSERT INTO `log` VALUES (85, 'Tanggapan okee berhasil diubah', '2025-04-07 16:13:03', 3);
INSERT INTO `log` VALUES (86, 'Tanggapan okee berhasil diubah', '2025-04-07 16:13:10', 3);
INSERT INTO `log` VALUES (87, 'Tanggapan okee berhasil diubah', '2025-04-07 16:13:35', 3);
INSERT INTO `log` VALUES (88, 'Tanggapan mantap berhasil diubah', '2025-04-07 16:14:04', 3);
INSERT INTO `log` VALUES (89, 'Tanggapan bnar adanya berhasil ditambahkan', '2025-04-07 16:14:21', 3);
INSERT INTO `log` VALUES (90, 'Tanggapan dikerjakaan oleh anggga berhasil ditambahkan', '2025-04-07 16:14:48', 3);
INSERT INTO `log` VALUES (91, 'Tanggapan dikerjakaan oleh anggga berhasil diubah', '2025-04-07 16:15:00', 3);
INSERT INTO `log` VALUES (92, 'Tanggapan gagal karena mobo rusak berhasil ditambahkan', '2025-04-07 16:15:29', 3);
INSERT INTO `log` VALUES (93, 'Tanggapan gagal karena mobo rusak berhasil diubah', '2025-04-07 16:15:38', 3);
INSERT INTO `log` VALUES (94, 'Tanggapan okee berhasil ditambahkan', '2025-04-07 16:15:49', 3);
INSERT INTO `log` VALUES (95, 'Tanggapan langsung saja berhasil ditambahkan', '2025-04-07 16:16:11', 3);
INSERT INTO `log` VALUES (96, 'Tanggapan clear berhasil ditambahkan', '2025-04-07 16:16:27', 3);
INSERT INTO `log` VALUES (97, 'Tanggapan clear berhasil diubah', '2025-04-07 16:18:09', 3);
INSERT INTO `log` VALUES (98, 'Pengaduan okee berhasil ditambahkan', '2025-04-07 16:29:50', 3);
INSERT INTO `log` VALUES (99, 'Waroeng Wss Tabanan berhasil ditambahkan', '2025-04-20 13:09:27', 1);
INSERT INTO `log` VALUES (100, 'Jabatan Direktur berhasil ditambahkan', '2025-04-22 13:59:12', 1);
INSERT INTO `log` VALUES (101, 'Petugas Ahmad Holis berhasil ditambahkan', '2025-04-22 14:50:15', 1);
INSERT INTO `log` VALUES (102, 'Jabatan Wakil Direktur berhasil ditambahkan', '2025-04-22 15:38:58', 1);
INSERT INTO `log` VALUES (103, 'Jabatan Wakil Direktur berhasil ditambahkan', '2025-04-22 15:39:40', 1);
INSERT INTO `log` VALUES (104, 'Petugas Ahmad Holis berhasil ditambahkan', '2025-04-22 15:42:22', 1);
INSERT INTO `log` VALUES (105, 'Petugas Risco Dharmawan berhasil ditambahkan', '2025-04-22 15:42:27', 1);
INSERT INTO `log` VALUES (106, 'Jabatan Wakil Direktur berhasil ditambahkan', '2025-04-22 15:43:55', 1);
INSERT INTO `log` VALUES (107, 'Jabatan Wakil Direktur berhasil ditambahkan', '2025-04-22 15:45:04', 1);
INSERT INTO `log` VALUES (108, 'Pengaduan crr55 mati berhasil ditambahkan', '2025-04-24 14:47:33', 1);
INSERT INTO `log` VALUES (109, 'Pengaduan cr55 meledak berhasil ditambahkan', '2025-04-24 14:55:33', 1);
INSERT INTO `log` VALUES (110, 'Pengaduan cr55 berhasil ditambahkan', '2025-04-24 15:32:09', 1);
INSERT INTO `log` VALUES (111, 'Pengaduan cr55 meledak berhasil ditambahkan', '2025-04-24 15:38:39', 1);
INSERT INTO `log` VALUES (112, 'Pengaduan crr meledak berhasil ditambahkan', '2025-04-24 15:41:04', 1);
INSERT INTO `log` VALUES (113, 'Pengaduan cr55 rusak berhasil ditambahkan', '2025-04-24 16:42:33', 1);
INSERT INTO `log` VALUES (114, 'Tanggapan proses berhasil ditambahkan', '2025-04-24 16:43:10', 1);
INSERT INTO `log` VALUES (115, 'Tanggapan proses berhasil diubah', '2025-04-24 16:43:32', 1);

-- ----------------------------
-- Table structure for masyarakat
-- ----------------------------
DROP TABLE IF EXISTS `masyarakat`;
CREATE TABLE `masyarakat`  (
  `id_masyarakat` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `no_telepon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_masyarakat`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of masyarakat
-- ----------------------------
INSERT INTO `masyarakat` VALUES (8, 'Imam Mahdi', 'imamhambali', '$2y$10$ocCt1r3CRaUxGaYcb75Cm.tl0slgL9c0xaMsQj9ynes.tN2I4Uypa', '089', 'Madura');
INSERT INTO `masyarakat` VALUES (9, 'Angga', 'angga', '$2y$10$qh5VDHz71ppoJ8b4lyGa4OVEDmp0N1BUd6KSHIoyNKHcKgsFfeTWm', '098766', 'semarang');

-- ----------------------------
-- Table structure for pengaduan
-- ----------------------------
DROP TABLE IF EXISTS `pengaduan`;
CREATE TABLE `pengaduan`  (
  `id_pengaduan` int NOT NULL AUTO_INCREMENT,
  `id_pengguna` int NULL DEFAULT NULL,
  `nama_pelapor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `no_wa` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tgl_pengaduan` datetime NOT NULL,
  `isi_laporan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `foto` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'default.png',
  `status_pengaduan` enum('belum_ditanggapi','proses','valid','pengerjaan','selesai','tidak_valid') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'belum_ditanggapi',
  `petugas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_waroeng` int NOT NULL,
  `id_masyarakat` int NULL DEFAULT NULL,
  `id_jabatan` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_pengaduan`) USING BTREE,
  INDEX `id_masyarakat`(`id_masyarakat` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengaduan
-- ----------------------------
INSERT INTO `pengaduan` VALUES (17, 3, NULL, '', '2025-03-29 11:08:26', 'pc coro meledak', 'default.png', 'belum_ditanggapi', NULL, 3, NULL, NULL);
INSERT INTO `pengaduan` VALUES (18, NULL, 'ekoo wicaksosno', '+6289606360400', '2025-03-29 11:08:58', 'pc angga gantian meledak', 'default.png', 'belum_ditanggapi', NULL, 2, NULL, NULL);
INSERT INTO `pengaduan` VALUES (19, NULL, 'ekoo wicaksosno', NULL, '2025-03-29 11:43:44', 'okkk', 'default.png', 'proses', NULL, 1, NULL, NULL);
INSERT INTO `pengaduan` VALUES (20, 1, NULL, NULL, '2025-03-29 11:43:56', 'ok', 'default.png', 'proses', NULL, 2, NULL, NULL);
INSERT INTO `pengaduan` VALUES (21, NULL, 'cahya angga', '089606260400', '2025-04-07 15:29:06', 'pc angga jeblug', 'default.png', 'selesai', NULL, 3, NULL, NULL);
INSERT INTO `pengaduan` VALUES (22, NULL, 'angaaaa', '074598375', '2025-04-07 16:29:50', 'okee', 'WhatsApp_Image_2025-03-25_at_13_12_52.jpeg', 'belum_ditanggapi', NULL, 2, NULL, NULL);
INSERT INTO `pengaduan` VALUES (23, 4, NULL, NULL, '2025-04-24 14:06:28', 'pc error', 'default.png', 'belum_ditanggapi', NULL, 4, NULL, NULL);
INSERT INTO `pengaduan` VALUES (28, NULL, 'cahya angga', '089796754', '2025-04-24 15:41:04', 'crr meledak', 'Nota_2.jpg', 'belum_ditanggapi', NULL, 2, NULL, 2);
INSERT INTO `pengaduan` VALUES (29, NULL, 'cahya angga', '539405398', '2025-04-24 16:42:33', 'cr55 rusak', 'Nota_12.jpg', 'proses', NULL, 1, NULL, 2);

-- ----------------------------
-- Table structure for pengguna
-- ----------------------------
DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE `pengguna`  (
  `id_pengguna` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `no_telepon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `alamat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_pengguna`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengguna
-- ----------------------------
INSERT INTO `pengguna` VALUES (1, 'Imam Mahdi', 'imamhambali', '$2y$10$9/BHplk2rfRG7wV9JKNXvucoqyoy6CTZBO5IvVfgJZpYrsCtFRXGi', '098765544', 'madura somepunk');
INSERT INTO `pengguna` VALUES (2, 'Imam Mahdi', 'imamhambali2', '$2y$10$u8.XabHuboWHc./z180aSuXsVKA6961QmdfOEiTO473ig4sv5jHVi', '0987654', 'somepunk madhurha');
INSERT INTO `pengguna` VALUES (3, 'Krisna Angga', 'anggaa', '$2y$10$aGK9gBo2j/4eQQmWiisF0.Iyzj0zot9o7tkkDLIsDh/H3M1D25ykW', '098765432', 'jogja');
INSERT INTO `pengguna` VALUES (4, 'Imam Mahdi', 'imammahdi', '$2y$10$2bq.LmclZF6xm.F175iYsO7qjNt2APTU/ru4f8QBrJXKOretZi4Um', '0987654321', 'Somepunk');

-- ----------------------------
-- Table structure for petugas
-- ----------------------------
DROP TABLE IF EXISTS `petugas`;
CREATE TABLE `petugas`  (
  `id_petugas` int NOT NULL AUTO_INCREMENT,
  `petugas` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_petugas`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of petugas
-- ----------------------------
INSERT INTO `petugas` VALUES (3, 'Ahmad Holis');
INSERT INTO `petugas` VALUES (4, 'Risco Dharmawan');

-- ----------------------------
-- Table structure for saran
-- ----------------------------
DROP TABLE IF EXISTS `saran`;
CREATE TABLE `saran`  (
  `id_saran` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `no_telepon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `saran` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tgl_saran` datetime NOT NULL,
  PRIMARY KEY (`id_saran`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of saran
-- ----------------------------
INSERT INTO `saran` VALUES (1, 'Angga', '0897497897', 'semarang', 'aplikasi wss oke', '2025-03-26 18:46:31');
INSERT INTO `saran` VALUES (2, 'Imam', '08987547899', 'sumenep', 'aplikasinya bagus bet', '2025-03-27 13:47:25');
INSERT INTO `saran` VALUES (3, 'Imam Mahdi', '09765543333', 'sampang madura', 'oke banget', '2025-03-27 13:49:49');
INSERT INTO `saran` VALUES (4, 'Imam It', '098632345', 'bangkalan madura', 'aplikasi okee banget buat sayaa', '2025-03-27 14:00:50');
INSERT INTO `saran` VALUES (5, 'Imam Mahdi', '0987653347899', 'bangkalan sumenep', 'oke apknya', '2025-03-27 14:09:39');
INSERT INTO `saran` VALUES (6, 'Angga', '0998723437', 'nagnjuk', 'oke pak angga acc', '2025-03-27 14:11:12');
INSERT INTO `saran` VALUES (7, 'Imam Mahdi 2', '09876543', 'surabaya', 'okeee', '2025-03-27 14:22:59');
INSERT INTO `saran` VALUES (8, 'Anggaaa', '0947465484', 'semarang lor', 'aplikasi mantap', '2025-03-27 14:24:20');
INSERT INTO `saran` VALUES (9, 'Imam Wss', '09474775', 'bangkalan sumenep', 'mntapp', '2025-03-27 14:26:47');
INSERT INTO `saran` VALUES (10, 'Naufal', '0435', 'jogja', 'sudah bagus', '2025-04-24 14:00:42');

-- ----------------------------
-- Table structure for tanggapan
-- ----------------------------
DROP TABLE IF EXISTS `tanggapan`;
CREATE TABLE `tanggapan`  (
  `id_tanggapan` int NOT NULL AUTO_INCREMENT,
  `isi_tanggapan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tgl_tanggapan` datetime NOT NULL,
  `status_tanggapan` enum('proses','valid','pengerjaan','selesai','tidak_valid') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `foto_tanggapan` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'default.png',
  `id_pengaduan` int NOT NULL,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id_tanggapan`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  INDEX `id_pengaduan`(`id_pengaduan`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tanggapan
-- ----------------------------
INSERT INTO `tanggapan` VALUES (5, 'Baik kami segera mengecek ke TKP.', '2021-07-05 08:12:00', 'proses', 'default.png', 2, 2);
INSERT INTO `tanggapan` VALUES (6, 'Laporan Anda valid, segera kami perbaiki.', '2021-07-05 11:16:22', 'valid', 'default.png', 2, 2);
INSERT INTO `tanggapan` VALUES (7, 'dalam pengerjaan', '2021-07-06 09:03:00', 'pengerjaan', 'default.png', 2, 2);
INSERT INTO `tanggapan` VALUES (8, 'Jembatan sudah selesai diperbaiki.', '2021-07-08 10:18:06', 'selesai', '015117800_1608202742-20201217_153411.jpg', 2, 2);
INSERT INTO `tanggapan` VALUES (46, 'proses', '2025-04-24 16:43:32', 'proses', 'Nota_1.jpg', 29, 1);
INSERT INTO `tanggapan` VALUES (44, 'langsung saja', '2025-04-07 16:16:11', 'pengerjaan', 'default.png', 21, 3);
INSERT INTO `tanggapan` VALUES (45, 'clear', '2025-04-07 16:18:09', 'selesai', 'digital_ocean1.jpg', 21, 3);
INSERT INTO `tanggapan` VALUES (42, 'gagal karena mobo rusak', '2025-04-07 16:15:38', 'proses', 'default.png', 21, 3);
INSERT INTO `tanggapan` VALUES (43, 'okee', '2025-04-07 16:15:49', 'valid', 'default.png', 21, 3);
INSERT INTO `tanggapan` VALUES (13, 'Baik, laporan Anda segera kami proses.', '2021-07-07 15:50:00', 'proses', 'default.png', 4, 1);
INSERT INTO `tanggapan` VALUES (14, 'Laporan Anda valid, segera kami tangani.', '2021-07-08 09:10:13', 'valid', '5dfb1d22217f0.jpg', 4, 1);
INSERT INTO `tanggapan` VALUES (15, 'sudah dalam pengerjaan', '2023-05-13 09:54:10', 'pengerjaan', 'download.jpg', 4, 1);
INSERT INTO `tanggapan` VALUES (41, 'dikerjakaan oleh anggga', '2025-04-07 16:15:00', 'pengerjaan', 'default.png', 21, 3);
INSERT INTO `tanggapan` VALUES (39, 'okee', '2025-04-07 16:13:35', 'proses', 'WhatsApp_Image_2025-03-25_at_13_12_52.jpeg', 20, 3);
INSERT INTO `tanggapan` VALUES (38, 'mantap', '2025-04-07 16:14:04', 'proses', 'digital_ocean.jpg', 21, 3);
INSERT INTO `tanggapan` VALUES (37, 'on proses oleh angga', '2025-04-07 09:49:37', 'proses', 'Screenshot_2025-02-16_212901.png', 19, 3);
INSERT INTO `tanggapan` VALUES (40, 'bnar adanya', '2025-04-07 16:14:21', 'valid', 'WhatsApp_Image_2025-03-25_at_13_10_00.jpeg', 21, 3);
INSERT INTO `tanggapan` VALUES (27, 'pk', '2025-03-27 09:52:29', 'pengerjaan', 'default.png', 10, 1);
INSERT INTO `tanggapan` VALUES (28, 'pending', '2025-03-27 09:53:39', 'proses', 'default.png', 10, 1);
INSERT INTO `tanggapan` VALUES (25, 'oke', '2025-03-27 09:37:44', 'proses', 'default.png', 10, 1);
INSERT INTO `tanggapan` VALUES (26, 'masuk', '2025-03-27 09:38:08', 'valid', 'default.png', 10, 1);
INSERT INTO `tanggapan` VALUES (23, 'oke', '2025-03-26 10:20:25', 'proses', 'default.png', 7, 3);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `no_telepon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jabatan` enum('administrator','operator') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Administrator', 'admin', '$2y$10$L201Eud0B8zkRfT9wOctFeK1LSJWFxwDV8He41JDk4ggRLUb9aIC6', '08956434564', 'administrator');
INSERT INTO `user` VALUES (3, 'Naufal', 'naufalahnaf', '$2y$10$9qWqJz2j8ye.reMEvCsXV.Gg6m1j4IkX2T70HzXBbLZDFXPoywjYe', '089', 'operator');

-- ----------------------------
-- Table structure for waroeng
-- ----------------------------
DROP TABLE IF EXISTS `waroeng`;
CREATE TABLE `waroeng`  (
  `id_waroeng` int NOT NULL AUTO_INCREMENT,
  `waroeng` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_area` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_waroeng`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of waroeng
-- ----------------------------
INSERT INTO `waroeng` VALUES (1, 'Wss Tukad Barito', 2);
INSERT INTO `waroeng` VALUES (2, 'Jakal 12', 1);
INSERT INTO `waroeng` VALUES (3, 'Wss Uluwatu', 2);
INSERT INTO `waroeng` VALUES (4, 'Wss Tabanan', 2);

SET FOREIGN_KEY_CHECKS = 1;
