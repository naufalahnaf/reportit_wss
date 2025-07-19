/*
 Navicat Premium Dump SQL

 Source Server         : db_reportitwss
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : db_reportitwss

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 19/07/2025 08:45:34
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
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES (2, 'Bali');
INSERT INTO `area` VALUES (3, 'Pusat');
INSERT INTO `area` VALUES (4, 'Yogyakarta');
INSERT INTO `area` VALUES (5, 'Jabodetabek');
INSERT INTO `area` VALUES (6, 'Semarang');
INSERT INTO `area` VALUES (7, 'Malang');
INSERT INTO `area` VALUES (8, 'Perintis');
INSERT INTO `area` VALUES (9, 'Asia Pasific');
INSERT INTO `area` VALUES (10, 'Purwokerto');
INSERT INTO `area` VALUES (11, 'Solo');

-- ----------------------------
-- Table structure for jabatan
-- ----------------------------
DROP TABLE IF EXISTS `jabatan`;
CREATE TABLE `jabatan`  (
  `id_jabatan` int NOT NULL AUTO_INCREMENT,
  `jabatan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_jabatan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 155 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jabatan
-- ----------------------------
INSERT INTO `jabatan` VALUES (147, 'Asissten Keuangan');
INSERT INTO `jabatan` VALUES (148, 'Staf General');
INSERT INTO `jabatan` VALUES (149, 'Staff Kasir');
INSERT INTO `jabatan` VALUES (150, 'Akutansi');
INSERT INTO `jabatan` VALUES (151, 'Kacab Digital');
INSERT INTO `jabatan` VALUES (152, 'Sdm Waroeng');
INSERT INTO `jabatan` VALUES (153, 'Sdm Area');
INSERT INTO `jabatan` VALUES (154, 'Kepala Cabang');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id_kategori` int NOT NULL AUTO_INCREMENT,
  `kategori` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (4, 'Hardware');
INSERT INTO `kategori` VALUES (5, 'Software');
INSERT INTO `kategori` VALUES (6, 'Cr55');
INSERT INTO `kategori` VALUES (7, 'Ops Keuangan');
INSERT INTO `kategori` VALUES (8, 'Jaringan');
INSERT INTO `kategori` VALUES (9, 'Ojol');

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
) ENGINE = InnoDB AUTO_INCREMENT = 720 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `log` VALUES (116, 'Pengguna rjl berhasil ditambahkan', '2025-05-02 16:25:35', 1);
INSERT INTO `log` VALUES (117, 'Pengguna rjl berhasil dihapus', '2025-05-02 16:25:40', 1);
INSERT INTO `log` VALUES (118, 'Kategori Hardware berhasil ditambahkan', '2025-05-06 15:33:29', 1);
INSERT INTO `log` VALUES (119, 'Kategori Hardware berhasil ditambahkan', '2025-05-06 16:00:36', 1);
INSERT INTO `log` VALUES (120, 'Kategori Software berhasil ditambahkan', '2025-05-06 16:08:20', 1);
INSERT INTO `log` VALUES (121, 'SubKategori Komputer berhasil ditambahkan', '2025-05-06 16:15:51', 1);
INSERT INTO `log` VALUES (122, 'SubKategori Cr55 berhasil ditambahkan', '2025-05-14 11:19:52', 1);
INSERT INTO `log` VALUES (123, 'SubKategori Mikrotik berhasil ditambahkan', '2025-05-14 13:40:19', 1);
INSERT INTO `log` VALUES (124, 'Pengaduan matot berhasil ditambahkan', '2025-05-14 15:24:13', 1);
INSERT INTO `log` VALUES (125, 'Tanggapan oke berhasil ditambahkan', '2025-05-14 15:40:21', 1);
INSERT INTO `log` VALUES (126, 'Pengaduan okee berhasil ditambahkan', '2025-05-14 15:50:37', 1);
INSERT INTO `log` VALUES (127, 'Tanggapan segera di proses berhasil ditambahkan', '2025-05-15 09:19:07', 1);
INSERT INTO `log` VALUES (128, 'Pengaduan mikrotik tidak hidup berhasil ditambahkan', '2025-05-15 09:29:51', 1);
INSERT INTO `log` VALUES (129, 'Tanggapan segera di proses wak berhasil ditambahkan', '2025-05-15 09:33:51', 1);
INSERT INTO `log` VALUES (130, 'Pengaduan ketika komputer hidup matot berhasil ditambahkan', '2025-06-04 08:24:46', 1);
INSERT INTO `log` VALUES (131, 'Pengaduan tidak terhubung ke jaringan pusat berhasil ditambahkan', '2025-06-11 15:40:02', 1);
INSERT INTO `log` VALUES (132, 'Pengaduan apa aja berhasil ditambahkan', '2025-06-11 16:25:11', 1);
INSERT INTO `log` VALUES (133, 'Petugas Cahya Angga Krisna berhasil ditambahkan', '2025-06-11 16:29:21', 1);
INSERT INTO `log` VALUES (134, 'Tanggapan sudah di tangani mas alfan berhasil ditambahkan', '2025-06-11 16:32:24', 1);
INSERT INTO `log` VALUES (135, 'Tanggapan perbaikan port mikrotik berhasil ditambahkan', '2025-06-11 16:32:44', 1);
INSERT INTO `log` VALUES (136, 'Tanggapan sudah selesai berhasil ditambahkan', '2025-06-11 16:33:35', 1);
INSERT INTO `log` VALUES (137, 'Tanggapan selesai berhasil ditambahkan', '2025-06-11 16:33:49', 1);
INSERT INTO `log` VALUES (138, 'Tanggapan selesai dengan status Proses berhasil dihapus', '2025-06-11 16:37:39', 1);
INSERT INTO `log` VALUES (139, 'Tanggapan sudah selesai dengan status Pengerjaan berhasil dihapus', '2025-06-11 16:37:42', 1);
INSERT INTO `log` VALUES (140, 'Tanggapan perbaikan port mikrotik dengan status Valid berhasil dihapus', '2025-06-11 16:37:45', 1);
INSERT INTO `log` VALUES (141, 'Tanggapan segera di proses berhasil ditambahkan', '2025-06-11 16:38:09', 1);
INSERT INTO `log` VALUES (142, 'Tanggapan di proses oleh mas alfan berhasil ditambahkan', '2025-06-11 16:38:28', 1);
INSERT INTO `log` VALUES (143, 'Tanggapan selesai berhasil ditambahkan', '2025-06-11 16:38:41', 1);
INSERT INTO `log` VALUES (144, 'Pengguna alfanniami dengan jabatan administrator berhasil ditambahkan', '2025-06-12 08:47:34', 1);
INSERT INTO `log` VALUES (145, 'Pengguna alfanniami berhasil dihapus', '2025-06-12 08:54:07', 1);
INSERT INTO `log` VALUES (146, 'Area Yogyakarta berhasil dihapus', '2025-06-12 09:07:51', 1);
INSERT INTO `log` VALUES (147, 'Jabatan Wakil Direktur berhasil dihapus', '2025-06-12 09:18:39', 1);
INSERT INTO `log` VALUES (148, 'Jabatan Direktur berhasil dihapus', '2025-06-12 09:20:02', 1);
INSERT INTO `log` VALUES (149, 'Jabatan Kepala Cabang berhasil ditambahkan', '2025-06-12 09:20:20', 1);
INSERT INTO `log` VALUES (150, 'Jabatan Wakil Kacab berhasil ditambahkan', '2025-06-12 09:20:54', 1);
INSERT INTO `log` VALUES (151, 'Jabatan Kepala Cabang berhasil dihapus', '2025-06-12 09:32:50', 1);
INSERT INTO `log` VALUES (152, 'Jabatan Wakil Kacab berhasil dihapus', '2025-06-12 09:32:52', 1);
INSERT INTO `log` VALUES (153, 'Jabatan Direktur berhasil ditambahkan', '2025-06-12 09:32:55', 1);
INSERT INTO `log` VALUES (154, 'Jabatan Wakil Direktur berhasil ditambahkan', '2025-06-12 09:33:06', 1);
INSERT INTO `log` VALUES (155, 'Jabatan Kasubag. Staf Direktur berhasil ditambahkan', '2025-06-12 09:33:15', 1);
INSERT INTO `log` VALUES (156, 'Jabatan \n berhasil dihapus', '2025-06-12 10:04:23', 1);
INSERT INTO `log` VALUES (157, 'Area Pusat berhasil ditambahkan', '2025-06-12 10:05:32', 1);
INSERT INTO `log` VALUES (158, 'Area Yogyakarta berhasil ditambahkan', '2025-06-12 10:05:41', 1);
INSERT INTO `log` VALUES (159, 'Area Jabodetabek berhasil ditambahkan', '2025-06-12 10:05:50', 1);
INSERT INTO `log` VALUES (160, 'Area Semarang berhasil ditambahkan', '2025-06-12 10:06:08', 1);
INSERT INTO `log` VALUES (161, 'Area Malang berhasil ditambahkan', '2025-06-12 10:06:13', 1);
INSERT INTO `log` VALUES (162, 'Area Perintis berhasil ditambahkan', '2025-06-12 10:06:19', 1);
INSERT INTO `log` VALUES (163, 'Area Asia Pasific berhasil ditambahkan', '2025-06-12 10:06:53', 1);
INSERT INTO `log` VALUES (164, 'Area Purwokerto berhasil ditambahkan', '2025-06-12 10:24:26', 1);
INSERT INTO `log` VALUES (165, 'Area Solo berhasil ditambahkan', '2025-06-12 10:32:43', 1);
INSERT INTO `log` VALUES (166, 'Pengaduan Komputer mati berhasil ditambahkan', '2025-06-12 10:45:39', 1);
INSERT INTO `log` VALUES (167, 'Tanggapan di proses berhasil ditambahkan', '2025-06-12 10:48:02', 1);
INSERT INTO `log` VALUES (168, 'Tanggapan valid berhasil ditambahkan', '2025-06-12 10:48:33', 1);
INSERT INTO `log` VALUES (169, 'Tanggapan proses remot berhasil ditambahkan', '2025-06-12 10:48:51', 1);
INSERT INTO `log` VALUES (170, 'Tanggapan di selesaikan oleh mas alfan berhasil ditambahkan', '2025-06-12 10:49:08', 1);
INSERT INTO `log` VALUES (171, 'Pengguna anggaa berhasil dihapus', '2025-06-12 11:22:06', 1);
INSERT INTO `log` VALUES (172, 'Jabatan Staf Training berhasil dihapus', '2025-06-12 11:22:45', 1);
INSERT INTO `log` VALUES (173, 'Pengaduan cr55 matot berhasil ditambahkan', '2025-06-12 13:15:46', 1);
INSERT INTO `log` VALUES (174, 'Tanggapan on proses berhasil ditambahkan', '2025-06-12 13:17:07', 1);
INSERT INTO `log` VALUES (175, 'Tanggapan tidak valid sudah teryata sudah berhasil ditambahkan', '2025-06-12 13:17:43', 1);
INSERT INTO `log` VALUES (176, 'Tanggapan tidak valid sudah teryata sudah dengan status Tidak Valid berhasil dihapus', '2025-06-12 13:17:57', 1);
INSERT INTO `log` VALUES (177, 'Tanggapan laporan segera di kerjakan berhasil ditambahkan', '2025-06-12 13:18:21', 1);
INSERT INTO `log` VALUES (178, 'Tanggapan sedang di remot mas angga berhasil ditambahkan', '2025-06-12 13:18:42', 1);
INSERT INTO `log` VALUES (179, 'Tanggapan sudah di remot dilakukan perbaikan blabla berhasil ditambahkan', '2025-06-12 13:19:34', 1);
INSERT INTO `log` VALUES (180, 'Kategori Cr55 berhasil ditambahkan', '2025-06-12 13:40:57', 1);
INSERT INTO `log` VALUES (181, 'SubKategori Hardware Jaringan berhasil ditambahkan', '2025-06-12 13:47:42', 1);
INSERT INTO `log` VALUES (182, 'SubKategori Software berhasil ditambahkan', '2025-06-12 13:47:54', 1);
INSERT INTO `log` VALUES (183, 'SubKategori Ops Keuangan berhasil ditambahkan', '2025-06-12 13:48:06', 1);
INSERT INTO `log` VALUES (184, 'Pengaduan ganti harga berhasil ditambahkan', '2025-06-12 13:49:32', 1);
INSERT INTO `log` VALUES (185, 'Petugas Alfan Niami berhasil ditambahkan', '2025-06-12 13:51:30', 1);
INSERT INTO `log` VALUES (186, 'Pengaduan error pc berhasil ditambahkan', '2025-06-17 09:56:50', 1);
INSERT INTO `log` VALUES (187, 'Pengaduan error viks berhasil ditambahkan', '2025-06-17 09:59:27', 1);
INSERT INTO `log` VALUES (188, 'Jabatan Asissten Keuangan berhasil ditambahkan', '2025-06-17 10:12:41', 1);
INSERT INTO `log` VALUES (189, 'Pengaduan Pak Tolong dibantu cek rekap tarikan Shift 02 SS Manahan Timur untuk kategori Menunya sebagian kosong ? \r\nSudah di Ctrl + F5 tapi masih sama saja berhasil ditambahkan', '2025-06-17 10:14:52', 1);
INSERT INTO `log` VALUES (190, 'Tanggapan proses berhasil ditambahkan', '2025-06-17 10:15:55', 1);
INSERT INTO `log` VALUES (191, 'Tanggapan valid berhasil ditambahkan', '2025-06-17 10:16:04', 1);
INSERT INTO `log` VALUES (192, 'Tanggapan mohon ditunggu mbak, kami cek dulu berhasil ditambahkan', '2025-06-17 10:16:26', 1);
INSERT INTO `log` VALUES (193, 'Tanggapan silahkan direfresh dan dicoba lagi mbak gan berhasil ditambahkan', '2025-06-17 10:16:38', 1);
INSERT INTO `log` VALUES (194, 'Jabatan Staf General berhasil ditambahkan', '2025-06-17 10:17:49', 1);
INSERT INTO `log` VALUES (195, 'SubKategori Sipedas berhasil ditambahkan', '2025-06-17 10:21:38', 1);
INSERT INTO `log` VALUES (196, 'Pengaduan Minta tolong dibantu pak , Sipedas Pusat (akses Area Solo) Rekap penjualan menu global untuk pilih All waroeng kenapa tidak bisa pak?\r\nsudah Ctrl+F5 tapi masih tetap belum bisa pak berhasil ditambahkan', '2025-06-17 10:22:39', 1);
INSERT INTO `log` VALUES (197, 'Jabatan Staff Kasir berhasil ditambahkan', '2025-06-17 10:23:25', 1);
INSERT INTO `log` VALUES (198, 'Waroeng Wss L&#039;agricola berhasil ditambahkan', '2025-06-17 10:25:44', 1);
INSERT INTO `log` VALUES (199, 'Pengaduan pagii ,, pak agricola ada pesenan nasi dus tp ada tulisan sold outnya .. apa kan itu gpp ?? berhasil ditambahkan', '2025-06-17 10:27:10', 1);
INSERT INTO `log` VALUES (200, 'Petugas Rendy Rachim berhasil ditambahkan', '2025-06-17 10:28:33', 1);
INSERT INTO `log` VALUES (201, 'Tanggapan valid berhasil ditambahkan', '2025-06-17 10:29:07', 1);
INSERT INTO `log` VALUES (202, 'Tanggapan valid berhasil ditambahkan', '2025-06-17 10:29:14', 1);
INSERT INTO `log` VALUES (203, 'Tanggapan Abaikan saja tidak mempengaruhi transaksi CR,\r\nHanya tidak muncul di sistem order QR berhasil ditambahkan', '2025-06-17 10:29:25', 1);
INSERT INTO `log` VALUES (204, 'Tanggapan selesaai berhasil ditambahkan', '2025-06-17 10:29:35', 1);
INSERT INTO `log` VALUES (205, 'Pengaduan Kendala  : Link: Sipedaspusat -&gt; pada rekap Menu Global tidak mau muncul pilihan menu All Waroeng\r\nHal yg sudah dilakukan : \r\n- Sudah melakukan Hapus History \r\n- CTRL + F5\r\n- Sudah mencoba ganti Web (Chrome / Mozilla)\r\n-&gt; Tapi masih tidak muncul untuk All Waroengnya pada kategori Waroeng berhasil ditambahkan', '2025-06-17 10:31:39', 1);
INSERT INTO `log` VALUES (206, 'Tanggapan proses berhasil ditambahkan', '2025-06-17 10:32:09', 1);
INSERT INTO `log` VALUES (207, 'Tanggapan valid berhasil ditambahkan', '2025-06-17 10:32:16', 1);
INSERT INTO `log` VALUES (208, 'Tanggapan si remote mas rendy berhasil ditambahkan', '2025-06-17 10:32:33', 1);
INSERT INTO `log` VALUES (209, 'Tanggapan silahkan di refresh mbak berhasil ditambahkan', '2025-06-17 10:32:47', 1);
INSERT INTO `log` VALUES (210, 'Pengaduan mohon bantuannya CR55 kediri tidak bisa sign in berhasil ditambahkan', '2025-06-17 10:34:14', 1);
INSERT INTO `log` VALUES (211, 'Tanggapan di proses mas alfan berhasil ditambahkan', '2025-06-17 10:34:52', 1);
INSERT INTO `log` VALUES (212, 'Tanggapan belum di tanggapi tapi sudah bisa berhasil ditambahkan', '2025-06-17 10:35:19', 1);
INSERT INTO `log` VALUES (213, 'Kategori Ops Keuangan berhasil ditambahkan', '2025-06-17 10:36:43', 1);
INSERT INTO `log` VALUES (214, 'SubKategori Harga berhasil ditambahkan', '2025-06-17 10:36:56', 1);
INSERT INTO `log` VALUES (215, 'Pengaduan Harga gojek di device  berbeda dengan harga di CR \r\nHal yg sudah dilakukan : Refresh berhasil ditambahkan', '2025-06-17 10:39:17', 1);
INSERT INTO `log` VALUES (216, 'Petugas Ma&#039;ruf Budi Setiawan berhasil ditambahkan', '2025-06-17 10:39:52', 1);
INSERT INTO `log` VALUES (217, 'Tanggapan valid berhasil ditambahkan', '2025-06-17 10:40:19', 1);
INSERT INTO `log` VALUES (218, 'Tanggapan valid berhasil ditambahkan', '2025-06-17 10:40:25', 1);
INSERT INTO `log` VALUES (219, 'Tanggapan proses pengerjaan berhasil ditambahkan', '2025-06-17 10:41:33', 1);
INSERT INTO `log` VALUES (220, 'Tanggapan Segera koor ke opp Ditutup dulu mb , harga yg benar di cr55 berhasil ditambahkan', '2025-06-17 10:41:40', 1);
INSERT INTO `log` VALUES (221, 'Waroeng Kisamaun 1 berhasil ditambahkan', '2025-06-17 10:43:21', 1);
INSERT INTO `log` VALUES (222, 'Waroeng Kisamaun 2 berhasil ditambahkan', '2025-06-17 10:43:30', 1);
INSERT INTO `log` VALUES (223, 'SubKategori Ops Keuangan berhasil dihapus', '2025-06-17 10:45:42', 1);
INSERT INTO `log` VALUES (224, 'SubKategori Menu berhasil ditambahkan', '2025-06-17 10:45:58', 1);
INSERT INTO `log` VALUES (225, 'Pengaduan penambahan meny edamame di tab wbd dan cr55 kasir berhasil ditambahkan', '2025-06-17 10:47:35', 1);
INSERT INTO `log` VALUES (226, 'Tanggapan Proses berhasil ditambahkan', '2025-06-17 10:47:51', 1);
INSERT INTO `log` VALUES (227, 'Tanggapan Valid berhasil ditambahkan', '2025-06-17 10:47:59', 1);
INSERT INTO `log` VALUES (228, 'Tanggapan proses berhasil ditambahkan', '2025-06-17 10:48:11', 1);
INSERT INTO `log` VALUES (229, 'Tanggapan proses dengan status Pengerjaan berhasil dihapus', '2025-06-17 10:48:24', 1);
INSERT INTO `log` VALUES (230, 'Tanggapan Ini maksutnya gimana mb? Menu nya tidak ada atau gimana? Minta tolong fotokan berhasil ditambahkan', '2025-06-17 10:48:33', 1);
INSERT INTO `log` VALUES (231, 'Tanggapan O ya mb, di refresh cek sekarang berhasil ditambahkan', '2025-06-17 10:48:52', 1);
INSERT INTO `log` VALUES (232, 'Jabatan Akutansi berhasil ditambahkan', '2025-06-17 10:50:28', 1);
INSERT INTO `log` VALUES (233, 'Waroeng Kantor Area Purwokerto berhasil ditambahkan', '2025-06-17 10:51:44', 1);
INSERT INTO `log` VALUES (234, 'Pengaduan Tidak Bisa Buka Penjualan Non Menu\r\nHal yg sudah dilakukan : Reload , Login Ulang berhasil ditambahkan', '2025-06-17 10:53:09', 1);
INSERT INTO `log` VALUES (235, 'Tanggapan Proses berhasil ditambahkan', '2025-06-17 10:53:27', 1);
INSERT INTO `log` VALUES (236, 'Tanggapan valid berhasil ditambahkan', '2025-06-17 10:53:34', 1);
INSERT INTO `log` VALUES (237, 'Tanggapan Mas @Mas Rendy SS IT Pusat minta tolong dibantu berhasil ditambahkan', '2025-06-17 10:53:52', 1);
INSERT INTO `log` VALUES (238, 'Tanggapan sudah aman ya mas, solusi : tidak diapa - apakan (hanya refresh) berhasil ditambahkan', '2025-06-17 10:54:06', 1);
INSERT INTO `log` VALUES (239, 'Pengaduan Minta tolong update In Ala carte harga Rp. 27.500 pak, ada pesanan Dari SS depok Margonda nggeh berhasil ditambahkan', '2025-06-17 10:55:43', 1);
INSERT INTO `log` VALUES (240, 'Pengaduan Harga Paket Ayam Spesial ada keterangan Sold Out berhasil ditambahkan', '2025-06-17 10:57:35', 1);
INSERT INTO `log` VALUES (241, 'Waroeng Wss Depok Margonda berhasil ditambahkan', '2025-06-17 10:59:07', 1);
INSERT INTO `log` VALUES (242, 'Waroeng Wss Depok Margonda berhasil dihapus', '2025-06-17 11:00:21', 1);
INSERT INTO `log` VALUES (243, 'Waroeng Wss Depok Sawangan berhasil ditambahkan', '2025-06-17 11:00:34', 1);
INSERT INTO `log` VALUES (244, 'Petugas Dhona berhasil ditambahkan', '2025-06-17 11:01:35', 1);
INSERT INTO `log` VALUES (245, 'Pengaduan update harga air mineral 300: 4.500, 600 : 5.500, 1.500 : 7.500 berhasil ditambahkan', '2025-06-17 11:03:43', 1);
INSERT INTO `log` VALUES (246, 'Tanggapan proses berhasil ditambahkan', '2025-06-17 11:04:24', 1);
INSERT INTO `log` VALUES (247, 'Tanggapan valid berhasil ditambahkan', '2025-06-17 11:04:32', 1);
INSERT INTO `log` VALUES (248, 'Tanggapan ini sudah dapet info dari pak Handoko belum ya mba berhasil ditambahkan', '2025-06-17 11:04:37', 1);
INSERT INTO `log` VALUES (249, 'Tanggapan Konfirmasi ke pak handoko berhasil ditambahkan', '2025-06-17 11:05:02', 1);
INSERT INTO `log` VALUES (250, 'Tanggapan Proses berhasil ditambahkan', '2025-06-17 11:05:44', 1);
INSERT INTO `log` VALUES (251, 'Tanggapan valid berhasil ditambahkan', '2025-06-17 11:05:51', 1);
INSERT INTO `log` VALUES (252, 'Tanggapan konfirmasi oleh tim ops keu berhasil ditambahkan', '2025-06-17 11:06:10', 1);
INSERT INTO `log` VALUES (253, 'Tanggapan 1. Abaikan untuk Warong non QR, tidak berpengaruh pada input penjualan\r\n2. Kemungkinan ada yang menonaktifkan pada aplikasi sipedas.wss - Produk Menu berhasil ditambahkan', '2025-06-17 11:06:20', 1);
INSERT INTO `log` VALUES (254, 'Pengaduan menu kasir pada salah satu transaksi tdk muncul menunya. Dan muncul keterangan connection unstable berhasil ditambahkan', '2025-06-17 11:09:07', 1);
INSERT INTO `log` VALUES (255, 'Tanggapan proses berhasil ditambahkan', '2025-06-17 11:09:56', 1);
INSERT INTO `log` VALUES (256, 'Tanggapan valid berhasil ditambahkan', '2025-06-17 11:10:07', 1);
INSERT INTO `log` VALUES (257, 'Tanggapan di perbaiki mas alfan berhasil ditambahkan', '2025-06-17 11:11:08', 1);
INSERT INTO `log` VALUES (258, 'Tanggapan Baik bapak, sudah dikonfirmasi oleh kasir yg bersangkutan kalo cr dan nota kemarin sdh aman. Mtr nuwun berhasil ditambahkan', '2025-06-17 11:11:12', 1);
INSERT INTO `log` VALUES (259, 'Tanggapan Baik bapak, sudah dikonfirmasi oleh kasir yg bersangkutan kalo cr dan nota kemarin sdh aman. Mtr nuwun dengan status Proses berhasil dihapus', '2025-06-17 11:11:18', 1);
INSERT INTO `log` VALUES (260, 'Tanggapan proses berhasil ditambahkan', '2025-06-17 11:11:26', 1);
INSERT INTO `log` VALUES (261, 'Tanggapan valid berhasil ditambahkan', '2025-06-17 11:11:33', 1);
INSERT INTO `log` VALUES (262, 'Tanggapan di remote mas allfan setelah printer tidak bisa ngeprint berhasil ditambahkan', '2025-06-17 11:11:56', 1);
INSERT INTO `log` VALUES (263, 'Tanggapan Baik bapak, sudah dikonfirmasi oleh kasir yg bersangkutan kalo cr dan nota kemarin sdh aman. Mtr nuwun berhasil ditambahkan', '2025-06-17 11:12:01', 1);
INSERT INTO `log` VALUES (264, 'Tanggapan proses berhasil ditambahkan', '2025-06-17 11:13:20', 1);
INSERT INTO `log` VALUES (265, 'Tanggapan tidak ada tanggapan berhasil ditambahkan', '2025-06-17 11:13:33', 1);
INSERT INTO `log` VALUES (266, 'SubKategori Jaringan berhasil diubah', '2025-06-17 11:23:45', 1);
INSERT INTO `log` VALUES (267, 'SubKategori Printer berhasil ditambahkan', '2025-06-17 11:23:56', 1);
INSERT INTO `log` VALUES (268, 'Pengaduan printer untuk status kedip kedip merah teros berhasil ditambahkan', '2025-06-17 11:25:51', 1);
INSERT INTO `log` VALUES (269, 'Tanggapan Proses berhasil ditambahkan', '2025-06-17 11:26:42', 1);
INSERT INTO `log` VALUES (270, 'Tanggapan v berhasil ditambahkan', '2025-06-17 11:26:47', 1);
INSERT INTO `log` VALUES (271, 'Tanggapan di tunggu mbak berhasil ditambahkan', '2025-06-17 11:27:01', 1);
INSERT INTO `log` VALUES (272, 'Tanggapan pencerahan kenapa terjadi kedip2 merah:\r\n1. kertas thermal habis \r\n2. daya voltase dan ampere tidak sesuai, \r\ndaya printer :\r\nprinter QR code = 19 volt / 2,5 Ampere\r\nprinter toko wbd dan ojol opp = 12 volt/2,5 ampere \r\nprinter kasir / CR55 = 19 volt /2,5 ampere\r\n3. kelebihan beban pada terminal listrik ( rol kabel di kasir ) biasanya di gabung dengan freezer LLF atau eskrim berhasil ditambahkan', '2025-06-17 11:27:16', 1);
INSERT INTO `log` VALUES (273, 'Pengaduan Buah campur yg ada pepaya sama pisang itu harganya beda dicr sama nota berhasil ditambahkan', '2025-06-17 11:29:13', 1);
INSERT INTO `log` VALUES (274, 'Tanggapan proses berhasil ditambahkan', '2025-06-17 11:30:03', 1);
INSERT INTO `log` VALUES (275, 'Tanggapan tidak ada tanggapan berhasil ditambahkan', '2025-06-17 11:30:15', 1);
INSERT INTO `log` VALUES (276, 'Tanggapan proses berhasil ditambahkan', '2025-06-17 15:37:55', 1);
INSERT INTO `log` VALUES (277, 'Tanggapan tidak ada respon dari ops keu dan pelapor berhasil ditambahkan', '2025-06-17 15:38:24', 1);
INSERT INTO `log` VALUES (278, 'Pengaduan Tidak Bisa Login CR55 berhasil ditambahkan', '2025-06-17 15:53:09', 1);
INSERT INTO `log` VALUES (279, 'Tanggapan proses berhasil ditambahkan', '2025-06-17 15:53:23', 1);
INSERT INTO `log` VALUES (280, 'Tanggapan valid berhasil ditambahkan', '2025-06-17 15:53:31', 1);
INSERT INTO `log` VALUES (281, 'Tanggapan Cobak ketik \r\n\r\nhttp://cr55.wss berhasil ditambahkan', '2025-06-17 15:53:52', 1);
INSERT INTO `log` VALUES (282, 'Tanggapan Mengetikan manual alamat web https://cr55.wss berhasil ditambahkan', '2025-06-17 15:54:08', 1);
INSERT INTO `log` VALUES (283, 'Pengaduan Pada Rekap Menu Global Tgl 15 tidak mau muncul datanya (masih kosong)\r\nHal yg sudah dilakukan : \r\n- Melakukat Restart \r\n- Ctrl + F5 \r\n- Mencoba membuka melalui Pc Lain dan Web Brownser lain berhasil ditambahkan', '2025-06-17 15:55:25', 1);
INSERT INTO `log` VALUES (284, 'Petugas Ihsannudin berhasil ditambahkan', '2025-06-17 15:56:38', 1);
INSERT INTO `log` VALUES (285, 'Tanggapan proses berhasil ditambahkan', '2025-06-17 15:57:14', 1);
INSERT INTO `log` VALUES (286, 'Tanggapan v berhasil ditambahkan', '2025-06-17 15:57:18', 1);
INSERT INTO `log` VALUES (287, 'Tanggapan baik mba mohon ditunggu nggih kami bantu cek dahulu berhasil ditambahkan', '2025-06-17 15:57:41', 1);
INSERT INTO `log` VALUES (288, 'Pengaduan CR55 blank tidak ada meja dan bungkus internet tidak connec berhasil ditambahkan', '2025-06-17 15:59:50', 1);
INSERT INTO `log` VALUES (289, 'Tanggapan proses berhasil ditambahkan', '2025-06-17 16:15:05', 1);
INSERT INTO `log` VALUES (290, 'Tanggapan v berhasil ditambahkan', '2025-06-17 16:15:10', 1);
INSERT INTO `log` VALUES (291, 'Tanggapan Manejemen wr Kedokan perlu ngobrol deh kyknya, kami mw bantu tapi tidak ada yg standby, sehingga kami kesulitan membantu via telpon berhasil ditambahkan', '2025-06-17 16:16:11', 1);
INSERT INTO `log` VALUES (292, 'Tanggapan 1. Melibatkan Aparatur IT dan OPS Keu Area Yogyakarta, untuk memperbaiki kabel yg putus. (Makasihnya ke Mas Roy sama mas Fani ya) ????\r\n2. Hasil done berhasil ditambahkan', '2025-06-17 16:16:24', 1);
INSERT INTO `log` VALUES (293, 'SubKategori Hardware berhasil ditambahkan', '2025-06-17 16:18:13', 1);
INSERT INTO `log` VALUES (294, 'Pengaduan CPU tidak mau nyala kabel power sudah diganti menggunakan kabel power lain namun tetap tidak mau nyala berhasil ditambahkan', '2025-06-17 16:34:33', 1);
INSERT INTO `log` VALUES (295, 'Tanggapan proses berhasil ditambahkan', '2025-06-17 16:34:51', 1);
INSERT INTO `log` VALUES (296, 'Tanggapan v berhasil ditambahkan', '2025-06-17 16:34:59', 1);
INSERT INTO `log` VALUES (297, 'Tanggapan Udh dipastikan stopkontaknya ada aliran listrik? berhasil ditambahkan', '2025-06-17 16:35:14', 1);
INSERT INTO `log` VALUES (298, 'Tanggapan Dibantu Kacab dan SDM Waroeng berhasil ditambahkan', '2025-06-17 16:35:26', 1);
INSERT INTO `log` VALUES (299, 'Jabatan Kacab berhasil ditambahkan', '2025-06-17 16:36:15', 1);
INSERT INTO `log` VALUES (300, 'Pengaduan Pak ini cpu batubulan mati tapi hardisknya tidak saya sambungkan ke HDD takutnya datanya rusak/hilang pak berhasil ditambahkan', '2025-06-17 16:38:19', 1);
INSERT INTO `log` VALUES (301, 'Petugas M. Naufal Ahnaf berhasil ditambahkan', '2025-06-17 16:38:34', 1);
INSERT INTO `log` VALUES (302, 'Tanggapan proses berhasil ditambahkan', '2025-06-17 16:38:54', 1);
INSERT INTO `log` VALUES (303, 'Tanggapan v berhasil ditambahkan', '2025-06-17 16:38:59', 1);
INSERT INTO `log` VALUES (304, 'Tanggapan proses peremotan berhasil ditambahkan', '2025-06-17 16:39:10', 1);
INSERT INTO `log` VALUES (305, 'Tanggapan 1. di remote untuk pembersihan slot Ram dan pemindahan slot ram ke soket 12.  Pemindahan soket hardisk karena hardisk tidak terbaca, setelah di pindah hardik terbaca kembali berhasil ditambahkan', '2025-06-17 16:39:33', 1);
INSERT INTO `log` VALUES (306, 'Petugas Cahya Krisna Angga berhasil diubah', '2025-06-17 16:40:49', 1);
INSERT INTO `log` VALUES (307, 'Pengaduan katergori menu yang membuat penjualan tidak nge link berhasil ditambahkan', '2025-06-18 10:24:46', 1);
INSERT INTO `log` VALUES (308, 'Tanggapan proses berhasil ditambahkan', '2025-06-18 10:25:50', 1);
INSERT INTO `log` VALUES (309, 'Tanggapan v berhasil ditambahkan', '2025-06-18 10:25:56', 1);
INSERT INTO `log` VALUES (310, 'Tanggapan dipandu pak alfan untuk perbaikan oleh software berhasil ditambahkan', '2025-06-18 10:26:28', 1);
INSERT INTO `log` VALUES (311, 'Tanggapan silahkan di cek kembali ya mbak, ini saya cek dari sini sudah clear berhasil ditambahkan', '2025-06-18 10:26:40', 1);
INSERT INTO `log` VALUES (312, 'Waroeng Kantor Kinanthi berhasil ditambahkan', '2025-06-18 10:32:03', 1);
INSERT INTO `log` VALUES (313, 'Waroeng Training Center berhasil ditambahkan', '2025-06-18 10:32:24', 1);
INSERT INTO `log` VALUES (314, 'Kategori Jaringan berhasil ditambahkan', '2025-06-18 13:07:33', 1);
INSERT INTO `log` VALUES (315, 'SubKategori Internet berhasil ditambahkan', '2025-06-18 13:07:50', 1);
INSERT INTO `log` VALUES (316, 'Pengaduan Internet lemot terkadang sampai trouble kemungkinan jarak rother yang jauh dan jaringan internet sering tidak stabil serta hari ini trouble pada komputer yang jika akan mendownload file tidak bisa dibuka atau ketetangan resume. berhasil ditambahkan', '2025-06-18 13:08:58', 1);
INSERT INTO `log` VALUES (317, 'Tanggapan proses berhasil ditambahkan', '2025-06-18 13:09:26', 1);
INSERT INTO `log` VALUES (318, 'Tanggapan v berhasil ditambahkan', '2025-06-18 13:09:32', 1);
INSERT INTO `log` VALUES (319, 'Tanggapan proses peremotan berhasil ditambahkan', '2025-06-18 13:09:44', 1);
INSERT INTO `log` VALUES (320, 'Tanggapan - dilakukan penggantian sandi wifi\r\n- merestart router yang digunakan\r\n- merimander agar wifi tidak digunakan untuk yang tidak berkepentingan agar tidak terjadi jaringan lemot berhasil ditambahkan', '2025-06-18 13:18:33', 1);
INSERT INTO `log` VALUES (321, 'Jabatan Kacab Digital berhasil diubah', '2025-06-18 13:22:25', 1);
INSERT INTO `log` VALUES (322, 'Pengaduan Laptop tidak bisa muncul wifi berhasil ditambahkan', '2025-06-18 13:24:00', 1);
INSERT INTO `log` VALUES (323, 'Tanggapan proses berhasil ditambahkan', '2025-06-18 13:24:46', 1);
INSERT INTO `log` VALUES (324, 'Tanggapan v berhasil ditambahkan', '2025-06-18 13:24:51', 1);
INSERT INTO `log` VALUES (325, 'Tanggapan sedan di cek berhasil ditambahkan', '2025-06-18 13:25:01', 1);
INSERT INTO `log` VALUES (326, 'Tanggapan - buka device manager\r\n- pilih network adaptor\r\n- pilih driver wifi ( setiap computer nama berbeda) \r\n- atur menjadi disable lalu enable kan Kembali berhasil ditambahkan', '2025-06-18 13:25:17', 1);
INSERT INTO `log` VALUES (327, 'Pengguna naufalahnaf berhasil diubah', '2025-06-18 16:46:07', 1);
INSERT INTO `log` VALUES (328, 'Pengguna naufalahnaf berhasil dihapus', '2025-06-18 16:47:23', 1);
INSERT INTO `log` VALUES (329, 'Pengguna naufaloche dengan jabatan operator berhasil ditambahkan', '2025-06-18 16:47:56', 1);
INSERT INTO `log` VALUES (330, 'Pengguna naufaloche berhasil diubah', '2025-06-18 16:48:06', 1);
INSERT INTO `log` VALUES (331, 'Pengguna naufaloche berhasil dihapus', '2025-06-18 16:48:24', 1);
INSERT INTO `log` VALUES (332, 'Pengguna naufaloche21 dengan jabatan administrator berhasil ditambahkan', '2025-06-18 16:48:41', 1);
INSERT INTO `log` VALUES (333, 'Pengguna naufaloche21 berhasil diubah', '2025-06-18 16:49:07', 1);
INSERT INTO `log` VALUES (334, 'Pengguna naufaloche21 berhasil dihapus', '2025-06-18 16:49:23', 1);
INSERT INTO `log` VALUES (335, 'Pengguna naufalahnaf dengan jabatan operator berhasil ditambahkan', '2025-06-18 16:49:50', 1);
INSERT INTO `log` VALUES (336, 'Pengaduan Selamat sore buk pak, ngapunten,\r\nBantu cek Wonosari perihal pergerakan stok di Kartu Stok terdapati warning seperti ini dari range tanggal 1 sd 18 Juni 2025. berhasil ditambahkan', '2025-06-19 09:11:20', 1);
INSERT INTO `log` VALUES (337, 'Tanggapan prose berhasil ditambahkan', '2025-06-19 09:11:36', 1);
INSERT INTO `log` VALUES (338, 'Tanggapan v berhasil ditambahkan', '2025-06-19 09:11:42', 1);
INSERT INTO `log` VALUES (339, 'Tanggapan ini setelah saya cek mas memang ada perlakukan yg tidak wajar dari waroeng yg system belum bisa antisipasi. berhasil ditambahkan', '2025-06-19 09:12:43', 1);
INSERT INTO `log` VALUES (340, 'Tanggapan mengacu dari data di lapangan seperti ini mas, jadi pada so pertama memang terdapat selisih lebih, kemudian ada penerimaan lagi dan so lagi yg menyebabkan jadi selisih so lagi berhasil ditambahkan', '2025-06-19 09:13:43', 1);
INSERT INTO `log` VALUES (341, 'Pengaduan Ijin menyampaikan untuk di magelang SO ayam Dada Bacem dan Paha Bacem belum bisa berganti nominalnya Di SLH \r\n\r\nUntuk sisa Rill \r\nDada Bacem 10\r\nPaha bacem 18\r\nSudah di input di SO BB di jam 23:03 namun sampai saat ini jam 23:52 kami cek di SLH masih belum berganti untuk nominal inputannya \r\nUntuk stuck sales sudah tidak ada berhasil ditambahkan', '2025-06-19 09:16:10', 1);
INSERT INTO `log` VALUES (342, 'Tanggapan proses berhasil ditambahkan', '2025-06-19 09:16:24', 1);
INSERT INTO `log` VALUES (343, 'Tanggapan v berhasil ditambahkan', '2025-06-19 09:16:32', 1);
INSERT INTO `log` VALUES (344, 'Tanggapan Dicek dulu di kartu stoknya mas sudah masuk belum berhasil ditambahkan', '2025-06-19 09:16:59', 1);
INSERT INTO `log` VALUES (345, 'Tanggapan pakai kartu stok dulu mas, lsh mau dicek dahulu sama pak rendi, Untuk lsh sifatnya laporan pembantu mas jika ada yg aneh bisa dicek dikartu stoknya dahulu berhasil ditambahkan', '2025-06-19 09:17:53', 1);
INSERT INTO `log` VALUES (346, 'Pengaduan Harga Paket Ayam Spesial ada keterangan Sold Out berhasil ditambahkan', '2025-06-26 14:33:46', 1);
INSERT INTO `log` VALUES (347, 'Pengaduan update harga air mineral 300: 4.500, 600 : 5.500, 1.500 : 7.500 berhasil ditambahkan', '2025-06-26 14:36:25', 1);
INSERT INTO `log` VALUES (348, 'Tanggapan proses berhasil ditambahkan', '2025-06-26 14:37:58', 1);
INSERT INTO `log` VALUES (349, 'Tanggapan v berhasil ditambahkan', '2025-06-26 14:38:04', 1);
INSERT INTO `log` VALUES (350, 'Tanggapan pengerjan berhasil ditambahkan', '2025-06-26 14:38:18', 1);
INSERT INTO `log` VALUES (351, 'Tanggapan 1. Abaikan untuk Warong non QR, tidak berpengaruh pada input penjualan\r\n2. Kemungkinan ada yang menonaktifkan pada aplikasi sipedas.wss - Produk Menu berhasil ditambahkan', '2025-06-26 14:38:25', 1);
INSERT INTO `log` VALUES (352, 'Tanggapan Proses berhasil ditambahkan', '2025-06-26 14:42:28', 1);
INSERT INTO `log` VALUES (353, 'Tanggapan v berhasil ditambahkan', '2025-06-26 14:42:40', 1);
INSERT INTO `log` VALUES (354, 'Tanggapan prngerjann berhasil ditambahkan', '2025-06-26 14:42:57', 1);
INSERT INTO `log` VALUES (355, 'Tanggapan dibantu ops keuangan berhasil ditambahkan', '2025-06-26 14:43:08', 1);
INSERT INTO `log` VALUES (356, 'Pengaduan printer untuk status kedip kedip merah teros berhasil ditambahkan', '2025-06-26 14:45:37', 1);
INSERT INTO `log` VALUES (357, 'Tanggapan proses berhasil ditambahkan', '2025-06-26 14:46:34', 1);
INSERT INTO `log` VALUES (358, 'Tanggapan v berhasil ditambahkan', '2025-06-26 14:46:43', 1);
INSERT INTO `log` VALUES (359, 'Tanggapan sedang di remot berhasil ditambahkan', '2025-06-26 14:46:55', 1);
INSERT INTO `log` VALUES (360, 'Tanggapan Ini tadi diganti kabel power yang lama pak, kabel power sebelom nya malah baru tapi dicek juga tidak ada kerusakan untuk kabel power yg baru itu berhasil ditambahkan', '2025-06-26 14:47:21', 1);
INSERT INTO `log` VALUES (361, 'Pengaduan Buah Mix (Semangka Nanas Pepaya) dan Buah Mix (Semangka Melon Pisang). Buah campur yg ada pepaya sama pisang itu harganya beda dicr sama nota berhasil ditambahkan', '2025-06-26 14:49:30', 1);
INSERT INTO `log` VALUES (362, 'Tanggapan proses berhasil ditambahkan', '2025-06-26 14:52:30', 1);
INSERT INTO `log` VALUES (363, 'Tanggapan tidak ada tanggapan berhasil ditambahkan', '2025-06-26 14:52:40', 1);
INSERT INTO `log` VALUES (364, 'Pengaduan Tidak Bisa Login CR55 berhasil ditambahkan', '2025-06-26 14:55:12', 1);
INSERT INTO `log` VALUES (365, 'Tanggapan proses berhasil ditambahkan', '2025-06-26 14:57:51', 1);
INSERT INTO `log` VALUES (366, 'Tanggapan v berhasil ditambahkan', '2025-06-26 14:58:46', 1);
INSERT INTO `log` VALUES (367, 'Tanggapan sedang dalam panduan pak alfan berhasil ditambahkan', '2025-06-26 14:59:10', 1);
INSERT INTO `log` VALUES (368, 'Tanggapan Mengetikan manual alamat web https://cr55.wss berhasil ditambahkan', '2025-06-26 14:59:25', 1);
INSERT INTO `log` VALUES (369, 'Tanggapan Di perbaiki tim software berhasil ditambahkan', '2025-06-26 15:39:19', 1);
INSERT INTO `log` VALUES (370, 'Pengaduan Pada Rekap Menu Global Tgl 15 tidak mau muncul datanya (masih kosong)\r\nHal yg sudah dilakukan : \r\n- Melakukat Restart \r\n- Ctrl + F5 \r\n- Mencoba membuka melalui Pc Lain dan Web Brownser lain berhasil ditambahkan', '2025-06-26 15:42:06', 1);
INSERT INTO `log` VALUES (371, 'Tanggapan Proses berhasil ditambahkan', '2025-06-26 15:50:05', 1);
INSERT INTO `log` VALUES (372, 'Tanggapan v berhasil ditambahkan', '2025-06-26 15:50:09', 1);
INSERT INTO `log` VALUES (373, 'Tanggapan Prngerjaan oleh mas risco dan mas ihsan berhasil ditambahkan', '2025-06-26 15:50:25', 1);
INSERT INTO `log` VALUES (374, 'Tanggapan Dibantu tim software berhasil ditambahkan', '2025-06-26 15:50:56', 1);
INSERT INTO `log` VALUES (375, 'Pengaduan CR55 blank tidak ada meja dan bungkus internet tidak connec berhasil ditambahkan', '2025-06-26 15:54:08', 1);
INSERT INTO `log` VALUES (376, 'Tanggapan proses berhasil ditambahkan', '2025-06-26 15:54:27', 1);
INSERT INTO `log` VALUES (377, 'Tanggapan v berhasil ditambahkan', '2025-06-26 15:54:32', 1);
INSERT INTO `log` VALUES (378, 'Tanggapan Sedang dalam proses remot pak alfan berhasil ditambahkan', '2025-06-26 15:54:50', 1);
INSERT INTO `log` VALUES (379, 'Tanggapan 1. Melibatkan Aparatur IT dan OPS Keu Area Yogyakarta, untuk memperbaiki kabel yg putus. (Makasihnya ke Mas Roy sama mas Fani ya) ????\r\n2. Hasil done ✅ berhasil ditambahkan', '2025-06-26 15:54:56', 1);
INSERT INTO `log` VALUES (380, 'Pengaduan CPU tidak mau nyala kabel power sudah diganti menggunakan kabel power lain namun tetap tidak mau nyala berhasil ditambahkan', '2025-06-26 15:57:26', 1);
INSERT INTO `log` VALUES (381, 'Tanggapan Proses berhasil ditambahkan', '2025-06-26 15:57:50', 1);
INSERT INTO `log` VALUES (382, 'Tanggapan v berhasil ditambahkan', '2025-06-26 15:57:55', 1);
INSERT INTO `log` VALUES (383, 'Tanggapan Sedang proses remote berhasil ditambahkan', '2025-06-26 15:58:16', 1);
INSERT INTO `log` VALUES (384, 'Tanggapan dibantu Kacab dan SDM Waroeng berhasil ditambahkan', '2025-06-26 15:58:36', 1);
INSERT INTO `log` VALUES (385, 'Pengaduan Loading Lama dan Tidak bisa membuka one drive berhasil ditambahkan', '2025-06-26 16:02:15', 1);
INSERT INTO `log` VALUES (386, 'Pengaduan tdk bisa akses CR55 (,listrik jeglek 3x)\r\nSudah di restart smaa Ajja berhasil ditambahkan', '2025-06-26 16:03:45', 1);
INSERT INTO `log` VALUES (387, 'Tanggapan Proses berhasil ditambahkan', '2025-06-26 16:04:19', 1);
INSERT INTO `log` VALUES (388, 'Tanggapan v berhasil ditambahkan', '2025-06-26 16:04:24', 1);
INSERT INTO `log` VALUES (389, 'Tanggapan sedang dalam remote pak risco berhasil ditambahkan', '2025-06-26 16:04:44', 1);
INSERT INTO `log` VALUES (390, 'Tanggapan Followup : akses url manual\r\nStatus : Done ✅ berhasil ditambahkan', '2025-06-26 16:05:02', 1);
INSERT INTO `log` VALUES (391, 'Pengaduan katergori menu yang membuat penjualan tidak nge link berhasil ditambahkan', '2025-06-26 16:07:27', 1);
INSERT INTO `log` VALUES (392, 'Tanggapan Proses berhasil ditambahkan', '2025-06-26 16:08:14', 1);
INSERT INTO `log` VALUES (393, 'Tanggapan v berhasil ditambahkan', '2025-06-26 16:08:20', 1);
INSERT INTO `log` VALUES (394, 'Tanggapan di remote pak rendy berhasil ditambahkan', '2025-06-26 16:09:19', 1);
INSERT INTO `log` VALUES (395, 'Tanggapan silahkan di cek kembali ya mbak, ini saya cek dari sini sudah clear berhasil ditambahkan', '2025-06-26 16:09:33', 1);
INSERT INTO `log` VALUES (396, 'Tanggapan proses berhasil ditambahkan', '2025-06-26 16:13:34', 1);
INSERT INTO `log` VALUES (397, 'Tanggapan v berhasil ditambahkan', '2025-06-26 16:13:39', 1);
INSERT INTO `log` VALUES (398, 'Tanggapan pengerjaan oleh sdm area berhasil ditambahkan', '2025-06-26 16:13:53', 1);
INSERT INTO `log` VALUES (399, 'Tanggapan dibantu oleh sdm area berhasil ditambahkan', '2025-06-26 16:14:05', 1);
INSERT INTO `log` VALUES (400, 'Pengaduan Penambahan menu nasi dos alacarte harga 27.000 berhasil ditambahkan', '2025-06-26 16:22:38', 1);
INSERT INTO `log` VALUES (401, 'Tanggapan Proses berhasil ditambahkan', '2025-06-26 16:22:51', 1);
INSERT INTO `log` VALUES (402, 'Tanggapan v berhasil ditambahkan', '2025-06-26 16:22:56', 1);
INSERT INTO `log` VALUES (403, 'Tanggapan sedang dalam pengerjaan berhasil ditambahkan', '2025-06-26 16:23:07', 1);
INSERT INTO `log` VALUES (404, 'Tanggapan Refresh mb ditunggu saja berhasil ditambahkan', '2025-06-26 16:23:25', 1);
INSERT INTO `log` VALUES (405, 'Pengaduan Order penambahan Harga Paket Hampers Custom. berhasil ditambahkan', '2025-06-26 16:33:06', 1);
INSERT INTO `log` VALUES (406, 'Tanggapan proses berhasil ditambahkan', '2025-06-26 16:33:23', 1);
INSERT INTO `log` VALUES (407, 'Tanggapan v berhasil ditambahkan', '2025-06-26 16:33:28', 1);
INSERT INTO `log` VALUES (408, 'Tanggapan proses pengerjaan berhasil ditambahkan', '2025-06-26 16:33:42', 1);
INSERT INTO `log` VALUES (409, 'Tanggapan di bantu ops keuangan berhasil ditambahkan', '2025-06-26 16:34:12', 1);
INSERT INTO `log` VALUES (410, 'Pengaduan Mesin printer tidak bisa buat print berhasil ditambahkan', '2025-06-26 16:35:29', 1);
INSERT INTO `log` VALUES (411, 'Tanggapan Proses berhasil ditambahkan', '2025-06-26 16:39:05', 1);
INSERT INTO `log` VALUES (412, 'Tanggapan v berhasil ditambahkan', '2025-06-26 16:39:10', 1);
INSERT INTO `log` VALUES (413, 'Tanggapan proses pengerjaan berhasil ditambahkan', '2025-06-26 16:39:24', 1);
INSERT INTO `log` VALUES (414, 'Tanggapan Dibantu oleh sdm Area berhasil ditambahkan', '2025-06-26 16:39:44', 1);
INSERT INTO `log` VALUES (415, 'Pengaduan Cr tidak bisa nyala tampilan seprti difoto , sudah dari td malam setelah tarikan. berhasil ditambahkan', '2025-06-26 16:43:02', 1);
INSERT INTO `log` VALUES (416, 'Tanggapan proses berhasil ditambahkan', '2025-06-26 16:43:15', 1);
INSERT INTO `log` VALUES (417, 'Tanggapan v berhasil ditambahkan', '2025-06-26 16:43:20', 1);
INSERT INTO `log` VALUES (418, 'Tanggapan remote oleh pak alfan berhasil ditambahkan', '2025-06-26 16:43:38', 1);
INSERT INTO `log` VALUES (419, 'Tanggapan dengan menggunakan command fsck -y /dev/nvme0n1p2 lalu reboot berhasil ditambahkan', '2025-06-26 16:44:12', 1);
INSERT INTO `log` VALUES (420, 'Pengaduan arus listrik mati kemudian sudah dinyalakan namun cr55 tidak mau hidup sudah mencoba untuk di restart cr55 berhasil ditambahkan', '2025-06-26 16:48:41', 1);
INSERT INTO `log` VALUES (421, 'Tanggapan proses berhasil ditambahkan', '2025-06-26 16:49:23', 1);
INSERT INTO `log` VALUES (422, 'Tanggapan v berhasil ditambahkan', '2025-06-26 16:49:28', 1);
INSERT INTO `log` VALUES (423, 'Tanggapan proses remote berhasil ditambahkan', '2025-06-26 16:49:38', 1);
INSERT INTO `log` VALUES (424, 'Tanggapan Shutdown dan pengecekan peripheral komputer\r\n\r\nStatus :\r\nDone berhasil ditambahkan', '2025-06-26 16:49:45', 1);
INSERT INTO `log` VALUES (425, 'Pengaduan tampilan layar cr55 pada saat dinyalakan seperti difoto berhasil ditambahkan', '2025-06-26 16:51:29', 1);
INSERT INTO `log` VALUES (426, 'Tanggapan proses berhasil ditambahkan', '2025-06-26 16:52:06', 1);
INSERT INTO `log` VALUES (427, 'Tanggapan v berhasil ditambahkan', '2025-06-26 16:52:13', 1);
INSERT INTO `log` VALUES (428, 'Tanggapan proses remote oleh pak alfan berhasil ditambahkan', '2025-06-26 16:52:26', 1);
INSERT INTO `log` VALUES (429, 'Tanggapan 1. Membersihkan SSD dengan penghapus\r\n2. Dibantu keuangan dan personal (gk tau namanya siapa) Makasihnya ke mas yg bantu smpean tadi ya berhasil ditambahkan', '2025-06-26 16:52:31', 1);
INSERT INTO `log` VALUES (430, 'Pengaduan jaringan tersambung tapi tidak ada internet berhasil ditambahkan', '2025-06-27 16:33:02', 1);
INSERT INTO `log` VALUES (431, 'Tanggapan proses berhasil ditambahkan', '2025-06-27 16:33:36', 1);
INSERT INTO `log` VALUES (432, 'Tanggapan v berhasil ditambahkan', '2025-06-27 16:33:40', 1);
INSERT INTO `log` VALUES (433, 'Tanggapan proses remot mas alfan berhasil ditambahkan', '2025-06-27 16:33:52', 1);
INSERT INTO `log` VALUES (434, 'Tanggapan 1. Pastikan Konektor LAN tertancap dan menyala kedip2\r\n2. Pastikan sudah melakukan login pada Mikrotik \r\n3. Restart komputer berhasil ditambahkan', '2025-06-27 16:34:03', 1);
INSERT INTO `log` VALUES (435, 'Jabatan Sdm Waroeng berhasil ditambahkan', '2025-06-27 16:35:59', 1);
INSERT INTO `log` VALUES (436, 'Jabatan Sdm Area berhasil ditambahkan', '2025-06-27 16:36:09', 1);
INSERT INTO `log` VALUES (437, 'Pengaduan internet kantor tiba2 tidak bisa/tidak ada koneksi.. penanganan sudah di coba di lakukan pencopotan kabel Len dan masukan kan lagi.. tapi tetap tidak bisa berhasil ditambahkan', '2025-06-27 16:37:46', 1);
INSERT INTO `log` VALUES (438, 'Kategori Ojol berhasil ditambahkan', '2025-06-27 16:40:32', 1);
INSERT INTO `log` VALUES (439, 'SubKategori Device berhasil ditambahkan', '2025-06-27 16:41:24', 1);
INSERT INTO `log` VALUES (440, 'Pengaduan notifikasi device shopee sering tidak keluar padahal aplikasi sering di refresh, jadi driver ojol sudah datang, tapi notifikasi belum ada berhasil ditambahkan', '2025-06-27 16:42:27', 1);
INSERT INTO `log` VALUES (441, 'Jabatan Kepala Cabang berhasil ditambahkan', '2025-06-27 16:43:49', 1);
INSERT INTO `log` VALUES (442, 'SubKategori Cctv berhasil ditambahkan', '2025-06-27 16:44:51', 1);
INSERT INTO `log` VALUES (443, 'Pengaduan CTV tidak bisa menyimpan file video berhasil ditambahkan', '2025-06-27 16:46:42', 1);
INSERT INTO `log` VALUES (444, 'Tanggapan proses berhasil ditambahkan', '2025-06-27 16:47:42', 1);
INSERT INTO `log` VALUES (445, 'Tanggapan v berhasil ditambahkan', '2025-06-27 16:47:46', 1);
INSERT INTO `log` VALUES (446, 'Tanggapan proses remote pak alfan berhasil ditambahkan', '2025-06-27 16:47:59', 1);
INSERT INTO `log` VALUES (447, 'Tanggapan 1. Pengecekan pada jalur jaringan Mikrotik ke Switch \r\n2. Ditemukan Konektor yg lepas\r\n3. Di tancapkan kembali konektornya, berhasil ditambahkan', '2025-06-27 16:48:05', 1);
INSERT INTO `log` VALUES (448, 'Pengaduan 1. CCTV di bagian kasiran &amp; parkiran (1) tidak bisa menyimpan file video \r\n2. lampu di CCTV nyala terus (cctv kantor &amp; cctv lorong) berhasil ditambahkan', '2025-06-27 16:49:54', 1);
INSERT INTO `log` VALUES (449, 'Pengaduan CCTV JAYENGAN DAN PARKIR KONSUMEN MATI berhasil ditambahkan', '2025-06-27 16:52:47', 1);
INSERT INTO `log` VALUES (450, 'Pengaduan kendala login  cctv dibatasi sehingga waroeng tidak bisa login ngak bisa ngecek berhasil ditambahkan', '2025-06-27 16:55:43', 1);
INSERT INTO `log` VALUES (451, 'Tanggapan prosaes berhasil ditambahkan', '2025-06-27 16:56:44', 1);
INSERT INTO `log` VALUES (452, 'Tanggapan v berhasil ditambahkan', '2025-06-27 16:56:49', 1);
INSERT INTO `log` VALUES (453, 'Tanggapan Rekomendasi tindakan Karantanyar :\r\n\r\nBahan :\r\n1. Barel RJ45\r\n2. Kabel RJ45 CAT 6 (secukupnya dari yg putus ke Kamera/ NVR)\r\n3. konektor RJ45 \r\n\r\nSilahkan di surveikan di toko komputer terdekat, kemudian diajukan menggunakan Plafon WR\r\n\r\nPengerjaan :\r\n1. Potong pada kabel yang rusak\r\n2. Ganti kabel yg lama dgn yg baru\r\n3. Sambungkan dgn Barel RJ45 berhasil ditambahkan', '2025-06-27 16:56:55', 1);
INSERT INTO `log` VALUES (454, 'Tanggapan proses berhasil ditambahkan', '2025-06-27 16:57:31', 1);
INSERT INTO `log` VALUES (455, 'Tanggapan v berhasil ditambahkan', '2025-06-27 16:57:36', 1);
INSERT INTO `log` VALUES (456, 'Tanggapan Rekomendasi tindakan Klodran :\r\n\r\nBahan :\r\n1. Barel RJ45\r\n2. Kabel RJ45 CAT 6 (jarak paling dekat dari yg putus ke Kamera atau NVR)\r\n3. konektor RJ45 \r\n\r\nSilahkan di surveikan di toko komputer terdekat, kemudian diajukan menggunakan Plafon WR\r\n\r\nPengerjaan :\r\n1. Potong pada kabel yang rusak\r\n2. Ganti kabel yg lama dgn yg baru\r\n3. Sambungkan dgn Barel RJ45 berhasil ditambahkan', '2025-06-27 16:57:40', 1);
INSERT INTO `log` VALUES (457, 'Waroeng Wss Gading Serpong berhasil ditambahkan', '2025-06-28 08:43:04', 1);
INSERT INTO `log` VALUES (458, 'Pengaduan Tarikan si pedas pilih transaksi tidak muncul berhasil ditambahkan', '2025-06-28 08:44:01', 1);
INSERT INTO `log` VALUES (459, 'Pengaduan ketika mau melakukan pembayaran tetapi tidak berhasil berhasil ditambahkan', '2025-06-28 08:46:19', 1);
INSERT INTO `log` VALUES (460, 'Waroeng Wss Greenville berhasil ditambahkan', '2025-06-28 08:49:01', 1);
INSERT INTO `log` VALUES (461, 'Pengaduan Semua Internet Atas Bawah Tidak Bisa Koneksi Wifi,Sehingga Device Ojol dan Komputer Kantor Tidak bisa Buka Internet (Odoo) berhasil ditambahkan', '2025-06-28 08:50:14', 1);
INSERT INTO `log` VALUES (462, 'Pengaduan 1. Wifi yang ke-2 bagian depan tidak bisa terkoneksi ke HP ojol berhasil ditambahkan', '2025-06-28 09:04:44', 1);
INSERT INTO `log` VALUES (463, 'Pengaduan Wifi nya mati. berhasil ditambahkan', '2025-06-28 09:06:46', 1);
INSERT INTO `log` VALUES (464, 'Pengaduan CCTV tidak bisa di akses ( dari 14 titik, hanya 7 titik yang bisa di akses) berhasil ditambahkan', '2025-06-28 09:07:54', 1);
INSERT INTO `log` VALUES (465, 'Petugas Jamhuri berhasil ditambahkan', '2025-06-28 09:40:58', 1);
INSERT INTO `log` VALUES (466, 'Tanggapan proses berhasil ditambahkan', '2025-06-28 09:41:29', 1);
INSERT INTO `log` VALUES (467, 'Tanggapan v berhasil ditambahkan', '2025-06-28 09:41:39', 1);
INSERT INTO `log` VALUES (468, 'Tanggapan sedang dalam proses pak jamhuri berhasil ditambahkan', '2025-06-28 09:42:08', 1);
INSERT INTO `log` VALUES (469, 'Tanggapan Proses berhasil ditambahkan', '2025-06-28 09:45:21', 1);
INSERT INTO `log` VALUES (470, 'Tanggapan Asisten produksi tidak bisa bantu,\r\n\r\nkordinator kasir tidak bisa ditelpon \r\n\r\nAsisten OPP tidak bisa ditelpon berhasil ditambahkan', '2025-06-28 09:45:59', 1);
INSERT INTO `log` VALUES (471, 'Tanggapan proses berhasil ditambahkan', '2025-06-28 09:53:53', 1);
INSERT INTO `log` VALUES (472, 'Tanggapan v berhasil ditambahkan', '2025-06-28 09:53:58', 1);
INSERT INTO `log` VALUES (473, 'Tanggapan 1. Pastikan device tersambung dengan internet \r\n2. Pastikan settingan notifikasi android di aplikasi shopee menyala\r\n3. Pastikan aplikasi shopee berjalan pada background\r\n4. Lakukan ujicoba notifikasi pada aplikasi shopee secara berkala berhasil ditambahkan', '2025-06-28 09:54:09', 1);
INSERT INTO `log` VALUES (474, 'Tanggapan Tahap pengecekan :\r\n1. Pastikan device tersambung dengan internet \r\n2. Pastikan settingan notifikasi android di aplikasi shopee menyala\r\n3. Pastikan aplikasi shopee berjalan pada background\r\n4. Lakukan ujicoba notifikasi pada aplikasi shopee secara berkala\r\n\r\nUji coba berjalan 1,2,4\r\nstatus : clear berhasil ditambahkan', '2025-06-28 09:55:42', 1);
INSERT INTO `log` VALUES (475, 'Tanggapan proses berhasil ditambahkan', '2025-06-28 09:57:24', 1);
INSERT INTO `log` VALUES (476, 'Tanggapan v berhasil ditambahkan', '2025-06-28 09:57:28', 1);
INSERT INTO `log` VALUES (477, 'Tanggapan sedang bantu cek oleh mas @Pak Ihsanuddin SS IT Pusat berhasil ditambahkan', '2025-06-28 09:57:48', 1);
INSERT INTO `log` VALUES (478, 'Pengaduan 2. Ruter Wifi nya mati. berhasil ditambahkan', '2025-06-28 14:36:25', 1);
INSERT INTO `log` VALUES (479, 'Pengaduan selamat sore bapak/ibu\r\nmohon maaf ijin menyampaikan kendala jakal km 12, saldo awal dari buku kas sipedas dan buku kas file keuangan berbeda nggih, ada selisih Rp. 28.000 berhasil ditambahkan', '2025-06-28 14:39:36', 1);
INSERT INTO `log` VALUES (480, 'Tanggapan proses berhasil ditambahkan', '2025-06-28 14:40:10', 1);
INSERT INTO `log` VALUES (481, 'Tanggapan v berhasil ditambahkan', '2025-06-28 14:40:15', 1);
INSERT INTO `log` VALUES (482, 'Tanggapan sedang di cek oleh pak rendy berhasil ditambahkan', '2025-06-28 14:40:32', 1);
INSERT INTO `log` VALUES (483, 'Tanggapan proses berhasil ditambahkan', '2025-07-08 13:51:05', 1);
INSERT INTO `log` VALUES (484, 'Tanggapan v berhasil ditambahkan', '2025-07-08 13:51:09', 1);
INSERT INTO `log` VALUES (485, 'Tanggapan dipsandu oleh pak jamhuri berhasil ditambahkan', '2025-07-08 13:51:27', 1);
INSERT INTO `log` VALUES (486, 'Tanggapan sudah di pandu oleh IT Area berhasil ditambahkan', '2025-07-08 13:51:56', 1);
INSERT INTO `log` VALUES (487, 'Tanggapan p berhasil ditambahkan', '2025-07-09 09:49:46', 1);
INSERT INTO `log` VALUES (488, 'Tanggapan v berhasil ditambahkan', '2025-07-09 09:49:51', 1);
INSERT INTO `log` VALUES (489, 'Tanggapan sedang di bantu pak ihsan berhasil ditambahkan', '2025-07-09 09:50:04', 1);
INSERT INTO `log` VALUES (490, 'Tanggapan dibantu tim software berhasil ditambahkan', '2025-07-09 09:50:18', 1);
INSERT INTO `log` VALUES (491, 'Pengaduan Semua Internet Atas Bawah Tidak Bisa Koneksi Wifi,Sehingga Device Ojol dan Komputer Kantor Tidak bisa Buka Internet (Odoo) berhasil ditambahkan', '2025-07-09 10:12:23', 1);
INSERT INTO `log` VALUES (492, 'Pengaduan Semua Internet Atas Bawah Tidak Bisa Koneksi Wifi,Sehingga Device Ojol dan Komputer Kantor Tidak bisa Buka Internet (Odoo) berhasil dihapus', '2025-07-09 10:12:50', 1);
INSERT INTO `log` VALUES (493, 'Pengaduan Semua Internet Atas Bawah Tidak Bisa Koneksi Wifi,Sehingga Device Ojol dan Komputer Kantor Tidak bisa Buka Internet (Odoo) berhasil ditambahkan', '2025-07-09 10:13:39', 1);
INSERT INTO `log` VALUES (494, 'Tanggapan proses berhasil ditambahkan', '2025-07-09 10:15:09', 1);
INSERT INTO `log` VALUES (495, 'Tanggapan v berhasil ditambahkan', '2025-07-09 10:15:14', 1);
INSERT INTO `log` VALUES (496, 'Tanggapan sedang di pandu it area berhasil ditambahkan', '2025-07-09 10:15:27', 1);
INSERT INTO `log` VALUES (497, 'Tanggapan 1. Indibiz Los - Teknisi Indihome melakukan perbaikan \r\n2. Teknisi Indibiz memindahkan jaringan PC Keu langsung di modem Indibiz sehingga tidak bisa akses sipedas.wss\r\n3. IT pusat melakukan pemindahan jaringan di bawah jaringan Mikrotik \r\n4. Done berhasil ditambahkan', '2025-07-09 10:15:32', 1);
INSERT INTO `log` VALUES (498, 'Pengaduan wifi nyala tapi tdk ada koneksi internet berhasil ditambahkan', '2025-07-09 10:19:30', 1);
INSERT INTO `log` VALUES (499, 'Tanggapan proses berhasil ditambahkan', '2025-07-09 10:20:06', 1);
INSERT INTO `log` VALUES (500, 'Tanggapan v berhasil ditambahkan', '2025-07-09 10:20:11', 1);
INSERT INTO `log` VALUES (501, 'Tanggapan sedang dalam remote oleh pak alfan berhasil ditambahkan', '2025-07-09 10:20:29', 1);
INSERT INTO `log` VALUES (502, 'Tanggapan dilaporkan ke telkom karena internet loss berhasil ditambahkan', '2025-07-09 10:21:00', 1);
INSERT INTO `log` VALUES (503, 'Tanggapan proses berhasil ditambahkan', '2025-07-09 13:28:25', 1);
INSERT INTO `log` VALUES (504, 'Tanggapan v berhasil ditambahkan', '2025-07-09 13:28:31', 1);
INSERT INTO `log` VALUES (505, 'Tanggapan sedang dilakukan remote IT area berhasil ditambahkan', '2025-07-09 13:29:00', 1);
INSERT INTO `log` VALUES (506, 'Tanggapan sudah dibantu IT area berhasil ditambahkan', '2025-07-09 13:29:26', 1);
INSERT INTO `log` VALUES (507, 'SubKategori Absensi Sipedass berhasil ditambahkan', '2025-07-09 13:32:08', 1);
INSERT INTO `log` VALUES (508, 'Pengaduan tidak bisa finger istrahat ataupun pulang berhasil ditambahkan', '2025-07-09 13:34:42', 1);
INSERT INTO `log` VALUES (509, 'Pengaduan CCTV offline dan tidak bisa login berhasil ditambahkan', '2025-07-14 08:55:30', 1);
INSERT INTO `log` VALUES (510, 'Waroeng Wss Bsd berhasil ditambahkan', '2025-07-14 09:12:43', 1);
INSERT INTO `log` VALUES (511, 'Waroeng Wss Bsd berhasil diubah', '2025-07-14 09:13:47', 1);
INSERT INTO `log` VALUES (512, 'Waroeng Wss Bsd berhasil diubah', '2025-07-14 09:13:59', 1);
INSERT INTO `log` VALUES (513, 'Waroeng Wss Bsd berhasil dihapus', '2025-07-14 09:14:08', 1);
INSERT INTO `log` VALUES (514, 'Waroeng Wss Bsd berhasil ditambahkan', '2025-07-14 09:14:18', 1);
INSERT INTO `log` VALUES (515, 'Waroeng Wss Bsd berhasil diubah', '2025-07-14 09:14:39', 1);
INSERT INTO `log` VALUES (516, 'Waroeng Wss Bsd berhasil dihapus', '2025-07-14 09:14:49', 1);
INSERT INTO `log` VALUES (517, 'Waroeng Wss Bsd berhasil ditambahkan', '2025-07-14 09:15:54', 1);
INSERT INTO `log` VALUES (518, 'Waroeng Wss Bsd berhasil diubah', '2025-07-14 09:16:15', 1);
INSERT INTO `log` VALUES (519, 'Tanggapan PROSES berhasil ditambahkan', '2025-07-14 09:16:51', 1);
INSERT INTO `log` VALUES (520, 'Tanggapan V berhasil ditambahkan', '2025-07-14 09:17:03', 1);
INSERT INTO `log` VALUES (521, 'Tanggapan 1. Restart POE\r\n2. Copot kabel power lalu colokan lagi\r\n3. Dibantu pak @Pak Alfan SS IT Malang \r\n3. Done ✅ berhasil ditambahkan', '2025-07-14 09:17:34', 1);
INSERT INTO `log` VALUES (522, 'Tanggapan 1. Restart POE\r\n2. Copot kabel power lalu colokan lagi\r\n3. Dibantu pak @Pak Alfan SS IT Malang \r\n3. Done ✅ berhasil ditambahkan', '2025-07-14 09:19:02', 1);
INSERT INTO `log` VALUES (523, 'Pengaduan 1. Printer kasir tidak konek, sudah dicoba ganti kabel dan pinjam printer ojol tetap tidak bisa konek. berhasil ditambahkan', '2025-07-14 09:25:14', 1);
INSERT INTO `log` VALUES (524, 'Pengaduan CCTV kantor lampu sensor terus menyala berhasil ditambahkan', '2025-07-14 09:30:32', 1);
INSERT INTO `log` VALUES (525, 'Pengaduan Diskripsi jelas kendala  :\r\n1.CCTV tidak bisa menyimpan rekaman video\r\n2.CcTV no 7 kabel putus berhasil ditambahkan', '2025-07-14 09:34:12', 1);
INSERT INTO `log` VALUES (526, 'Tanggapan 1. Untuk HDD yg tidak bisa menyimpan,\r\nCobak lakukan reset pada HDD terlebih dahulu, kira2 apakah bisa melakukan Ndan?\r\n\r\nLalu apabila tidak bisa, fix perlu penggantian HDD baru 2TB (Pengajuan bisa di titipkan SDM Area)\r\n2. Bantu Fotokan Ndan, apabila memungkinkan, bisa menanyakan stok Kabel LAN yg ada di Area. Apabila ada bisa di minta untuk dilakukan penarikan kabel secara mandiri. berhasil ditambahkan', '2025-07-14 09:35:39', 1);
INSERT INTO `log` VALUES (527, 'Tanggapan 1. Untuk HDD yg tidak bisa menyimpan,\r\nCobak lakukan reset pada HDD terlebih dahulu, kira2 apakah bisa melakukan Ndan?\r\n\r\nLalu apabila tidak bisa, fix perlu penggantian HDD baru 2TB (Pengajuan bisa di titipkan SDM Area)\r\n2. Bantu Fotokan Ndan, apabila memungkinkan, bisa menanyakan stok Kabel LAN yg ada di Area. Apabila ada bisa di minta untuk dilakukan penarikan kabel secara mandiri.\r\n\r\n1. Sudah di restat tapi belum bisa menyimpan  akan saya restat lagi\r\n2. Kabel LAN sudah ada pak tinggal pemasangan saja yg tidak bisa menambahkan ke daftar cctv berhasil diubah', '2025-07-14 09:36:25', 1);
INSERT INTO `log` VALUES (528, 'Tanggapan CCTVnya disambungkan di PoE berhasil ditambahkan', '2025-07-14 09:37:26', 1);
INSERT INTO `log` VALUES (529, 'Tanggapan VALID berhasil ditambahkan', '2025-07-14 09:38:13', 1);
INSERT INTO `log` VALUES (530, 'Tanggapan Selesai berhasil ditambahkan', '2025-07-14 09:38:39', 1);
INSERT INTO `log` VALUES (531, 'SubKategori Aplikasi berhasil ditambahkan', '2025-07-14 09:43:31', 1);
INSERT INTO `log` VALUES (532, 'Pengaduan Download file masuknya ke Microsoft office jadinya tidak bisa nyimpan ke file berhasil ditambahkan', '2025-07-14 09:45:46', 1);
INSERT INTO `log` VALUES (533, 'Tanggapan WPS tidak terpakai di uninstall berhasil ditambahkan', '2025-07-14 09:47:18', 1);
INSERT INTO `log` VALUES (534, 'Tanggapan Valid berhasil ditambahkan', '2025-07-14 09:47:37', 1);
INSERT INTO `log` VALUES (535, 'Tanggapan Done berhasil ditambahkan', '2025-07-14 09:47:53', 1);
INSERT INTO `log` VALUES (536, 'Tanggapan Done berhasil ditambahkan', '2025-07-14 09:48:19', 1);
INSERT INTO `log` VALUES (537, 'Pengaduan 1.CCTV Produksi mantim tidak menyala / Offline berhasil ditambahkan', '2025-07-14 09:53:00', 1);
INSERT INTO `log` VALUES (538, 'Tanggapan Cek Konektor LAN dan kabel LAN pada PoE Menuju kamera berhasil ditambahkan', '2025-07-14 09:54:12', 1);
INSERT INTO `log` VALUES (539, 'Tanggapan Valid berhasil ditambahkan', '2025-07-14 09:54:57', 1);
INSERT INTO `log` VALUES (540, 'Tanggapan Sedang dalam pengerjaan berhasil ditambahkan', '2025-07-14 09:56:01', 1);
INSERT INTO `log` VALUES (541, 'Tanggapan Selesai berhasil ditambahkan', '2025-07-14 09:56:16', 1);
INSERT INTO `log` VALUES (542, 'Tanggapan 1. Untuk HDD yg tidak bisa menyimpan, Cobak lakukan reset pada HDD terlebih dahulu, kira2 apakah bisa melakukan Ndan? Lalu apabila tidak bisa, fix perlu penggantian HDD baru 2TB (Pengajuan bisa di titipkan SDM Area) 2. Bantu Fotokan Ndan, apabila memungkinkan, bisa menanyakan stok Kabel LAN yg ada di Area. Apabila ada bisa di minta untuk dilakukan penarikan kabel secara mandiri. 1. Sudah di restat tapi belum bisa menyimpan akan saya restat lagi 2. Kabel LAN sudah ada pak tinggal pemasangan saja yg tidak bisa menambahkan ke daftar cctv berhasil diubah', '2025-07-14 09:57:42', 1);
INSERT INTO `log` VALUES (543, 'Tanggapan Sedang dalam proses berhasil diubah', '2025-07-14 09:58:25', 1);
INSERT INTO `log` VALUES (544, 'Tanggapan WPS tidak terpakai di uninstall berhasil diubah', '2025-07-14 09:58:40', 1);
INSERT INTO `log` VALUES (545, 'Tanggapan Pengecekan Konektor LAN dan kabel LAN pada PoE Menuju kamera berhasil diubah', '2025-07-14 09:59:33', 1);
INSERT INTO `log` VALUES (546, 'Pengaduan Wifi lantai 1 tidak connect internet nya keterangan &quot;terhubung/tidak aman&quot; untuk lantai 2 /kantor aman seperti biasa nya berhasil ditambahkan', '2025-07-14 10:03:35', 1);
INSERT INTO `log` VALUES (547, 'Tanggapan Proses berhasil ditambahkan', '2025-07-14 10:05:35', 1);
INSERT INTO `log` VALUES (548, 'Tanggapan Valid berhasil ditambahkan', '2025-07-14 10:05:51', 1);
INSERT INTO `log` VALUES (549, 'Tanggapan Di pandu tim it area berhasil ditambahkan', '2025-07-14 10:06:36', 1);
INSERT INTO `log` VALUES (550, 'Tanggapan Di pandu tim it area berhasil diubah', '2025-07-14 10:06:48', 1);
INSERT INTO `log` VALUES (551, 'Tanggapan Penindaklanjutan oleh Jamhuri berhasil ditambahkan', '2025-07-14 10:07:56', 1);
INSERT INTO `log` VALUES (552, 'Pengaduan Tidak bisa presensi pulang (Gagal terhubung ke server) berhasil ditambahkan', '2025-07-14 10:11:13', 1);
INSERT INTO `log` VALUES (553, 'Tanggapan Prsens dilakuka dengan rekap manual. berhasil ditambahkan', '2025-07-14 10:12:54', 1);
INSERT INTO `log` VALUES (554, 'Tanggapan Prsens dilakukan dengan rekap manual. berhasil diubah', '2025-07-14 10:13:03', 1);
INSERT INTO `log` VALUES (555, 'Tanggapan Valid berhasil ditambahkan', '2025-07-14 10:13:14', 1);
INSERT INTO `log` VALUES (556, 'Tanggapan Arahan untuk screenshoot dikirim melalui grou berhasil ditambahkan', '2025-07-14 10:13:52', 1);
INSERT INTO `log` VALUES (557, 'Tanggapan Arahan untuk screenshoot dikirim melalui group berhasil diubah', '2025-07-14 10:13:58', 1);
INSERT INTO `log` VALUES (558, 'Tanggapan Untuk presensi pulang, silahkan lakukan Screenshot pada aplikasi dan kirim ke group wr untuk di rekap manual. \r\n\r\nSaat ini sedang proses perbaikan server. berhasil ditambahkan', '2025-07-14 10:14:09', 1);
INSERT INTO `log` VALUES (559, 'Waroeng Wss Ahmad Yani berhasil ditambahkan', '2025-07-14 10:15:55', 1);
INSERT INTO `log` VALUES (560, 'Pengaduan Tidak bisa presensi pulang (Gagal terhubung ke server) berhasil ditambahkan', '2025-07-14 10:17:38', 1);
INSERT INTO `log` VALUES (561, 'Tanggapan Prsensi dilakukan dengan rekap manual. berhasil diubah', '2025-07-14 10:18:06', 1);
INSERT INTO `log` VALUES (562, 'Tanggapan Prsensi dilakukan dengan rekap manual. berhasil ditambahkan', '2025-07-14 10:18:37', 1);
INSERT INTO `log` VALUES (563, 'Tanggapan Valid berhasil ditambahkan', '2025-07-14 10:18:45', 1);
INSERT INTO `log` VALUES (564, 'Tanggapan Prsensi dilakukan dengan rArahan untuk screenshoot dikirim melalui groupekap manual. berhasil ditambahkan', '2025-07-14 10:18:56', 1);
INSERT INTO `log` VALUES (565, 'Tanggapan Prsensi dilakukan dengan arahan untuk screenshoot dikirim melalui group rekap akan dilakukan secara manual. berhasil diubah', '2025-07-14 10:19:26', 1);
INSERT INTO `log` VALUES (566, 'Tanggapan Untuk presensi pulang, silahkan lakukan Screenshot pada aplikasi dan kirim ke group wr untuk di rekap manual. Saat ini sedang proses perbaikan server. berhasil ditambahkan', '2025-07-14 10:19:45', 1);
INSERT INTO `log` VALUES (567, 'Tanggapan Untuk presensi pulang, silahkan lakukan Screenshot pada aplikasi dan kirim ke group wr untuk di rekap manual. Saat ini sedang proses perbaikan server. dengan status Proses berhasil dihapus', '2025-07-14 10:19:57', 1);
INSERT INTO `log` VALUES (568, 'Tanggapan Prsensi dilakukan dengan arahan untuk screenshoot dikirim melalui group rekap akan dilakukan secara manual. dengan status Pengerjaan berhasil dihapus', '2025-07-14 10:20:11', 1);
INSERT INTO `log` VALUES (569, 'Tanggapan Valid dengan status Valid berhasil dihapus', '2025-07-14 10:20:15', 1);
INSERT INTO `log` VALUES (570, 'Tanggapan Valid berhasil ditambahkan', '2025-07-14 10:20:24', 1);
INSERT INTO `log` VALUES (571, 'Tanggapan Presensi dilakukan dengan arahan untuk screenshoot dikirim melalui group rekap akan dilakukan secara manual. berhasil ditambahkan', '2025-07-14 10:20:43', 1);
INSERT INTO `log` VALUES (572, 'Tanggapan Untuk presensi pulang, silahkan lakukan Screenshot pada aplikasi dan kirim ke group wr untuk di rekap manual. Saat ini sedang proses perbaikan server. berhasil ditambahkan', '2025-07-14 10:20:55', 1);
INSERT INTO `log` VALUES (573, 'Tanggapan Presensi dilakukan dengan arahan untuk screenshoot dikirim melalui group rekap akan dilakukan secara manual. berhasil diubah', '2025-07-14 10:21:29', 1);
INSERT INTO `log` VALUES (574, 'Tanggapan Presensi dilakukan dengan arahan untuk screenshoot dikirim melalui group rekap akan dilakukan secara manual. berhasil diubah', '2025-07-14 10:21:39', 1);
INSERT INTO `log` VALUES (575, 'Tanggapan Untuk presensi pulang, silahkan lakukan Screenshot pada aplikasi dan kirim ke group wr untuk di rekap manual. \r\n\r\nSaat ini sedang proses perbaikan server. dengan status Proses berhasil dihapus', '2025-07-14 10:21:47', 1);
INSERT INTO `log` VALUES (576, 'Tanggapan Arahan untuk screenshoot dikirim melalui group dengan status Pengerjaan berhasil dihapus', '2025-07-14 10:21:50', 1);
INSERT INTO `log` VALUES (577, 'Tanggapan Arahan untuk screenshoot dikirim melalui group wr berhasil ditambahkan', '2025-07-14 10:22:26', 1);
INSERT INTO `log` VALUES (578, 'Tanggapan Untuk presensi pulang, silahkan lakukan Screenshot pada aplikasi dan kirim ke group wr untuk di rekap manual. Saat ini sedang proses perbaikan server. berhasil ditambahkan', '2025-07-14 10:22:42', 1);
INSERT INTO `log` VALUES (579, 'Tanggapan Untuk presensi pulang, silahkan lakukan Screenshot pada aplikasi dan kirim ke group wr untuk di rekap manual. Saat ini sedang proses perbaikan server. dengan status Proses berhasil dihapus', '2025-07-14 10:22:53', 1);
INSERT INTO `log` VALUES (580, 'Tanggapan Arahan untuk screenshoot dikirim melalui group wr dengan status Pengerjaan berhasil dihapus', '2025-07-14 10:22:56', 1);
INSERT INTO `log` VALUES (581, 'Tanggapan Arahan untuk screenshoot dikirim melalui group wr berhasil ditambahkan', '2025-07-14 10:23:03', 1);
INSERT INTO `log` VALUES (582, 'Tanggapan Untuk presensi pulang, silahkan lakukan Screenshot pada aplikasi dan kirim ke group wr untuk di rekap manual. Saat ini sedang proses perbaikan server. berhasil ditambahkan', '2025-07-14 10:23:23', 1);
INSERT INTO `log` VALUES (583, 'Pengaduan Cctv tidak bisa diakses berhasil ditambahkan', '2025-07-14 10:27:27', 1);
INSERT INTO `log` VALUES (584, 'Pengaduan PC Kacab tidak bisa menyala paska lampu mati berhasil ditambahkan', '2025-07-14 10:30:50', 1);
INSERT INTO `log` VALUES (585, 'Tanggapan Setting NVR berhasil ditambahkan', '2025-07-14 10:32:11', 1);
INSERT INTO `log` VALUES (586, 'Tanggapan Valid berhasil ditambahkan', '2025-07-14 10:32:20', 1);
INSERT INTO `log` VALUES (587, 'Tanggapan Instal aplikasi SADP Tools di Windows di jaringan yg sama dengan NVR, \r\nuntuk cek masing2 kamera. berhasil ditambahkan', '2025-07-14 10:32:37', 1);
INSERT INTO `log` VALUES (588, 'Tanggapan NVR tidak terdeteksi di jaringan,\r\nCobak pastikan Kabel LAN NVR berhasil ditambahkan', '2025-07-14 10:34:22', 1);
INSERT INTO `log` VALUES (589, 'Tanggapan Valid berhasil ditambahkan', '2025-07-14 10:34:52', 1);
INSERT INTO `log` VALUES (590, 'Tanggapan Tukar dengan kabel Uplink biru, lalu tembak IP di chorme 192.168.1.45 berhasil ditambahkan', '2025-07-14 10:36:17', 1);
INSERT INTO `log` VALUES (591, 'Tanggapan Tukar dengan kabel Uplink biru, lalu tembak IP di chorme 192.168.1.45 berhasil ditambahkan', '2025-07-14 10:36:59', 1);
INSERT INTO `log` VALUES (592, 'Tanggapan Setting NVR berhasil ditambahkan', '2025-07-14 10:44:25', 1);
INSERT INTO `log` VALUES (593, 'Tanggapan Valid berhasil ditambahkan', '2025-07-14 10:44:31', 1);
INSERT INTO `log` VALUES (594, 'Tanggapan Instal aplikasi SADP Tools di Windows di jaringan yg sama dengan NVR, untuk cek masing2 kamera.v berhasil ditambahkan', '2025-07-14 10:44:45', 1);
INSERT INTO `log` VALUES (595, 'Tanggapan Instal aplikasi SADP Tools di Windows di jaringan yg sama dengan NVR, untuk cek masing2 kamera. berhasil diubah', '2025-07-14 10:44:59', 1);
INSERT INTO `log` VALUES (596, 'Tanggapan NVR tidak terdeteksi di jaringan, Cobak pastikan Kabel LAN NVR,\r\nTukar dengan kabel Uplink biru, lalu tembak IP di chorme 192.168.1.45 berhasil ditambahkan', '2025-07-14 10:46:17', 1);
INSERT INTO `log` VALUES (597, 'Tanggapan Tukar dengan kabel Uplink biru, lalu tembak IP di chorme 192.168.1.45 dengan status Selesai berhasil dihapus', '2025-07-14 10:46:53', 1);
INSERT INTO `log` VALUES (598, 'Tanggapan Tukar dengan kabel Uplink biru, lalu tembak IP di chorme 192.168.1.45 dengan status Pengerjaan berhasil dihapus', '2025-07-14 10:46:56', 1);
INSERT INTO `log` VALUES (599, 'Tanggapan Valid dengan status Valid berhasil dihapus', '2025-07-14 10:46:58', 1);
INSERT INTO `log` VALUES (600, 'Tanggapan NVR tidak terdeteksi di jaringan,\r\nCobak pastikan Kabel LAN NVR dengan status Proses berhasil dihapus', '2025-07-14 10:47:00', 1);
INSERT INTO `log` VALUES (601, 'Tanggapan Instal aplikasi SADP Tools di Windows di jaringan yg sama dengan NVR, \r\nuntuk cek masing2 kamera. dengan status Pengerjaan berhasil dihapus', '2025-07-14 10:47:03', 1);
INSERT INTO `log` VALUES (602, 'Tanggapan Valid dengan status Valid berhasil dihapus', '2025-07-14 10:47:07', 1);
INSERT INTO `log` VALUES (603, 'Tanggapan Setting NVR dengan status Proses berhasil dihapus', '2025-07-14 10:47:10', 1);
INSERT INTO `log` VALUES (604, 'Tanggapan Arahan dilakukan melalui VC WhatsApp berhasil ditambahkan', '2025-07-14 10:49:20', 1);
INSERT INTO `log` VALUES (605, 'Pengaduan PC Kacab tidak bisa menyala paska lampu mati berhasil dihapus', '2025-07-14 10:50:14', 1);
INSERT INTO `log` VALUES (606, 'Pengaduan PC Kacab tidak bisa menyala paska lampu mati berhasil ditambahkan', '2025-07-14 10:53:05', 1);
INSERT INTO `log` VALUES (607, 'Tanggapan PC tidak mau menyala pasca listrik padam berhasil ditambahkan', '2025-07-14 10:54:09', 1);
INSERT INTO `log` VALUES (608, 'Tanggapan Valid berhasil ditambahkan', '2025-07-14 10:54:18', 1);
INSERT INTO `log` VALUES (609, 'Tanggapan Dilakukan melalui VC via WhatsApp berhasil ditambahkan', '2025-07-14 10:54:48', 1);
INSERT INTO `log` VALUES (610, 'Tanggapan Penyelesaian dilakukan melalui VC via WhatsApp berhasil ditambahkan', '2025-07-14 10:55:16', 1);
INSERT INTO `log` VALUES (611, 'Pengaduan CCTV Offline berhasil ditambahkan', '2025-07-14 10:59:27', 1);
INSERT INTO `log` VALUES (612, 'Tanggapan Pengecekan indikator yang berkedip berhasil ditambahkan', '2025-07-14 11:00:20', 1);
INSERT INTO `log` VALUES (613, 'Tanggapan Valid berhasil ditambahkan', '2025-07-14 11:00:30', 1);
INSERT INTO `log` VALUES (614, 'Tanggapan Pengecekan POE indikator kedip2 apa tidak, dan pengecekan sudah berkedip dan sudah tidak ada kendala berhasil ditambahkan', '2025-07-14 11:01:32', 1);
INSERT INTO `log` VALUES (615, 'Tanggapan Pengecekan POE indikator kedip2 apa tidak, dan pengecekan sudah berkedip dan sudah tidak ada kendala berhasil ditambahkan', '2025-07-14 11:01:43', 1);
INSERT INTO `log` VALUES (616, 'Tanggapan Pengecekan POE indikator kedip2 apa tidak, dan pengecekan sudah berkedip dan sudah tidak ada kendala dengan status Proses berhasil dihapus', '2025-07-14 11:01:59', 1);
INSERT INTO `log` VALUES (617, 'Tanggapan Pengecekan POE indikator kedip2 apa tidak, dan pengecekan sudah berkedip dan sudah tidak ada kendala dengan status Pengerjaan berhasil dihapus', '2025-07-14 11:02:07', 1);
INSERT INTO `log` VALUES (618, 'Tanggapan Pengecekan POE indikator kedip2 apa tidak, dan pengecekan sudah berkedip dan sudah dipastikan tidak ada kendala berhasil ditambahkan', '2025-07-14 11:02:22', 1);
INSERT INTO `log` VALUES (619, 'Tanggapan Pengecekan POE indikator kedip2 apa tidak, dan pengecekan sudah berkedip dan sudah dipastikan tidak ada kendala, masalah terselesaikan berhasil ditambahkan', '2025-07-14 11:02:41', 1);
INSERT INTO `log` VALUES (620, 'Tanggapan Pengecekan indikator yang berkedip di eksekusi oleh Ismail SS IT Semarang berhasil diubah', '2025-07-14 11:03:13', 1);
INSERT INTO `log` VALUES (621, 'Tanggapan Pengecekan POE indikator kedip2 apa tidak, dan pengecekan sudah berkedip dan sudah dipastikan tidak ada kendala, masalah terselesaikan dengan status Proses berhasil dihapus', '2025-07-14 11:03:28', 1);
INSERT INTO `log` VALUES (622, 'Tanggapan Pengecekan POE indikator kedip2 apa tidak, dan pengecekan sudah berkedip dan sudah dipastikan tidak ada kendala dengan status Pengerjaan berhasil dihapus', '2025-07-14 11:03:31', 1);
INSERT INTO `log` VALUES (623, 'Tanggapan Pengecekan POE indikator kedip2 apa tidak, dan pengecekan sudah berkedip dan sudah dipastikan tidak ada kendala berhasil ditambahkan', '2025-07-14 11:03:40', 1);
INSERT INTO `log` VALUES (624, 'Tanggapan Pengecekan POE indikator kedip2 apa tidak, dan pengecekan sudah berkedip dan sudah dipastikan tidak ada kendala, masalah terselesaikan berhasil ditambahkan', '2025-07-14 11:03:51', 1);
INSERT INTO `log` VALUES (625, 'Tanggapan Pengecekan POE indikator kedip2 apa tidak, dan pengecekan sudah berkedip dan sudah dipastikan tidak ada kendala, masalah terselesaikan dengan status Proses berhasil dihapus', '2025-07-14 11:03:55', 1);
INSERT INTO `log` VALUES (626, 'Tanggapan Pengecekan POE indikator kedip2 apa tidak, dan pengecekan sudah berkedip dan sudah dipastikan tidak ada kendala dengan status Pengerjaan berhasil dihapus', '2025-07-14 11:03:58', 1);
INSERT INTO `log` VALUES (627, 'Tanggapan Pengecekan POE indikator kedip2 apa tidak, dan pengecekan sudah berkedip dan sudah dipastikan tidak ada kendala berhasil ditambahkan', '2025-07-14 11:04:04', 1);
INSERT INTO `log` VALUES (628, 'Tanggapan Pengecekan POE indikator kedip2 apa tidak, dan pengecekan sudah berkedip dan sudah dipastikan tidak ada kendala, masalah terselesaikan berhasil ditambahkan', '2025-07-14 11:04:13', 1);
INSERT INTO `log` VALUES (629, 'Pengaduan 1. Salah satu cctv tidak bisa \r\n2. Sudah ganti cctv lain tetap \r\n3. Sudah ganti sambungan tetap tidak bisa berhasil ditambahkan', '2025-07-14 11:09:21', 1);
INSERT INTO `log` VALUES (630, 'Tanggapan Pengecekan kondisi konektornya di kamera dan PoE berhasil ditambahkan', '2025-07-14 11:11:01', 1);
INSERT INTO `log` VALUES (631, 'Tanggapan Valid berhasil ditambahkan', '2025-07-14 11:11:07', 1);
INSERT INTO `log` VALUES (632, 'Tanggapan Pengecekan kabel untuk memastikan ada atau tidaknya korosi pada konektrnya kemudian memberikan arahan untuk mencopot Camera dari tempat asal, kemudian camera dicobak pake kabel pendek ke PoE berhasil ditambahkan', '2025-07-14 11:14:14', 1);
INSERT INTO `log` VALUES (633, 'Tanggapan Pengecekan Camera dan menopot dari tempat asal, kemudian camera dicobak pake kabel pendek ke PoE dan dilakukan arahan melalui VC via WhatsApp berhasil ditambahkan', '2025-07-14 11:15:28', 1);
INSERT INTO `log` VALUES (634, 'Pengaduan 1. Aplikasi gojek tidak bisa print \r\n2. Aplikasi Shopee dan grab lancar berhasil ditambahkan', '2025-07-14 11:23:28', 1);
INSERT INTO `log` VALUES (635, 'Tanggapan 1. Sambungkan printer dulu sebelum mencetak\r\n2. Jalankan Aplikasi di background, jgn di close aplikasinya berhasil ditambahkan', '2025-07-14 11:23:55', 1);
INSERT INTO `log` VALUES (636, 'Tanggapan Valid berhasil ditambahkan', '2025-07-14 11:24:02', 1);
INSERT INTO `log` VALUES (637, 'Tanggapan Silahkan Hapus data aplikasi, lalu cobak login lagi berhasil ditambahkan', '2025-07-14 11:24:31', 1);
INSERT INTO `log` VALUES (638, 'Tanggapan Hapus data pada aplikasi, lalu cobak login kembali dilanjutkan penyelesai melalui VC via WhatsApp berhasil ditambahkan', '2025-07-14 11:25:17', 1);
INSERT INTO `log` VALUES (639, 'Tanggapan Penindaklanjutan oleh Jamhuri dengan status Proses berhasil dihapus', '2025-07-14 11:25:51', 1);
INSERT INTO `log` VALUES (640, 'Tanggapan Di pandu tim it area dengan status Pengerjaan berhasil dihapus', '2025-07-14 11:25:54', 1);
INSERT INTO `log` VALUES (641, 'Tanggapan Di pandu tim it area berhasil ditambahkan', '2025-07-14 11:26:02', 1);
INSERT INTO `log` VALUES (642, 'Tanggapan Penindaklanjutan oleh Jamhuri berhasil ditambahkan', '2025-07-14 11:26:11', 1);
INSERT INTO `log` VALUES (643, 'Tanggapan Hapus data pada aplikasi, kemudian login kembali dilanjutkan penyelesai melalui VC via WhatsApp berhasil diubah', '2025-07-14 11:26:48', 1);
INSERT INTO `log` VALUES (644, 'Tanggapan Silahkan Hapus data aplikasi, lalu kemudian login lagi berhasil diubah', '2025-07-14 11:26:57', 1);
INSERT INTO `log` VALUES (645, 'Pengaduan tidak bisa langsung print laporan serah terima belanja, harus eksport excel dulu berhasil ditambahkan', '2025-07-17 08:34:44', 1);
INSERT INTO `log` VALUES (646, 'Pengaduan akun pjs a.n Devi warungnya masih wss malang sengkaling, dan masih kosongan berhasil ditambahkan', '2025-07-17 08:37:08', 1);
INSERT INTO `log` VALUES (647, 'Tanggapan p berhasil ditambahkan', '2025-07-17 08:37:59', 1);
INSERT INTO `log` VALUES (648, 'Tanggapan v berhasil ditambahkan', '2025-07-17 08:38:05', 1);
INSERT INTO `log` VALUES (649, 'Tanggapan di cek oleh mas rendy berhasil ditambahkan', '2025-07-17 08:38:21', 1);
INSERT INTO `log` VALUES (650, 'Tanggapan dibantu tim software berhasil ditambahkan', '2025-07-17 08:38:33', 1);
INSERT INTO `log` VALUES (651, 'Waroeng Wss Surabaya Manyar berhasil diubah', '2025-07-17 08:39:26', 1);
INSERT INTO `log` VALUES (652, 'Waroeng Wss Bsd berhasil diubah', '2025-07-17 08:40:04', 1);
INSERT INTO `log` VALUES (653, 'Waroeng Wss Bsdd berhasil diubah', '2025-07-17 08:40:42', 1);
INSERT INTO `log` VALUES (654, 'Waroeng Wss Bsd berhasil diubah', '2025-07-17 08:40:53', 1);
INSERT INTO `log` VALUES (655, 'Pengaduan Penjualan Shift 2 tgl 12/07/2025 Ada refund menu dengan nominal Rp 49.500 namun belum masuk di sistem kas sehingga  Saldo akhir &amp; uang rill beda berhasil ditambahkan', '2025-07-17 08:43:00', 1);
INSERT INTO `log` VALUES (656, 'Pengguna naufalahnaf22 dengan jabatan administrator berhasil ditambahkan', '2025-07-17 16:21:14', 1);
INSERT INTO `log` VALUES (657, 'Pengaduan INTERNET waroeng tidak konek berhasil ditambahkan', '2025-07-17 16:23:59', 1);
INSERT INTO `log` VALUES (658, 'Tanggapan Kabel Telkom ada yg putus.\r\nSudah saya laporkan.\r\nMohon di tunggu berhasil ditambahkan', '2025-07-17 16:24:21', 1);
INSERT INTO `log` VALUES (659, 'Tanggapan Valid berhasil ditambahkan', '2025-07-17 16:24:30', 1);
INSERT INTO `log` VALUES (660, 'Tanggapan Proses berhasil ditambahkan', '2025-07-17 16:24:42', 1);
INSERT INTO `log` VALUES (661, 'Tanggapan Pelaporan ke pihak telkom sudah dilakukan, dan menunggu sampai terhubung kembali, selesai berhasil ditambahkan', '2025-07-17 16:25:40', 1);
INSERT INTO `log` VALUES (662, 'Pengaduan INTERNET komputer kacab waroeng  Teuku Umar tidak ada koneksi berhasil ditambahkan', '2025-07-17 16:28:43', 1);
INSERT INTO `log` VALUES (663, 'Tanggapan 1. Kacab melihat tutorial di Youtube dan langsung mempraktekannya\r\n2. Selesai berhasil ditambahkan', '2025-07-17 16:30:34', 1);
INSERT INTO `log` VALUES (664, 'Tanggapan 1. Kacab melihat tutorial di Youtube dan langsung mempraktekannya berhasil diubah', '2025-07-17 16:30:45', 1);
INSERT INTO `log` VALUES (665, 'Tanggapan Valid berhasil ditambahkan', '2025-07-17 16:30:55', 1);
INSERT INTO `log` VALUES (666, 'Tanggapan Proses berhasil ditambahkan', '2025-07-17 16:31:07', 1);
INSERT INTO `log` VALUES (667, 'Tanggapan 1. Kacab melihat tutorial di Youtube dan langsung mempraktekannya\r\n2. Selesai berhasil ditambahkan', '2025-07-17 16:31:33', 1);
INSERT INTO `log` VALUES (668, 'Pengaduan CR55 Connection Unstable berhasil ditambahkan', '2025-07-17 16:33:58', 1);
INSERT INTO `log` VALUES (669, 'Tanggapan 1. mikrotik dan wifi direstart\r\n2. ojol di restart,\r\n3. kemudian CR55nya baru di restart kembali berhasil ditambahkan', '2025-07-17 16:34:40', 1);
INSERT INTO `log` VALUES (670, 'Tanggapan Valid berhasil ditambahkan', '2025-07-17 16:34:49', 1);
INSERT INTO `log` VALUES (671, 'Tanggapan Proses berhasil ditambahkan', '2025-07-17 16:34:56', 1);
INSERT INTO `log` VALUES (672, 'Tanggapan 1. mikrotik dan wifi direstart\r\n2. ojol di restart,\r\n3. kemudian CR55nya baru di restart kembali\r\n4. Selesai berhasil ditambahkan', '2025-07-17 16:35:10', 1);
INSERT INTO `log` VALUES (673, 'Pengaduan PC Keuangan HDD tidak terdeteksi, di disk management muncul tapi unallocated berhasil ditambahkan', '2025-07-17 16:37:35', 1);
INSERT INTO `log` VALUES (674, 'Tanggapan 1. Matikan computer dan copot semua kabel yg terhubung\r\n2. Pindahkan Kabel SATA ke port sata yg lain\r\n3. Pindahkan HDD ke CPU yg lain berhasil ditambahkan', '2025-07-17 16:38:44', 1);
INSERT INTO `log` VALUES (675, 'Tanggapan Valid berhasil ditambahkan', '2025-07-17 16:38:53', 1);
INSERT INTO `log` VALUES (676, 'Tanggapan Proses berhasil ditambahkan', '2025-07-17 16:39:03', 1);
INSERT INTO `log` VALUES (677, 'Tanggapan 1. Matikan computer dan copot semua kabel yg terhubung\r\n2. Pindahkan Kabel SATA ke port sata yg lain\r\n3. Pindahkan HDD ke CPU yg lain\r\n4. Selesai berhasil ditambahkan', '2025-07-17 16:39:19', 1);
INSERT INTO `log` VALUES (678, 'Pengaduan Terjadi stuck di menu cumi dan air mineral (penjualan Apgg). \r\nUntuk cumi sudah kami terima gudang 67(kartu stock produksi sesuai). Akhirnya kami lakukan cancel ulang (masih sama terjadi stuck). Dan untuk air mineral sudah kami lakukan pecah barang 6btol(tapi masih blm terbaca, stock masih 5) berhasil ditambahkan', '2025-07-17 16:41:18', 8);
INSERT INTO `log` VALUES (679, 'Tanggapan p berhasil ditambahkan', '2025-07-17 16:42:19', 8);
INSERT INTO `log` VALUES (680, 'Tanggapan v berhasil ditambahkan', '2025-07-17 16:42:25', 8);
INSERT INTO `log` VALUES (681, 'Pengaduan 1. Komputer keuangan tidak bisa nyambung dengan komputer kacab\r\n2. Komputer keuangan tidak bisa buka all file excel laporan keuangan dan excel yg lain nya\r\n3. Komputer 1 dan 2 tidak saling koneksi berhasil ditambahkan', '2025-07-17 16:43:44', 1);
INSERT INTO `log` VALUES (682, 'Tanggapan di pandu tim software berhasil ditambahkan', '2025-07-17 16:43:49', 8);
INSERT INTO `log` VALUES (683, 'Tanggapan Langsung adjustment saja pak tidak ada masalah. Yg penting komp CR55 masih hidup bisa digunakan berhasil ditambahkan', '2025-07-17 16:44:09', 8);
INSERT INTO `log` VALUES (684, 'Tanggapan 1. Klik diagnose\r\n2. Install Ini di computer KC dan Keu\r\n3. Mengirimkan ID keuangan berhasil ditambahkan', '2025-07-17 16:46:07', 1);
INSERT INTO `log` VALUES (685, 'Tanggapan Valid berhasil ditambahkan', '2025-07-17 16:46:18', 1);
INSERT INTO `log` VALUES (686, 'Tanggapan Proses berhasil ditambahkan', '2025-07-17 16:46:31', 1);
INSERT INTO `log` VALUES (687, 'Tanggapan 1. Klik diagnose\r\n2. Install Ini di computer KC dan Keu\r\n3. Mengirimkan ID keuangan\r\n4. Selesai berhasil ditambahkan', '2025-07-17 16:46:46', 1);
INSERT INTO `log` VALUES (688, 'Pengaduan Ada kesalahan input CHT di produksi pagi hari.menu Daging sapi yang seharus nya input Cht porsi.di input Cht bersih.dan ini mengakibatkan selisih SO di menu Daging sapi malam ini.di laporan sisa layak produksi tidak masuk in cht pagi nya berhasil ditambahkan', '2025-07-17 16:47:09', 8);
INSERT INTO `log` VALUES (689, 'Tanggapan p berhasil ditambahkan', '2025-07-17 16:49:33', 8);
INSERT INTO `log` VALUES (690, 'Tanggapan v berhasil ditambahkan', '2025-07-17 16:49:43', 8);
INSERT INTO `log` VALUES (691, 'Tanggapan di jelaskan oleh sdm area berhasil ditambahkan', '2025-07-17 16:50:10', 8);
INSERT INTO `log` VALUES (692, 'Tanggapan Seperti ini jika ast keu ngecek stuck sales tiap jam 15.00 tidak akan terjadi kesalahan ketahuan di akhir\r\nKemarin baru saja RIM dijelaskan\r\nCek belanja harian sampai ke porsi juga\r\nCaranya di SO apa adanya sisanya saja\r\nLakukan adjusment jika ada stuck sales berhasil ditambahkan', '2025-07-17 16:50:43', 8);
INSERT INTO `log` VALUES (693, 'Pengaduan Pemindahan Scanner dari PC General ke PC OPS Keu. Namun belum tau cara menghubungkan, upaya sudah mencoba instal folder aplikasi scanner yang di PC General berhasil ditambahkan', '2025-07-17 16:52:27', 1);
INSERT INTO `log` VALUES (694, 'Tanggapan Dibaca error e.\r\n1. Scanner apakah hidup?\r\n2. USB apakah terhubung?\r\n\r\nTindakan :\r\n1. Pindah USB Scannernya\r\n2. Ganti kabel yg lain berhasil ditambahkan', '2025-07-17 16:53:04', 1);
INSERT INTO `log` VALUES (695, 'Tanggapan Valid berhasil ditambahkan', '2025-07-17 16:53:21', 1);
INSERT INTO `log` VALUES (696, 'Tanggapan Proses berhasil ditambahkan', '2025-07-17 16:53:30', 1);
INSERT INTO `log` VALUES (697, 'Pengaduan Bertanya,Stuck sales menu jus gobal gabul yang menggunakan BB JJKM apakah harus pecah gabung BB JJKM njeh.karna ini kami ada stuck sales berhasil ditambahkan', '2025-07-17 16:54:07', 8);
INSERT INTO `log` VALUES (698, 'Tanggapan Konfirmasi apakah:\r\n1. Scanner apakah hidup?\r\n2. USB apakah terhubung?\r\n\r\nTindakan :\r\n1. Pindah USB Scannernya\r\n2. Ganti kabel yg lain\r\n3. restart CPU\r\n4. Selesai berhasil ditambahkan', '2025-07-17 16:54:56', 1);
INSERT INTO `log` VALUES (699, 'Tanggapan p berhasil ditambahkan', '2025-07-17 16:55:04', 8);
INSERT INTO `log` VALUES (700, 'Tanggapan v berhasil ditambahkan', '2025-07-17 16:55:09', 8);
INSERT INTO `log` VALUES (701, 'Tanggapan proses remote oleh tim sipedas berhasil ditambahkan', '2025-07-17 16:55:24', 8);
INSERT INTO `log` VALUES (702, 'Tanggapan stockan gudang produksi habis mbk, sedangkan gobal-gabul pakai jjkm brrti seharusnya ada tambahan ini mbk.. berhasil ditambahkan', '2025-07-17 16:55:32', 8);
INSERT INTO `log` VALUES (703, 'Tanggapan 1. Klik diagnose\r\n2. Install Ini di computer KC dan Keu\r\n3. Mengirimkan ID keuangan\r\n4. Open Security -&gt;administrator -&gt; Isi yg kosong\r\n4. Selesai berhasil diubah', '2025-07-17 16:56:02', 1);
INSERT INTO `log` VALUES (704, 'Pengaduan PC Kacab tidak bisa menyala lagi dan sering terjadi mati sendiri berhasil ditambahkan', '2025-07-18 16:45:06', 1);
INSERT INTO `log` VALUES (705, 'Tanggapan Direkomendasikan untuk melakukan pengecekan langsung di tempat service berhasil ditambahkan', '2025-07-19 08:27:05', 1);
INSERT INTO `log` VALUES (706, 'Tanggapan Valid berhasil ditambahkan', '2025-07-19 08:27:14', 1);
INSERT INTO `log` VALUES (707, 'Tanggapan Proses berhasil ditambahkan', '2025-07-19 08:27:58', 1);
INSERT INTO `log` VALUES (708, 'Tanggapan Sebelum dilakukan pengecekan langsung di tempat service, alangkah baiknya memperhatikan hal berikut ini:\r\n1. Pastikan biaya cek\r\n2. Pastikan Kendalanya disebabkan apa\r\n3. Pastikan minta RAB sebelum dikerjakan\r\n4. Selesai berhasil ditambahkan', '2025-07-19 08:28:54', 1);
INSERT INTO `log` VALUES (709, 'Pengaduan 1. PC Keuangan tidak nyambung pada internet.kami coba ganti lan internet dr PC Kacab jg tidak bisa.\r\n2. Ikon penyambung internet kami buka tidak bisa buka\r\n3. Sambungan lan di PC Keuangan berkedip dgn jeda durasi lama berhasil ditambahkan', '2025-07-19 08:33:27', 1);
INSERT INTO `log` VALUES (710, 'Pengaduan Internet tidak nyambung. Berikut lampiran kondisinya. Sudah terjadi dari kemarin siang berhasil ditambahkan', '2025-07-19 08:36:11', 1);
INSERT INTO `log` VALUES (711, 'Tanggapan Pengecekan jaringan internet pada komputer kacab apaka terhubung atau tidak berhasil ditambahkan', '2025-07-19 08:40:14', 1);
INSERT INTO `log` VALUES (712, 'Tanggapan Valid berhasil ditambahkan', '2025-07-19 08:40:28', 1);
INSERT INTO `log` VALUES (713, 'Tanggapan Selesai berhasil ditambahkan', '2025-07-19 08:40:42', 1);
INSERT INTO `log` VALUES (714, 'Tanggapan Arahan untuk melakukaj restart komputer keuangan, selesai berhasil ditambahkan', '2025-07-19 08:41:39', 1);
INSERT INTO `log` VALUES (715, 'Tanggapan Pengecekan pada Modem Indibiznya apakah lampu indikator kedip2 merah atau tidak berhasil ditambahkan', '2025-07-19 08:42:47', 1);
INSERT INTO `log` VALUES (716, 'Tanggapan Valid berhasil ditambahkan', '2025-07-19 08:42:55', 1);
INSERT INTO `log` VALUES (717, 'Tanggapan Proses berhasil ditambahkan', '2025-07-19 08:43:05', 1);
INSERT INTO `log` VALUES (718, 'Tanggapan Arahan untuk melakukan restart pada modem, selesai berhasil ditambahkan', '2025-07-19 08:43:31', 1);
INSERT INTO `log` VALUES (719, 'Tanggapan Restart komputer keuangan, selesai berhasil diubah', '2025-07-19 08:44:08', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
  `tgl_pengaduan` date NOT NULL,
  `isi_laporan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `foto` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'default.png',
  `status_pengaduan` enum('belum_ditanggapi','proses','valid','pengerjaan','selesai','tidak_valid') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'belum_ditanggapi',
  `id_waroeng` int NOT NULL,
  `id_jabatan` int NULL DEFAULT NULL,
  `id_petugas` int NULL DEFAULT NULL,
  `id_subkategori` int NOT NULL,
  `id_kategori` int NOT NULL,
  PRIMARY KEY (`id_pengaduan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 131 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pengaduan
-- ----------------------------
INSERT INTO `pengaduan` VALUES (41, NULL, 'Ganisya', '+62 889-5393-721', '2025-06-08', 'Pak Tolong dibantu cek rekap tarikan Shift 02 SS Manahan Timur untuk kategori Menunya sebagian kosong ? \r\nSudah di Ctrl + F5 tapi masih sama saja', 'WhatsApp_Image_2025-06-08_at_08_40_37.jpeg', 'selesai', 25, 147, 7, 9, 6);
INSERT INTO `pengaduan` VALUES (42, NULL, 'Kusnidaryanti', '+62 895-4212-06471', '2025-06-09', 'Minta tolong dibantu pak , Sipedas Pusat (akses Area Solo) Rekap penjualan menu global untuk pilih All waroeng kenapa tidak bisa pak?\r\nsudah Ctrl+F5 tapi masih tetap belum bisa pak', 'WhatsApp_Image_2025-06-09_at_10_40_08.jpeg', 'tidak_valid', 36, 148, NULL, 11, 5);
INSERT INTO `pengaduan` VALUES (43, NULL, 'Putri Sarimaharani', '+62 895-0500-9721', '2025-06-10', 'pagii ,, pak agricola ada pesenan nasi dus tp ada tulisan sold outnya .. apa kan itu gpp ??', 'WhatsApp_Image_2025-06-10_at_10_10_54.jpeg', 'selesai', 105, 147, NULL, 9, 6);
INSERT INTO `pengaduan` VALUES (44, NULL, 'Ganisya', '+62 889-5393-721', '2025-06-10', 'Kendala  : Link: Sipedaspusat -> pada rekap Menu Global tidak mau muncul pilihan menu All Waroeng\r\nHal yg sudah dilakukan : \r\n- Sudah melakukan Hapus History \r\n- CTRL + F5\r\n- Sudah mencoba ganti Web (Chrome / Mozilla)\r\n-> Tapi masih tidak muncul untuk All Waroengnya pada kategori Waroeng', 'WhatsApp_Image_2025-06-09_at_10_40_08_(1).jpeg', 'selesai', 36, 147, 7, 11, 5);
INSERT INTO `pengaduan` VALUES (45, NULL, '-', '+62 857-3523-7201', '2025-06-10', 'mohon bantuannya CR55 kediri tidak bisa sign in', 'default.png', 'tidak_valid', 44, 147, 6, 8, 6);
INSERT INTO `pengaduan` VALUES (46, NULL, 'Tria Rosela', '+62 812-2925-7080', '2025-06-11', 'Harga gojek di device  berbeda dengan harga di CR \r\nHal yg sudah dilakukan : Refresh', 'default.png', 'selesai', 20, 147, 8, 12, 7);
INSERT INTO `pengaduan` VALUES (47, NULL, 'Indah', '+62 822-7219-6102', '2025-06-11', 'penambahan meny edamame di tab wbd dan cr55 kasir', 'default.png', 'selesai', 106, 147, 8, 13, 7);
INSERT INTO `pengaduan` VALUES (48, NULL, 'Sahirin', '+62 877-0888-2500', '2025-06-12', 'Tidak Bisa Buka Penjualan Non Menu\r\nHal yg sudah dilakukan : Reload , Login Ulang', 'WhatsApp_Image_2025-06-12_at_09_26_21.jpeg', 'selesai', 108, 150, 7, 6, 5);
INSERT INTO `pengaduan` VALUES (49, NULL, 'Yanuar Syarif', '+62 882-9713-0155', '2025-06-12', 'Minta tolong update In Ala carte harga Rp. 27.500 pak, ada pesanan Dari SS depok Margonda nggeh', 'default.png', 'tidak_valid', 14, 147, 8, 12, 7);
INSERT INTO `pengaduan` VALUES (50, NULL, 'Meilla', '+62 895-3917-34422', '2025-06-12', 'Harga Paket Ayam Spesial ada keterangan Sold Out', 'default.png', 'selesai', 33, 147, 9, 13, 7);
INSERT INTO `pengaduan` VALUES (51, NULL, 'Andina', '+62 882-3218-6499', '2025-06-12', 'update harga air mineral 300: 4.500, 600 : 5.500, 1.500 : 7.500', 'default.png', 'selesai', 110, 147, 9, 12, 7);
INSERT INTO `pengaduan` VALUES (52, NULL, 'Muhammad Mafhid', '+62 858-7800-8775', '2025-06-13', 'menu kasir pada salah satu transaksi tdk muncul menunya. Dan muncul keterangan connection unstable', 'default.png', 'selesai', 85, 147, 6, 13, 7);
INSERT INTO `pengaduan` VALUES (53, NULL, 'Varida', '+62 896-6927-9480', '2025-06-14', 'printer untuk status kedip kedip merah teros', 'default.png', 'selesai', 34, 147, 5, 14, 6);
INSERT INTO `pengaduan` VALUES (54, NULL, 'Ainin', '+62 856-0753-8769', '2025-06-14', 'Buah campur yg ada pepaya sama pisang itu harganya beda dicr sama nota', 'WhatsApp_Image_2025-06-14_at_12_46_39.jpeg', 'tidak_valid', 51, 147, 8, 12, 7);
INSERT INTO `pengaduan` VALUES (55, NULL, 'Tria Rosela', '+62 812-2925-7080', '2025-06-15', 'Tidak Bisa Login CR55', 'Screenshot_2025-06-17_155242.png', 'selesai', 20, 147, 6, 9, 6);
INSERT INTO `pengaduan` VALUES (56, NULL, 'Ganisya', '+62 889-5393-721', '2025-06-16', 'Pada Rekap Menu Global Tgl 15 tidak mau muncul datanya (masih kosong)\r\nHal yg sudah dilakukan : \r\n- Melakukat Restart \r\n- Ctrl + F5 \r\n- Mencoba membuka melalui Pc Lain dan Web Brownser lain', 'WhatsApp_Image_2025-06-16_at_10_47_10.jpeg', 'selesai', 36, 147, 10, 11, 5);
INSERT INTO `pengaduan` VALUES (57, NULL, 'Dwi Ayu', '+62 877-3642-2290', '2025-06-16', 'CR55 blank tidak ada meja dan bungkus internet tidak connec', 'WhatsApp_Image_2025-06-16_at_17_12_24.jpeg', 'selesai', 92, 147, 6, 8, 6);
INSERT INTO `pengaduan` VALUES (58, NULL, 'Ayu', '+62 857-3523-7201', '2025-06-17', 'CPU tidak mau nyala kabel power sudah diganti menggunakan kabel power lain namun tetap tidak mau nyala', 'WhatsApp_Image_2025-06-17_at_08_12_18.jpeg', 'selesai', 44, 147, NULL, 15, 6);
INSERT INTO `pengaduan` VALUES (59, NULL, 'Ferry', '+62 812-8897-9425', '2025-06-17', 'Pak ini cpu batubulan mati tapi hardisknya tidak saya sambungkan ke HDD takutnya datanya rusak/hilang pak', 'Screenshot_2025-06-17_163804.png', 'selesai', 48, 148, 11, 5, 4);
INSERT INTO `pengaduan` VALUES (60, NULL, 'Miftah', '+62 858-8850-2564', '2025-06-18', 'katergori menu yang membuat penjualan tidak nge link', 'WhatsApp_Image_2025-06-18_at_09_04_22.jpeg', 'selesai', 71, 147, 7, 9, 6);
INSERT INTO `pengaduan` VALUES (61, NULL, 'Arbella', '+62 857-7223-3775', '2025-06-18', 'Internet lemot terkadang sampai trouble kemungkinan jarak rother yang jauh dan jaringan internet sering tidak stabil serta hari ini trouble pada komputer yang jika akan mendownload file tidak bisa dibuka atau ketetangan resume.', 'WhatsApp_Image_2025-06-18_at_10_38_06.jpeg', 'selesai', 93, 147, 11, 16, 8);
INSERT INTO `pengaduan` VALUES (62, NULL, 'Nindya', '+62 896-8258-3360', '2025-06-18', 'Laptop tidak bisa muncul wifi', 'default.png', 'selesai', 111, 151, 11, 5, 4);
INSERT INTO `pengaduan` VALUES (63, NULL, 'Gaega', '+62 877-3279-0844', '2025-06-18', 'Selamat sore buk pak, ngapunten,\r\nBantu cek Wonosari perihal pergerakan stok di Kartu Stok terdapati warning seperti ini dari range tanggal 1 sd 18 Juni 2025.', 'WhatsApp_Image_2025-06-18_at_16_10_00.jpeg', 'selesai', 82, 147, 4, 11, 5);
INSERT INTO `pengaduan` VALUES (64, NULL, 'Wahyu Setyo Bekti', '+62 856-0134-3464', '2025-06-12', 'Ijin menyampaikan untuk di magelang SO ayam Dada Bacem dan Paha Bacem belum bisa berganti nominalnya Di SLH \r\n\r\nUntuk sisa Rill \r\nDada Bacem 10\r\nPaha bacem 18\r\nSudah di input di SO BB di jam 23:03 namun sampai saat ini jam 23:52 kami cek di SLH masih belum berganti untuk nominal inputannya \r\nUntuk stuck sales sudah tidak ada', 'WhatsApp_Image_2025-06-12_at_23_54_16.jpeg', 'selesai', 79, 147, 8, 11, 5);
INSERT INTO `pengaduan` VALUES (65, NULL, 'Meila', '+62 895-3917-34422', '2025-06-13', 'Harga Paket Ayam Spesial ada keterangan Sold Out', 'default.png', 'selesai', 33, 147, 6, 12, 7);
INSERT INTO `pengaduan` VALUES (66, NULL, 'Arista', '+62 882-3218-6499', '2025-06-13', 'update harga air mineral 300: 4.500, 600 : 5.500, 1.500 : 7.500', 'default.png', 'selesai', 110, 147, 8, 13, 7);
INSERT INTO `pengaduan` VALUES (67, NULL, 'Varida', '+62 896-6927-9480', '2025-06-14', 'printer untuk status kedip kedip merah teros', 'Screenshot_2025-06-26_144518.png', 'selesai', 34, 147, 5, 14, 6);
INSERT INTO `pengaduan` VALUES (68, NULL, 'Ainin', '+62 896-6927-9480', '2025-06-14', 'Buah Mix (Semangka Nanas Pepaya) dan Buah Mix (Semangka Melon Pisang). Buah campur yg ada pepaya sama pisang itu harganya beda dicr sama nota', 'WhatsApp_Image_2025-06-14_at_12_46_391.jpeg', 'tidak_valid', 51, 147, NULL, 12, 7);
INSERT INTO `pengaduan` VALUES (69, NULL, 'Tria Rosella', '+62 812-2925-7080', '2025-05-15', 'Tidak Bisa Login CR55', 'Screenshot_2025-06-26_145451.png', 'selesai', 20, 149, NULL, 9, 6);
INSERT INTO `pengaduan` VALUES (70, NULL, 'Ganisya', '+62 889-5393-721', '2025-06-16', 'Pada Rekap Menu Global Tgl 15 tidak mau muncul datanya (masih kosong)\r\nHal yg sudah dilakukan : \r\n- Melakukat Restart \r\n- Ctrl + F5 \r\n- Mencoba membuka melalui Pc Lain dan Web Brownser lain', 'WhatsApp_Image_2025-06-16_at_10_47_101.jpeg', 'selesai', 36, 147, 4, 11, 5);
INSERT INTO `pengaduan` VALUES (71, NULL, 'Dwi Ayu', '+62 877-3642-2290', '2025-06-16', 'CR55 blank tidak ada meja dan bungkus internet tidak connec', 'WhatsApp_Image_2025-06-16_at_17_12_241.jpeg', 'selesai', 92, 147, 6, 9, 6);
INSERT INTO `pengaduan` VALUES (72, NULL, 'Ayu', '+62 857-3523-7201', '2025-06-17', 'CPU tidak mau nyala kabel power sudah diganti menggunakan kabel power lain namun tetap tidak mau nyala', 'WhatsApp_Image_2025-06-17_at_08_12_181.jpeg', 'selesai', 44, 147, 6, 15, 6);
INSERT INTO `pengaduan` VALUES (73, NULL, 'Arbella', '+62 857-7223-3775', '2025-06-17', 'Loading Lama dan Tidak bisa membuka one drive', 'Screenshot_2025-06-26_160157.png', 'selesai', 93, 147, NULL, 16, 8);
INSERT INTO `pengaduan` VALUES (74, NULL, 'Putri Wulandari', '+62 898-9553-345', '2025-06-17', 'tdk bisa akses CR55 (,listrik jeglek 3x)\r\nSudah di restart smaa Ajja', 'WhatsApp_Image_2025-06-17_at_19_57_13.jpeg', 'selesai', 20, 147, 4, 8, 6);
INSERT INTO `pengaduan` VALUES (75, NULL, 'Miftah', '+62 858-8850-2564', '2025-06-18', 'katergori menu yang membuat penjualan tidak nge link', 'WhatsApp_Image_2025-06-18_at_09_04_221.jpeg', 'selesai', 71, 147, 7, 11, 5);
INSERT INTO `pengaduan` VALUES (76, NULL, 'Indah', '+62 822-7219-6102', '2025-06-18', 'Penambahan menu nasi dos alacarte harga 27.000', 'default.png', 'selesai', 107, 147, 8, 13, 7);
INSERT INTO `pengaduan` VALUES (77, NULL, 'Dedema', '+62 822-4203-1325', '2025-06-18', 'Order penambahan Harga Paket Hampers Custom.', 'default.png', 'selesai', 88, 149, NULL, 13, 7);
INSERT INTO `pengaduan` VALUES (78, NULL, 'Amarmegatara', '+62 877-1487-3742', '2025-06-21', 'Mesin printer tidak bisa buat print', 'WhatsApp_Image_2025-06-21_at_10_06_27.jpeg', 'selesai', 95, 149, NULL, 14, 6);
INSERT INTO `pengaduan` VALUES (79, NULL, 'Fauziah', '+62 859-7473-6559', '2025-06-22', 'Cr tidak bisa nyala tampilan seprti difoto , sudah dari td malam setelah tarikan.', 'WhatsApp_Image_2025-06-22_at_08_53_23.jpeg', 'selesai', 26, 147, 6, 15, 6);
INSERT INTO `pengaduan` VALUES (80, NULL, 'Nadia', '+62 858-7828-2089', '2025-06-23', 'arus listrik mati kemudian sudah dinyalakan namun cr55 tidak mau hidup sudah mencoba untuk di restart cr55', 'WhatsApp_Image_2025-06-23_at_14_38_35.jpeg', 'selesai', 100, 147, 5, 15, 6);
INSERT INTO `pengaduan` VALUES (81, NULL, 'Fauziah', '+62 859-7473-6559', '2025-06-26', 'tampilan layar cr55 pada saat dinyalakan seperti difoto', 'WhatsApp_Image_2025-06-26_at_08_34_02.jpeg', 'selesai', 26, 147, 6, 15, 6);
INSERT INTO `pengaduan` VALUES (82, NULL, 'Fina', '+62 877-8893-7315', '2025-06-26', 'jaringan tersambung tapi tidak ada internet', 'WhatsApp_Image_2025-06-26_at_17_08_13.jpeg', 'selesai', 110, 147, 6, 16, 8);
INSERT INTO `pengaduan` VALUES (83, NULL, 'Sandi', '+62 877-1133-0600', '2025-06-19', 'internet kantor tiba2 tidak bisa/tidak ada koneksi.. penanganan sudah di coba di lakukan pencopotan kabel Len dan masukan kan lagi.. tapi tetap tidak bisa', 'Screenshot_2025-06-27_163716.png', 'selesai', 39, 152, 6, 16, 8);
INSERT INTO `pengaduan` VALUES (84, NULL, 'Fancah', '+62 812-3569-9772', '2025-06-19', 'notifikasi device shopee sering tidak keluar padahal aplikasi sering di refresh, jadi driver ojol sudah datang, tapi notifikasi belum ada', 'default.png', 'selesai', 40, 149, 6, 17, 9);
INSERT INTO `pengaduan` VALUES (85, NULL, 'Rahma', '+62 831-9527-9555', '2025-06-19', 'CTV tidak bisa menyimpan file video', 'WhatsApp_Image_2025-06-19_at_12_12_16.jpeg', 'belum_ditanggapi', 89, 154, NULL, 18, 4);
INSERT INTO `pengaduan` VALUES (86, NULL, 'Zhafran', '+62 821-3844-8430', '2025-06-19', '1. CCTV di bagian kasiran & parkiran (1) tidak bisa menyimpan file video \r\n2. lampu di CCTV nyala terus (cctv kantor & cctv lorong)', 'WhatsApp_Image_2025-06-19_at_13_32_52.jpeg', 'belum_ditanggapi', 27, 154, NULL, 18, 4);
INSERT INTO `pengaduan` VALUES (87, NULL, 'Tomi', '+62 881-4115-009', '2025-06-19', 'CCTV JAYENGAN DAN PARKIR KONSUMEN MATI', 'WhatsApp_Image_2025-06-19_at_14_08_12.jpeg', 'pengerjaan', 34, 154, NULL, 18, 4);
INSERT INTO `pengaduan` VALUES (88, NULL, 'Iyan', '+62 878-5716-6290', '2025-06-19', 'kendala login  cctv dibatasi sehingga waroeng tidak bisa login ngak bisa ngecek', 'WhatsApp_Image_2025-06-19_at_14_21_03.jpeg', 'pengerjaan', 28, 151, NULL, 18, 4);
INSERT INTO `pengaduan` VALUES (89, NULL, 'Tiyas', '+62 858-4796-6082', '2025-06-27', 'Tarikan si pedas pilih transaksi tidak muncul', 'WhatsApp_Image_2025-06-27_at_17_23_17.jpeg', 'pengerjaan', 113, 147, NULL, 11, 5);
INSERT INTO `pengaduan` VALUES (90, NULL, 'Tiyas', '+62 858-4796-6082', '2025-06-27', 'ketika mau melakukan pembayaran tetapi tidak berhasil', 'Screenshot_2025-06-28_084553.png', 'selesai', 113, 147, 10, 9, 6);
INSERT INTO `pengaduan` VALUES (91, NULL, 'Adede', '+62 838-7675-5646', '2025-06-27', 'Semua Internet Atas Bawah Tidak Bisa Koneksi Wifi,Sehingga Device Ojol dan Komputer Kantor Tidak bisa Buka Internet (Odoo)', 'WhatsApp_Image_2025-06-27_at_19_41_49.jpeg', 'pengerjaan', 114, 154, 12, 16, 8);
INSERT INTO `pengaduan` VALUES (92, NULL, 'Arif Yulianto', '+62 831-0793-1972', '2025-06-27', '1. Wifi yang ke-2 bagian depan tidak bisa terkoneksi ke HP ojol', 'Screenshot_2025-06-28_090430.png', 'tidak_valid', 19, 152, NULL, 16, 8);
INSERT INTO `pengaduan` VALUES (93, NULL, 'Surya Fajar Rizqi', '+62 856-9586-6037', '2025-06-27', 'Wifi nya mati.', 'WhatsApp_Image_2025-06-27_at_18_58_13.jpeg', 'selesai', 114, 151, 12, 16, 8);
INSERT INTO `pengaduan` VALUES (94, NULL, 'Prabowo Dicky', '+62 858-7715-2194', '2025-06-27', 'CCTV tidak bisa di akses ( dari 14 titik, hanya 7 titik yang bisa di akses)', 'WhatsApp_Image_2025-06-27_at_19_17_29.jpeg', 'belum_ditanggapi', 94, 154, NULL, 18, 4);
INSERT INTO `pengaduan` VALUES (95, NULL, '-', '+62 852-8730-0747', '2025-06-28', '2. Ruter Wifi nya mati.', 'WhatsApp_Image_2025-06-28_at_14_27_44.jpeg', 'selesai', 113, 154, 12, 16, 8);
INSERT INTO `pengaduan` VALUES (96, NULL, 'Reni Yuandasari', '+62 816-1526-8235', '2025-06-27', 'selamat sore bapak/ibu\r\nmohon maaf ijin menyampaikan kendala jakal km 12, saldo awal dari buku kas sipedas dan buku kas file keuangan berbeda nggih, ada selisih Rp. 28.000', 'WhatsApp_Image_2025-06-27_at_16_52_07.jpeg', 'pengerjaan', 86, 147, 7, 11, 5);
INSERT INTO `pengaduan` VALUES (98, NULL, 'Adede', '+62 838-7675-5646', '2025-06-27', 'Semua Internet Atas Bawah Tidak Bisa Koneksi Wifi,Sehingga Device Ojol dan Komputer Kantor Tidak bisa Buka Internet (Odoo)', 'WhatsApp_Image_2025-06-27_at_19_41_49_(1).jpeg', 'selesai', 114, 154, 11, 16, 8);
INSERT INTO `pengaduan` VALUES (99, NULL, 'Fajar', '+62 882-2660-9350', '2025-06-29', 'wifi nyala tapi tdk ada koneksi internet', 'WhatsApp_Image_2025-06-29_at_09_45_41.jpeg', 'selesai', 89, 154, 12, 16, 8);
INSERT INTO `pengaduan` VALUES (100, NULL, '-', '+62 895-2232-0841', '2025-06-28', 'tidak bisa finger istrahat ataupun pulang', 'default.png', 'belum_ditanggapi', 42, 152, NULL, 19, 5);
INSERT INTO `pengaduan` VALUES (101, NULL, 'Novan sdm', '+62 823-7466-1631', '2025-06-30', 'CCTV offline dan tidak bisa login', 'WhatsApp_Image_2025-06-30_at_09_48_34.jpeg', 'selesai', 97, 152, 6, 18, 4);
INSERT INTO `pengaduan` VALUES (102, NULL, '-', '+62 838-4170-8744', '2025-07-03', '1. Printer kasir tidak konek, sudah dicoba ganti kabel dan pinjam printer ojol tetap tidak bisa konek.', 'WhatsApp_Image_2025-07-03_at_08_39_48.jpeg', 'belum_ditanggapi', 41, 152, NULL, 14, 6);
INSERT INTO `pengaduan` VALUES (103, NULL, '-', '+62 838-7766-8360', '2025-07-04', 'CCTV kantor lampu sensor terus menyala', 'WhatsApp_Image_2025-07-04_at_20_22_43.jpeg', 'belum_ditanggapi', 117, 154, NULL, 18, 4);
INSERT INTO `pengaduan` VALUES (104, NULL, '-', '+62 857-1302-3664', '2025-07-05', 'Diskripsi jelas kendala  :\r\n1.CCTV tidak bisa menyimpan rekaman video\r\n2.CcTV no 7 kabel putus', 'default.png', 'selesai', 22, 154, 6, 18, 4);
INSERT INTO `pengaduan` VALUES (105, NULL, '-', '+62 878-2533-4067', '2025-07-05', 'Download file masuknya ke Microsoft office jadinya tidak bisa nyimpan ke file', 'WhatsApp_Image_2025-07-05_at_17_24_33.jpeg', 'selesai', 91, 154, 6, 20, 5);
INSERT INTO `pengaduan` VALUES (106, NULL, '-', '+62 857-2910-2010', '2025-07-05', '1.CCTV Produksi mantim tidak menyala / Offline', 'WhatsApp_Image_2025-07-05_at_21_57_23.jpeg', 'selesai', 25, 152, 6, 18, 4);
INSERT INTO `pengaduan` VALUES (107, NULL, '-', '+62 821-1597-4772', '2025-07-06', 'Wifi lantai 1 tidak connect internet nya keterangan \"terhubung/tidak aman\" untuk lantai 2 /kantor aman seperti biasa nya', 'WhatsApp_Image_2025-07-06_at_20_19_22.jpeg', 'selesai', 15, 152, 12, 16, 8);
INSERT INTO `pengaduan` VALUES (108, NULL, '-', '+62 858-5006-0454', '2025-07-07', 'Tidak bisa presensi pulang (Gagal terhubung ke server)', 'WhatsApp_Image_2025-07-07_at_23_04_07.jpeg', 'selesai', 44, 152, 6, 19, 5);
INSERT INTO `pengaduan` VALUES (109, NULL, '-', '+62 838-6912-9193', '2025-07-07', 'Tidak bisa presensi pulang (Gagal terhubung ke server)', 'WhatsApp_Image_2025-07-07_at_23_14_05.jpeg', 'selesai', 118, 152, 6, 19, 5);
INSERT INTO `pengaduan` VALUES (110, NULL, '-', '+62 895-3515-36834', '2025-07-09', 'Cctv tidak bisa diakses', 'WhatsApp_Image_2025-07-09_at_11_21_24.jpeg', 'selesai', 19, 152, 6, 18, 4);
INSERT INTO `pengaduan` VALUES (112, NULL, '-', '+62 878-3879-5184', '2025-07-09', 'PC Kacab tidak bisa menyala paska lampu mati', 'Screenshot_2025-07-14_105239.png', 'selesai', 47, 154, 6, 5, 4);
INSERT INTO `pengaduan` VALUES (113, NULL, '-', '+62 857-2910-2010', '2025-07-09', 'CCTV Offline', 'WhatsApp_Image_2025-07-09_at_14_20_18.jpeg', 'selesai', 23, 153, NULL, 18, 4);
INSERT INTO `pengaduan` VALUES (114, NULL, 'Fajar', '+62 812-3569-9772', '2025-07-09', '1. Salah satu cctv tidak bisa \r\n2. Sudah ganti cctv lain tetap \r\n3. Sudah ganti sambungan tetap tidak bisa', 'WhatsApp_Image_2025-07-09_at_23_52_24.jpeg', 'selesai', 40, 152, 6, 18, 4);
INSERT INTO `pengaduan` VALUES (115, NULL, 'Jefri', '+62 855-4625-5383', '2025-07-10', '1. Aplikasi gojek tidak bisa print \r\n2. Aplikasi Shopee dan grab lancar', 'Screenshot_2025-07-14_112259.png', 'selesai', 39, 154, 6, 17, 9);
INSERT INTO `pengaduan` VALUES (116, NULL, 'Bella Oktaviana', '+62 852-3264-5787', '2025-07-13', 'tidak bisa langsung print laporan serah terima belanja, harus eksport excel dulu', 'WhatsApp_Image_2025-07-13_at_09_15_35.jpeg', 'belum_ditanggapi', 45, 147, NULL, 11, 5);
INSERT INTO `pengaduan` VALUES (117, NULL, 'Bella Oktaviana', '+62 852-3264-5787', '2025-07-13', 'akun pjs a.n Devi warungnya masih wss malang sengkaling, dan masih kosongan', 'WhatsApp_Image_2025-07-13_at_09_24_50.jpeg', 'selesai', 45, 147, 7, 11, 5);
INSERT INTO `pengaduan` VALUES (118, NULL, 'Eva Saydah', '+62 857-4650-0215', '2025-07-13', 'Penjualan Shift 2 tgl 12/07/2025 Ada refund menu dengan nominal Rp 49.500 namun belum masuk di sistem kas sehingga  Saldo akhir & uang rill beda', 'WhatsApp_Image_2025-07-13_at_13_48_02.jpeg', 'belum_ditanggapi', 38, 147, 7, 11, 5);
INSERT INTO `pengaduan` VALUES (119, NULL, 'Edi Mulyadi', '+62 838-7766-8360', '2025-07-15', 'INTERNET waroeng tidak konek', 'default.png', 'selesai', 117, 154, 12, 16, 8);
INSERT INTO `pengaduan` VALUES (120, NULL, 'Rizki', '+62 852-3454-9192', '2025-07-16', 'INTERNET komputer kacab waroeng  Teuku Umar tidak ada koneksi', 'Screenshot_2025-07-17_162817.png', 'selesai', 51, 154, 6, 16, 8);
INSERT INTO `pengaduan` VALUES (121, NULL, 'Ujang Ngaju', '+62 856-0405-0660', '2025-07-16', 'CR55 Connection Unstable', 'WhatsApp_Image_2025-07-16_at_17_03_29.jpeg', 'selesai', 45, 154, 6, 8, 6);
INSERT INTO `pengaduan` VALUES (122, NULL, 'Yahya Wahyu Widodo', '+62 858-5006-0454', '2025-07-16', 'PC Keuangan HDD tidak terdeteksi, di disk management muncul tapi unallocated', 'WhatsApp_Image_2025-07-16_at_21_09_06.jpeg', 'selesai', 44, 152, 6, 5, 4);
INSERT INTO `pengaduan` VALUES (123, NULL, 'Ari septianto', '+62 857-3155-5933', '2025-07-13', 'Terjadi stuck di menu cumi dan air mineral (penjualan Apgg). \r\nUntuk cumi sudah kami terima gudang 67(kartu stock produksi sesuai). Akhirnya kami lakukan cancel ulang (masih sama terjadi stuck). Dan untuk air mineral sudah kami lakukan pecah barang 6btol(tapi masih blm terbaca, stock masih 5)', 'WhatsApp_Image_2025-07-13_at_16_06_53.jpeg', 'selesai', 41, 147, 4, 11, 5);
INSERT INTO `pengaduan` VALUES (124, NULL, 'Yudha', '+62 897-8253-304', '2025-07-17', '1. Komputer keuangan tidak bisa nyambung dengan komputer kacab\r\n2. Komputer keuangan tidak bisa buka all file excel laporan keuangan dan excel yg lain nya\r\n3. Komputer 1 dan 2 tidak saling koneksi', 'WhatsApp_Image_2025-07-17_at_09_08_45.jpeg', 'selesai', 42, 154, 6, 5, 4);
INSERT INTO `pengaduan` VALUES (125, NULL, 'Nurhuda', '+62 897-8253-304', '2025-07-13', 'Ada kesalahan input CHT di produksi pagi hari.menu Daging sapi yang seharus nya input Cht porsi.di input Cht bersih.dan ini mengakibatkan selisih SO di menu Daging sapi malam ini.di laporan sisa layak produksi tidak masuk in cht pagi nya', 'WhatsApp_Image_2025-07-13_at_23_15_35.jpeg', 'selesai', 42, 147, NULL, 11, 5);
INSERT INTO `pengaduan` VALUES (126, NULL, 'Jafiandim', '+62 859-3115-6331', '2025-07-17', 'Pemindahan Scanner dari PC General ke PC OPS Keu. Namun belum tau cara menghubungkan, upaya sudah mencoba instal folder aplikasi scanner yang di PC General', 'Screenshot_2025-07-17_165158.png', 'selesai', 47, 153, 6, 5, 4);
INSERT INTO `pengaduan` VALUES (127, NULL, 'Nurhuda', '+62 897-8253-304', '2025-07-14', 'Bertanya,Stuck sales menu jus gobal gabul yang menggunakan BB JJKM apakah harus pecah gabung BB JJKM njeh.karna ini kami ada stuck sales', 'WhatsApp_Image_2025-07-14_at_16_58_55.jpeg', 'selesai', 42, 147, NULL, 11, 5);
INSERT INTO `pengaduan` VALUES (128, NULL, 'Gagah Putra', '+62 878-3879-5184', '2025-07-18', 'PC Kacab tidak bisa menyala lagi dan sering terjadi mati sendiri', 'Screenshot_2025-07-18_164423.png', 'selesai', 46, 154, 6, 5, 4);
INSERT INTO `pengaduan` VALUES (129, NULL, 'Yudha', '+62 897-8253-304', '2025-07-18', '1. PC Keuangan tidak nyambung pada internet.kami coba ganti lan internet dr PC Kacab jg tidak bisa.\r\n2. Ikon penyambung internet kami buka tidak bisa buka\r\n3. Sambungan lan di PC Keuangan berkedip dgn jeda durasi lama', 'Screenshot_2025-07-19_083126.png', 'selesai', 42, 154, 6, 16, 8);
INSERT INTO `pengaduan` VALUES (130, NULL, 'Mitro', '+62 857-3004-0870', '2025-07-18', 'Internet tidak nyambung. Berikut lampiran kondisinya. Sudah terjadi dari kemarin siang', 'WhatsApp_Image_2025-07-18_at_9_25_50_AM.jpeg', 'selesai', 91, 154, 6, 16, 8);

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pengguna
-- ----------------------------
INSERT INTO `pengguna` VALUES (1, 'Imam Mahdi', 'imamhambali', '$2y$10$9/BHplk2rfRG7wV9JKNXvucoqyoy6CTZBO5IvVfgJZpYrsCtFRXGi', '098765544', 'madura somepunk');
INSERT INTO `pengguna` VALUES (2, 'Imam Mahdi', 'imamhambali2', '$2y$10$u8.XabHuboWHc./z180aSuXsVKA6961QmdfOEiTO473ig4sv5jHVi', '0987654', 'somepunk madhurha');
INSERT INTO `pengguna` VALUES (4, 'Imam Mahdi', 'imammahdi', '$2y$10$2bq.LmclZF6xm.F175iYsO7qjNt2APTU/ru4f8QBrJXKOretZi4Um', '0987654321', 'Somepunk');

-- ----------------------------
-- Table structure for petugas
-- ----------------------------
DROP TABLE IF EXISTS `petugas`;
CREATE TABLE `petugas`  (
  `id_petugas` int NOT NULL AUTO_INCREMENT,
  `petugas` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_petugas`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of petugas
-- ----------------------------
INSERT INTO `petugas` VALUES (3, 'Ahmad Holis');
INSERT INTO `petugas` VALUES (4, 'Risco Dharmawan');
INSERT INTO `petugas` VALUES (5, 'Cahya Krisna Angga');
INSERT INTO `petugas` VALUES (6, 'Alfan Niami');
INSERT INTO `petugas` VALUES (7, 'Rendy Rachim');
INSERT INTO `petugas` VALUES (8, 'Ma\'ruf Budi Setiawan');
INSERT INTO `petugas` VALUES (9, 'Dhona');
INSERT INTO `petugas` VALUES (10, 'Ihsannudin');
INSERT INTO `petugas` VALUES (11, 'M. Naufal Ahnaf');
INSERT INTO `petugas` VALUES (12, 'Jamhuri');

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
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `saran` VALUES (11, 'Imam', '0987654', 'bangkalan', 'okee', '2025-05-05 10:35:41');
INSERT INTO `saran` VALUES (12, 'Imam Ha', '094565463423', 'surabaya', 'oke mantantaf', '2025-05-05 10:39:40');
INSERT INTO `saran` VALUES (13, 'Imam Hambb', '8097865', 'jakarta', 'okk', '2025-05-05 10:41:42');
INSERT INTO `saran` VALUES (14, 'Imam Hambbali', '089798675', 'jogja', 'baguss', '2025-05-05 10:46:06');
INSERT INTO `saran` VALUES (15, 'Naufal', '087643', 'jogja', 'okee', '2025-05-05 10:47:05');
INSERT INTO `saran` VALUES (16, 'Imam Hambb', '60987654', 'bandung', '123', '2025-05-05 10:50:26');

-- ----------------------------
-- Table structure for subkategori
-- ----------------------------
DROP TABLE IF EXISTS `subkategori`;
CREATE TABLE `subkategori`  (
  `id_subkategori` int NOT NULL AUTO_INCREMENT,
  `subkategori` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_kategori` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_subkategori`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of subkategori
-- ----------------------------
INSERT INTO `subkategori` VALUES (5, 'Komputer', 4);
INSERT INTO `subkategori` VALUES (6, 'Cr55', 5);
INSERT INTO `subkategori` VALUES (7, 'Mikrotik', 4);
INSERT INTO `subkategori` VALUES (8, 'Jaringan', 6);
INSERT INTO `subkategori` VALUES (9, 'Software', 6);
INSERT INTO `subkategori` VALUES (11, 'Sipedas', 5);
INSERT INTO `subkategori` VALUES (12, 'Harga', 7);
INSERT INTO `subkategori` VALUES (13, 'Menu', 7);
INSERT INTO `subkategori` VALUES (14, 'Printer', 6);
INSERT INTO `subkategori` VALUES (15, 'Hardware', 6);
INSERT INTO `subkategori` VALUES (16, 'Internet', 8);
INSERT INTO `subkategori` VALUES (17, 'Device', 9);
INSERT INTO `subkategori` VALUES (18, 'Cctv', 4);
INSERT INTO `subkategori` VALUES (19, 'Absensi Sipedass', 5);
INSERT INTO `subkategori` VALUES (20, 'Aplikasi', 5);

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
) ENGINE = MyISAM AUTO_INCREMENT = 397 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `tanggapan` VALUES (47, 'oke', '2025-05-14 15:40:21', 'proses', 'default.png', 30, 1);
INSERT INTO `tanggapan` VALUES (48, 'segera di proses', '2025-05-15 09:19:07', 'proses', 'default.png', 31, 1);
INSERT INTO `tanggapan` VALUES (49, 'segera di proses wak', '2025-05-15 09:33:51', 'proses', 'WhatsApp_Image_2025-05-14_at_10_28_10.jpeg', 32, 1);
INSERT INTO `tanggapan` VALUES (50, 'sudah di tangani mas alfan', '2025-06-11 16:32:24', 'proses', 'default.png', 35, 1);
INSERT INTO `tanggapan` VALUES (54, 'segera di proses', '2025-06-11 16:38:09', 'valid', 'default.png', 35, 1);
INSERT INTO `tanggapan` VALUES (55, 'di proses oleh mas alfan', '2025-06-11 16:38:28', 'pengerjaan', 'default.png', 35, 1);
INSERT INTO `tanggapan` VALUES (56, 'selesai', '2025-06-11 16:38:41', 'selesai', 'default.png', 35, 1);
INSERT INTO `tanggapan` VALUES (57, 'di proses', '2025-06-12 10:48:02', 'proses', 'default.png', 36, 1);
INSERT INTO `tanggapan` VALUES (58, 'valid', '2025-06-12 10:48:33', 'valid', 'default.png', 36, 1);
INSERT INTO `tanggapan` VALUES (59, 'proses remot', '2025-06-12 10:48:51', 'pengerjaan', 'default.png', 36, 1);
INSERT INTO `tanggapan` VALUES (60, 'di selesaikan oleh mas alfan', '2025-06-12 10:49:08', 'selesai', 'default.png', 36, 1);
INSERT INTO `tanggapan` VALUES (61, 'on proses', '2025-06-12 13:17:07', 'proses', 'default.png', 37, 1);
INSERT INTO `tanggapan` VALUES (63, 'laporan segera di kerjakan', '2025-06-12 13:18:21', 'valid', 'default.png', 37, 1);
INSERT INTO `tanggapan` VALUES (64, 'sedang di remot mas angga', '2025-06-12 13:18:42', 'pengerjaan', 'default.png', 37, 1);
INSERT INTO `tanggapan` VALUES (65, 'sudah di remot dilakukan perbaikan blabla', '2025-06-12 13:19:34', 'selesai', 'default.png', 37, 1);
INSERT INTO `tanggapan` VALUES (66, 'proses', '2025-06-17 10:15:55', 'proses', 'default.png', 41, 1);
INSERT INTO `tanggapan` VALUES (67, 'valid', '2025-06-17 10:16:04', 'valid', 'default.png', 41, 1);
INSERT INTO `tanggapan` VALUES (68, 'mohon ditunggu mbak, kami cek dulu', '2025-06-17 10:16:26', 'pengerjaan', 'default.png', 41, 1);
INSERT INTO `tanggapan` VALUES (69, 'silahkan direfresh dan dicoba lagi mbak gan', '2025-06-17 10:16:38', 'selesai', 'default.png', 41, 1);
INSERT INTO `tanggapan` VALUES (70, 'valid', '2025-06-17 10:29:07', 'proses', 'default.png', 43, 1);
INSERT INTO `tanggapan` VALUES (71, 'valid', '2025-06-17 10:29:14', 'valid', 'default.png', 43, 1);
INSERT INTO `tanggapan` VALUES (72, 'Abaikan saja tidak mempengaruhi transaksi CR,\r\nHanya tidak muncul di sistem order QR', '2025-06-17 10:29:25', 'pengerjaan', 'default.png', 43, 1);
INSERT INTO `tanggapan` VALUES (73, 'selesaai', '2025-06-17 10:29:35', 'selesai', 'default.png', 43, 1);
INSERT INTO `tanggapan` VALUES (74, 'proses', '2025-06-17 10:32:09', 'proses', 'default.png', 44, 1);
INSERT INTO `tanggapan` VALUES (75, 'valid', '2025-06-17 10:32:16', 'valid', 'default.png', 44, 1);
INSERT INTO `tanggapan` VALUES (76, 'si remote mas rendy', '2025-06-17 10:32:33', 'pengerjaan', 'default.png', 44, 1);
INSERT INTO `tanggapan` VALUES (77, 'silahkan di refresh mbak', '2025-06-17 10:32:47', 'selesai', 'default.png', 44, 1);
INSERT INTO `tanggapan` VALUES (78, 'di proses mas alfan', '2025-06-17 10:34:52', 'proses', 'default.png', 45, 1);
INSERT INTO `tanggapan` VALUES (79, 'belum di tanggapi tapi sudah bisa', '2025-06-17 10:35:19', 'tidak_valid', 'default.png', 45, 1);
INSERT INTO `tanggapan` VALUES (80, 'valid', '2025-06-17 10:40:19', 'proses', 'default.png', 46, 1);
INSERT INTO `tanggapan` VALUES (81, 'valid', '2025-06-17 10:40:25', 'valid', 'default.png', 46, 1);
INSERT INTO `tanggapan` VALUES (82, 'proses pengerjaan', '2025-06-17 10:41:33', 'pengerjaan', 'default.png', 46, 1);
INSERT INTO `tanggapan` VALUES (83, 'Segera koor ke opp Ditutup dulu mb , harga yg benar di cr55', '2025-06-17 10:41:40', 'selesai', 'default.png', 46, 1);
INSERT INTO `tanggapan` VALUES (84, 'Proses', '2025-06-17 10:47:51', 'proses', 'default.png', 47, 1);
INSERT INTO `tanggapan` VALUES (85, 'Valid', '2025-06-17 10:47:59', 'valid', 'default.png', 47, 1);
INSERT INTO `tanggapan` VALUES (87, 'Ini maksutnya gimana mb? Menu nya tidak ada atau gimana? Minta tolong fotokan', '2025-06-17 10:48:33', 'pengerjaan', 'default.png', 47, 1);
INSERT INTO `tanggapan` VALUES (88, 'O ya mb, di refresh cek sekarang', '2025-06-17 10:48:52', 'selesai', 'default.png', 47, 1);
INSERT INTO `tanggapan` VALUES (89, 'Proses', '2025-06-17 10:53:27', 'proses', 'default.png', 48, 1);
INSERT INTO `tanggapan` VALUES (90, 'valid', '2025-06-17 10:53:34', 'valid', 'default.png', 48, 1);
INSERT INTO `tanggapan` VALUES (91, 'Mas @Mas Rendy SS IT Pusat minta tolong dibantu', '2025-06-17 10:53:52', 'pengerjaan', 'default.png', 48, 1);
INSERT INTO `tanggapan` VALUES (92, 'sudah aman ya mas, solusi : tidak diapa - apakan (hanya refresh)', '2025-06-17 10:54:06', 'selesai', 'default.png', 48, 1);
INSERT INTO `tanggapan` VALUES (93, 'proses', '2025-06-17 11:04:24', 'proses', 'default.png', 51, 1);
INSERT INTO `tanggapan` VALUES (94, 'valid', '2025-06-17 11:04:32', 'valid', 'default.png', 51, 1);
INSERT INTO `tanggapan` VALUES (95, 'ini sudah dapet info dari pak Handoko belum ya mba', '2025-06-17 11:04:37', 'pengerjaan', 'default.png', 51, 1);
INSERT INTO `tanggapan` VALUES (96, 'Konfirmasi ke pak handoko', '2025-06-17 11:05:02', 'selesai', 'default.png', 51, 1);
INSERT INTO `tanggapan` VALUES (97, 'Proses', '2025-06-17 11:05:44', 'proses', 'default.png', 50, 1);
INSERT INTO `tanggapan` VALUES (98, 'valid', '2025-06-17 11:05:51', 'valid', 'default.png', 50, 1);
INSERT INTO `tanggapan` VALUES (99, 'konfirmasi oleh tim ops keu', '2025-06-17 11:06:10', 'pengerjaan', 'default.png', 50, 1);
INSERT INTO `tanggapan` VALUES (100, '1. Abaikan untuk Warong non QR, tidak berpengaruh pada input penjualan\r\n2. Kemungkinan ada yang menonaktifkan pada aplikasi sipedas.wss - Produk Menu', '2025-06-17 11:06:20', 'selesai', 'default.png', 50, 1);
INSERT INTO `tanggapan` VALUES (101, 'proses', '2025-06-17 11:09:56', 'proses', 'WhatsApp_Image_2025-06-13_at_19_43_23.jpeg', 52, 1);
INSERT INTO `tanggapan` VALUES (102, 'valid', '2025-06-17 11:10:07', 'valid', 'default.png', 52, 1);
INSERT INTO `tanggapan` VALUES (103, 'di perbaiki mas alfan', '2025-06-17 11:11:08', 'pengerjaan', 'default.png', 52, 1);
INSERT INTO `tanggapan` VALUES (105, 'proses', '2025-06-17 11:11:26', 'proses', 'default.png', 52, 1);
INSERT INTO `tanggapan` VALUES (106, 'valid', '2025-06-17 11:11:33', 'valid', 'default.png', 52, 1);
INSERT INTO `tanggapan` VALUES (107, 'di remote mas allfan setelah printer tidak bisa ngeprint', '2025-06-17 11:11:56', 'pengerjaan', 'default.png', 52, 1);
INSERT INTO `tanggapan` VALUES (108, 'Baik bapak, sudah dikonfirmasi oleh kasir yg bersangkutan kalo cr dan nota kemarin sdh aman. Mtr nuwun', '2025-06-17 11:12:01', 'selesai', 'default.png', 52, 1);
INSERT INTO `tanggapan` VALUES (109, 'proses', '2025-06-17 11:13:20', 'proses', 'default.png', 49, 1);
INSERT INTO `tanggapan` VALUES (110, 'tidak ada tanggapan', '2025-06-17 11:13:33', 'tidak_valid', 'default.png', 49, 1);
INSERT INTO `tanggapan` VALUES (111, 'Proses', '2025-06-17 11:26:42', 'proses', 'default.png', 53, 1);
INSERT INTO `tanggapan` VALUES (112, 'v', '2025-06-17 11:26:47', 'valid', 'default.png', 53, 1);
INSERT INTO `tanggapan` VALUES (113, 'di tunggu mbak', '2025-06-17 11:27:01', 'pengerjaan', 'default.png', 53, 1);
INSERT INTO `tanggapan` VALUES (114, 'pencerahan kenapa terjadi kedip2 merah:\r\n1. kertas thermal habis \r\n2. daya voltase dan ampere tidak sesuai, \r\ndaya printer :\r\nprinter QR code = 19 volt / 2,5 Ampere\r\nprinter toko wbd dan ojol opp = 12 volt/2,5 ampere \r\nprinter kasir / CR55 = 19 volt /2,5 ampere\r\n3. kelebihan beban pada terminal listrik ( rol kabel di kasir ) biasanya di gabung dengan freezer LLF atau eskrim', '2025-06-17 11:27:16', 'selesai', 'default.png', 53, 1);
INSERT INTO `tanggapan` VALUES (115, 'proses', '2025-06-17 11:30:03', 'proses', 'default.png', 54, 1);
INSERT INTO `tanggapan` VALUES (116, 'tidak ada tanggapan', '2025-06-17 11:30:15', 'tidak_valid', 'default.png', 54, 1);
INSERT INTO `tanggapan` VALUES (117, 'proses', '2025-06-17 15:37:55', 'proses', 'default.png', 42, 1);
INSERT INTO `tanggapan` VALUES (118, 'tidak ada respon dari ops keu dan pelapor', '2025-06-17 15:38:24', 'tidak_valid', 'default.png', 42, 1);
INSERT INTO `tanggapan` VALUES (119, 'proses', '2025-06-17 15:53:23', 'proses', 'default.png', 55, 1);
INSERT INTO `tanggapan` VALUES (120, 'valid', '2025-06-17 15:53:31', 'valid', 'default.png', 55, 1);
INSERT INTO `tanggapan` VALUES (121, 'Cobak ketik \r\n\r\nhttp://cr55.wss', '2025-06-17 15:53:52', 'pengerjaan', 'default.png', 55, 1);
INSERT INTO `tanggapan` VALUES (122, 'Mengetikan manual alamat web https://cr55.wss', '2025-06-17 15:54:08', 'selesai', 'default.png', 55, 1);
INSERT INTO `tanggapan` VALUES (123, 'proses', '2025-06-17 15:57:14', 'proses', 'default.png', 56, 1);
INSERT INTO `tanggapan` VALUES (124, 'v', '2025-06-17 15:57:18', 'valid', 'default.png', 56, 1);
INSERT INTO `tanggapan` VALUES (125, 'baik mba mohon ditunggu nggih kami bantu cek dahulu', '2025-06-17 15:57:41', 'pengerjaan', 'default.png', 56, 1);
INSERT INTO `tanggapan` VALUES (126, 'proses', '2025-06-17 16:15:05', 'proses', 'default.png', 57, 1);
INSERT INTO `tanggapan` VALUES (127, 'v', '2025-06-17 16:15:10', 'valid', 'default.png', 57, 1);
INSERT INTO `tanggapan` VALUES (128, 'Manejemen wr Kedokan perlu ngobrol deh kyknya, kami mw bantu tapi tidak ada yg standby, sehingga kami kesulitan membantu via telpon', '2025-06-17 16:16:11', 'pengerjaan', 'default.png', 57, 1);
INSERT INTO `tanggapan` VALUES (129, '1. Melibatkan Aparatur IT dan OPS Keu Area Yogyakarta, untuk memperbaiki kabel yg putus. (Makasihnya ke Mas Roy sama mas Fani ya) ????\r\n2. Hasil done', '2025-06-17 16:16:24', 'selesai', 'default.png', 57, 1);
INSERT INTO `tanggapan` VALUES (130, 'proses', '2025-06-17 16:34:51', 'proses', 'default.png', 58, 1);
INSERT INTO `tanggapan` VALUES (131, 'v', '2025-06-17 16:34:59', 'valid', 'default.png', 58, 1);
INSERT INTO `tanggapan` VALUES (132, 'Udh dipastikan stopkontaknya ada aliran listrik?', '2025-06-17 16:35:14', 'pengerjaan', 'default.png', 58, 1);
INSERT INTO `tanggapan` VALUES (133, 'Dibantu Kacab dan SDM Waroeng', '2025-06-17 16:35:26', 'selesai', 'default.png', 58, 1);
INSERT INTO `tanggapan` VALUES (134, 'proses', '2025-06-17 16:38:54', 'proses', 'default.png', 59, 1);
INSERT INTO `tanggapan` VALUES (135, 'v', '2025-06-17 16:38:59', 'valid', 'default.png', 59, 1);
INSERT INTO `tanggapan` VALUES (136, 'proses peremotan', '2025-06-17 16:39:10', 'pengerjaan', 'default.png', 59, 1);
INSERT INTO `tanggapan` VALUES (137, '1. di remote untuk pembersihan slot Ram dan pemindahan slot ram ke soket 12.  Pemindahan soket hardisk karena hardisk tidak terbaca, setelah di pindah hardik terbaca kembali', '2025-06-17 16:39:33', 'selesai', 'default.png', 59, 1);
INSERT INTO `tanggapan` VALUES (138, 'proses', '2025-06-18 10:25:50', 'proses', 'default.png', 60, 1);
INSERT INTO `tanggapan` VALUES (139, 'v', '2025-06-18 10:25:56', 'valid', 'default.png', 60, 1);
INSERT INTO `tanggapan` VALUES (140, 'dipandu pak alfan untuk perbaikan oleh software', '2025-06-18 10:26:28', 'pengerjaan', 'default.png', 60, 1);
INSERT INTO `tanggapan` VALUES (141, 'silahkan di cek kembali ya mbak, ini saya cek dari sini sudah clear', '2025-06-18 10:26:40', 'selesai', 'default.png', 60, 1);
INSERT INTO `tanggapan` VALUES (142, 'proses', '2025-06-18 13:09:26', 'proses', 'default.png', 61, 1);
INSERT INTO `tanggapan` VALUES (143, 'v', '2025-06-18 13:09:32', 'valid', 'default.png', 61, 1);
INSERT INTO `tanggapan` VALUES (144, 'proses peremotan', '2025-06-18 13:09:44', 'pengerjaan', 'default.png', 61, 1);
INSERT INTO `tanggapan` VALUES (145, '- dilakukan penggantian sandi wifi\r\n- merestart router yang digunakan\r\n- merimander agar wifi tidak digunakan untuk yang tidak berkepentingan agar tidak terjadi jaringan lemot', '2025-06-18 13:18:33', 'selesai', 'default.png', 61, 1);
INSERT INTO `tanggapan` VALUES (146, 'proses', '2025-06-18 13:24:46', 'proses', 'default.png', 62, 1);
INSERT INTO `tanggapan` VALUES (147, 'v', '2025-06-18 13:24:51', 'valid', 'default.png', 62, 1);
INSERT INTO `tanggapan` VALUES (148, 'sedan di cek', '2025-06-18 13:25:01', 'pengerjaan', 'default.png', 62, 1);
INSERT INTO `tanggapan` VALUES (149, '- buka device manager\r\n- pilih network adaptor\r\n- pilih driver wifi ( setiap computer nama berbeda) \r\n- atur menjadi disable lalu enable kan Kembali', '2025-06-18 13:25:17', 'selesai', 'default.png', 62, 1);
INSERT INTO `tanggapan` VALUES (150, 'prose', '2025-06-19 09:11:36', 'proses', 'default.png', 63, 1);
INSERT INTO `tanggapan` VALUES (151, 'v', '2025-06-19 09:11:42', 'valid', 'default.png', 63, 1);
INSERT INTO `tanggapan` VALUES (152, 'ini setelah saya cek mas memang ada perlakukan yg tidak wajar dari waroeng yg system belum bisa antisipasi.', '2025-06-19 09:12:43', 'pengerjaan', 'default.png', 63, 1);
INSERT INTO `tanggapan` VALUES (153, 'mengacu dari data di lapangan seperti ini mas, jadi pada so pertama memang terdapat selisih lebih, kemudian ada penerimaan lagi dan so lagi yg menyebabkan jadi selisih so lagi', '2025-06-19 09:13:43', 'selesai', 'WhatsApp_Image_2025-06-19_at_08_32_22.jpeg', 63, 1);
INSERT INTO `tanggapan` VALUES (154, 'proses', '2025-06-19 09:16:24', 'proses', 'default.png', 64, 1);
INSERT INTO `tanggapan` VALUES (155, 'v', '2025-06-19 09:16:32', 'valid', 'default.png', 64, 1);
INSERT INTO `tanggapan` VALUES (156, 'Dicek dulu di kartu stoknya mas sudah masuk belum', '2025-06-19 09:16:59', 'pengerjaan', 'default.png', 64, 1);
INSERT INTO `tanggapan` VALUES (157, 'pakai kartu stok dulu mas, lsh mau dicek dahulu sama pak rendi, Untuk lsh sifatnya laporan pembantu mas jika ada yg aneh bisa dicek dikartu stoknya dahulu', '2025-06-19 09:17:53', 'selesai', 'WhatsApp_Image_2025-06-13_at_15_43_15.jpeg', 64, 1);
INSERT INTO `tanggapan` VALUES (158, 'proses', '2025-06-26 14:37:58', 'proses', 'default.png', 65, 1);
INSERT INTO `tanggapan` VALUES (159, 'v', '2025-06-26 14:38:04', 'valid', 'default.png', 65, 1);
INSERT INTO `tanggapan` VALUES (160, 'pengerjan', '2025-06-26 14:38:18', 'pengerjaan', 'default.png', 65, 1);
INSERT INTO `tanggapan` VALUES (161, '1. Abaikan untuk Warong non QR, tidak berpengaruh pada input penjualan\r\n2. Kemungkinan ada yang menonaktifkan pada aplikasi sipedas.wss - Produk Menu', '2025-06-26 14:38:25', 'selesai', 'default.png', 65, 1);
INSERT INTO `tanggapan` VALUES (162, 'Proses', '2025-06-26 14:42:28', 'proses', 'default.png', 66, 1);
INSERT INTO `tanggapan` VALUES (163, 'v', '2025-06-26 14:42:40', 'valid', 'default.png', 66, 1);
INSERT INTO `tanggapan` VALUES (164, 'prngerjann', '2025-06-26 14:42:57', 'pengerjaan', 'default.png', 66, 1);
INSERT INTO `tanggapan` VALUES (165, 'dibantu ops keuangan', '2025-06-26 14:43:08', 'selesai', 'default.png', 66, 1);
INSERT INTO `tanggapan` VALUES (166, 'proses', '2025-06-26 14:46:34', 'proses', 'default.png', 67, 1);
INSERT INTO `tanggapan` VALUES (167, 'v', '2025-06-26 14:46:43', 'valid', 'default.png', 67, 1);
INSERT INTO `tanggapan` VALUES (168, 'sedang di remot', '2025-06-26 14:46:55', 'pengerjaan', 'default.png', 67, 1);
INSERT INTO `tanggapan` VALUES (169, 'Ini tadi diganti kabel power yang lama pak, kabel power sebelom nya malah baru tapi dicek juga tidak ada kerusakan untuk kabel power yg baru itu', '2025-06-26 14:47:21', 'selesai', 'default.png', 67, 1);
INSERT INTO `tanggapan` VALUES (170, 'proses', '2025-06-26 14:52:30', 'proses', 'default.png', 68, 1);
INSERT INTO `tanggapan` VALUES (171, 'tidak ada tanggapan', '2025-06-26 14:52:40', 'tidak_valid', 'default.png', 68, 1);
INSERT INTO `tanggapan` VALUES (172, 'proses', '2025-06-26 14:57:51', 'proses', 'default.png', 69, 1);
INSERT INTO `tanggapan` VALUES (173, 'v', '2025-06-26 14:58:46', 'valid', 'default.png', 69, 1);
INSERT INTO `tanggapan` VALUES (174, 'sedang dalam panduan pak alfan', '2025-06-26 14:59:10', 'pengerjaan', 'default.png', 69, 1);
INSERT INTO `tanggapan` VALUES (175, 'Mengetikan manual alamat web https://cr55.wss', '2025-06-26 14:59:25', 'selesai', 'default.png', 69, 1);
INSERT INTO `tanggapan` VALUES (176, 'Di perbaiki tim software', '2025-06-26 15:39:19', 'selesai', 'default.png', 56, 1);
INSERT INTO `tanggapan` VALUES (177, 'Proses', '2025-06-26 15:50:05', 'proses', 'default.png', 70, 1);
INSERT INTO `tanggapan` VALUES (178, 'v', '2025-06-26 15:50:09', 'valid', 'default.png', 70, 1);
INSERT INTO `tanggapan` VALUES (179, 'Prngerjaan oleh mas risco dan mas ihsan', '2025-06-26 15:50:25', 'pengerjaan', 'default.png', 70, 1);
INSERT INTO `tanggapan` VALUES (180, 'Dibantu tim software', '2025-06-26 15:50:56', 'selesai', 'default.png', 70, 1);
INSERT INTO `tanggapan` VALUES (181, 'proses', '2025-06-26 15:54:27', 'proses', 'default.png', 71, 1);
INSERT INTO `tanggapan` VALUES (182, 'v', '2025-06-26 15:54:32', 'valid', 'default.png', 71, 1);
INSERT INTO `tanggapan` VALUES (183, 'Sedang dalam proses remot pak alfan', '2025-06-26 15:54:50', 'pengerjaan', 'default.png', 71, 1);
INSERT INTO `tanggapan` VALUES (184, '1. Melibatkan Aparatur IT dan OPS Keu Area Yogyakarta, untuk memperbaiki kabel yg putus. (Makasihnya ke Mas Roy sama mas Fani ya) ????\r\n2. Hasil done ✅', '2025-06-26 15:54:56', 'selesai', 'default.png', 71, 1);
INSERT INTO `tanggapan` VALUES (185, 'Proses', '2025-06-26 15:57:50', 'proses', 'default.png', 72, 1);
INSERT INTO `tanggapan` VALUES (186, 'v', '2025-06-26 15:57:55', 'valid', 'default.png', 72, 1);
INSERT INTO `tanggapan` VALUES (187, 'Sedang proses remote', '2025-06-26 15:58:16', 'pengerjaan', 'default.png', 72, 1);
INSERT INTO `tanggapan` VALUES (188, 'dibantu Kacab dan SDM Waroeng', '2025-06-26 15:58:36', 'selesai', 'default.png', 72, 1);
INSERT INTO `tanggapan` VALUES (189, 'Proses', '2025-06-26 16:04:19', 'proses', 'default.png', 74, 1);
INSERT INTO `tanggapan` VALUES (190, 'v', '2025-06-26 16:04:24', 'valid', 'default.png', 74, 1);
INSERT INTO `tanggapan` VALUES (191, 'sedang dalam remote pak risco', '2025-06-26 16:04:44', 'pengerjaan', 'default.png', 74, 1);
INSERT INTO `tanggapan` VALUES (192, 'Followup : akses url manual\r\nStatus : Done ✅', '2025-06-26 16:05:02', 'selesai', 'default.png', 74, 1);
INSERT INTO `tanggapan` VALUES (193, 'Proses', '2025-06-26 16:08:14', 'proses', 'default.png', 75, 1);
INSERT INTO `tanggapan` VALUES (194, 'v', '2025-06-26 16:08:20', 'valid', 'default.png', 75, 1);
INSERT INTO `tanggapan` VALUES (195, 'di remote pak rendy', '2025-06-26 16:09:19', 'pengerjaan', 'default.png', 75, 1);
INSERT INTO `tanggapan` VALUES (196, 'silahkan di cek kembali ya mbak, ini saya cek dari sini sudah clear', '2025-06-26 16:09:33', 'selesai', 'default.png', 75, 1);
INSERT INTO `tanggapan` VALUES (197, 'proses', '2025-06-26 16:13:34', 'proses', 'default.png', 73, 1);
INSERT INTO `tanggapan` VALUES (198, 'v', '2025-06-26 16:13:39', 'valid', 'default.png', 73, 1);
INSERT INTO `tanggapan` VALUES (199, 'pengerjaan oleh sdm area', '2025-06-26 16:13:53', 'pengerjaan', 'default.png', 73, 1);
INSERT INTO `tanggapan` VALUES (200, 'dibantu oleh sdm area', '2025-06-26 16:14:05', 'selesai', 'default.png', 73, 1);
INSERT INTO `tanggapan` VALUES (201, 'Proses', '2025-06-26 16:22:51', 'proses', 'default.png', 76, 1);
INSERT INTO `tanggapan` VALUES (202, 'v', '2025-06-26 16:22:56', 'valid', 'default.png', 76, 1);
INSERT INTO `tanggapan` VALUES (203, 'sedang dalam pengerjaan', '2025-06-26 16:23:07', 'pengerjaan', 'default.png', 76, 1);
INSERT INTO `tanggapan` VALUES (204, 'Refresh mb ditunggu saja', '2025-06-26 16:23:25', 'selesai', 'default.png', 76, 1);
INSERT INTO `tanggapan` VALUES (205, 'proses', '2025-06-26 16:33:23', 'proses', 'default.png', 77, 1);
INSERT INTO `tanggapan` VALUES (206, 'v', '2025-06-26 16:33:28', 'valid', 'default.png', 77, 1);
INSERT INTO `tanggapan` VALUES (207, 'proses pengerjaan', '2025-06-26 16:33:42', 'pengerjaan', 'default.png', 77, 1);
INSERT INTO `tanggapan` VALUES (208, 'di bantu ops keuangan', '2025-06-26 16:34:12', 'selesai', 'default.png', 77, 1);
INSERT INTO `tanggapan` VALUES (209, 'Proses', '2025-06-26 16:39:05', 'proses', 'default.png', 78, 1);
INSERT INTO `tanggapan` VALUES (210, 'v', '2025-06-26 16:39:10', 'valid', 'default.png', 78, 1);
INSERT INTO `tanggapan` VALUES (211, 'proses pengerjaan', '2025-06-26 16:39:24', 'pengerjaan', 'default.png', 78, 1);
INSERT INTO `tanggapan` VALUES (212, 'Dibantu oleh sdm Area', '2025-06-26 16:39:44', 'selesai', 'default.png', 78, 1);
INSERT INTO `tanggapan` VALUES (213, 'proses', '2025-06-26 16:43:15', 'proses', 'default.png', 79, 1);
INSERT INTO `tanggapan` VALUES (214, 'v', '2025-06-26 16:43:20', 'valid', 'default.png', 79, 1);
INSERT INTO `tanggapan` VALUES (215, 'remote oleh pak alfan', '2025-06-26 16:43:38', 'pengerjaan', 'default.png', 79, 1);
INSERT INTO `tanggapan` VALUES (216, 'dengan menggunakan command fsck -y /dev/nvme0n1p2 lalu reboot', '2025-06-26 16:44:12', 'selesai', 'default.png', 79, 1);
INSERT INTO `tanggapan` VALUES (217, 'proses', '2025-06-26 16:49:23', 'proses', 'default.png', 80, 1);
INSERT INTO `tanggapan` VALUES (218, 'v', '2025-06-26 16:49:28', 'valid', 'default.png', 80, 1);
INSERT INTO `tanggapan` VALUES (219, 'proses remote', '2025-06-26 16:49:38', 'pengerjaan', 'default.png', 80, 1);
INSERT INTO `tanggapan` VALUES (220, 'Shutdown dan pengecekan peripheral komputer\r\n\r\nStatus :\r\nDone', '2025-06-26 16:49:45', 'selesai', 'default.png', 80, 1);
INSERT INTO `tanggapan` VALUES (221, 'proses', '2025-06-26 16:52:06', 'proses', 'default.png', 81, 1);
INSERT INTO `tanggapan` VALUES (222, 'v', '2025-06-26 16:52:13', 'valid', 'default.png', 81, 1);
INSERT INTO `tanggapan` VALUES (223, 'proses remote oleh pak alfan', '2025-06-26 16:52:26', 'pengerjaan', 'default.png', 81, 1);
INSERT INTO `tanggapan` VALUES (224, '1. Membersihkan SSD dengan penghapus\r\n2. Dibantu keuangan dan personal (gk tau namanya siapa) Makasihnya ke mas yg bantu smpean tadi ya', '2025-06-26 16:52:31', 'selesai', 'default.png', 81, 1);
INSERT INTO `tanggapan` VALUES (225, 'proses', '2025-06-27 16:33:36', 'proses', 'default.png', 82, 1);
INSERT INTO `tanggapan` VALUES (226, 'v', '2025-06-27 16:33:40', 'valid', 'default.png', 82, 1);
INSERT INTO `tanggapan` VALUES (227, 'proses remot mas alfan', '2025-06-27 16:33:52', 'pengerjaan', 'default.png', 82, 1);
INSERT INTO `tanggapan` VALUES (228, '1. Pastikan Konektor LAN tertancap dan menyala kedip2\r\n2. Pastikan sudah melakukan login pada Mikrotik \r\n3. Restart komputer', '2025-06-27 16:34:03', 'selesai', 'default.png', 82, 1);
INSERT INTO `tanggapan` VALUES (229, 'proses', '2025-06-27 16:47:42', 'proses', 'default.png', 83, 1);
INSERT INTO `tanggapan` VALUES (230, 'v', '2025-06-27 16:47:46', 'valid', 'default.png', 83, 1);
INSERT INTO `tanggapan` VALUES (231, 'proses remote pak alfan', '2025-06-27 16:47:59', 'pengerjaan', 'default.png', 83, 1);
INSERT INTO `tanggapan` VALUES (232, '1. Pengecekan pada jalur jaringan Mikrotik ke Switch \r\n2. Ditemukan Konektor yg lepas\r\n3. Di tancapkan kembali konektornya,', '2025-06-27 16:48:05', 'selesai', 'default.png', 83, 1);
INSERT INTO `tanggapan` VALUES (233, 'prosaes', '2025-06-27 16:56:44', 'proses', 'default.png', 88, 1);
INSERT INTO `tanggapan` VALUES (234, 'v', '2025-06-27 16:56:49', 'valid', 'default.png', 88, 1);
INSERT INTO `tanggapan` VALUES (235, 'Rekomendasi tindakan Karantanyar :\r\n\r\nBahan :\r\n1. Barel RJ45\r\n2. Kabel RJ45 CAT 6 (secukupnya dari yg putus ke Kamera/ NVR)\r\n3. konektor RJ45 \r\n\r\nSilahkan di surveikan di toko komputer terdekat, kemudian diajukan menggunakan Plafon WR\r\n\r\nPengerjaan :\r\n1. Potong pada kabel yang rusak\r\n2. Ganti kabel yg lama dgn yg baru\r\n3. Sambungkan dgn Barel RJ45', '2025-06-27 16:56:55', 'pengerjaan', 'default.png', 88, 1);
INSERT INTO `tanggapan` VALUES (236, 'proses', '2025-06-27 16:57:31', 'proses', 'default.png', 87, 1);
INSERT INTO `tanggapan` VALUES (237, 'v', '2025-06-27 16:57:36', 'valid', 'default.png', 87, 1);
INSERT INTO `tanggapan` VALUES (238, 'Rekomendasi tindakan Klodran :\r\n\r\nBahan :\r\n1. Barel RJ45\r\n2. Kabel RJ45 CAT 6 (jarak paling dekat dari yg putus ke Kamera atau NVR)\r\n3. konektor RJ45 \r\n\r\nSilahkan di surveikan di toko komputer terdekat, kemudian diajukan menggunakan Plafon WR\r\n\r\nPengerjaan :\r\n1. Potong pada kabel yang rusak\r\n2. Ganti kabel yg lama dgn yg baru\r\n3. Sambungkan dgn Barel RJ45', '2025-06-27 16:57:40', 'pengerjaan', 'default.png', 87, 1);
INSERT INTO `tanggapan` VALUES (239, 'proses', '2025-06-28 09:41:29', 'proses', 'default.png', 91, 1);
INSERT INTO `tanggapan` VALUES (240, 'v', '2025-06-28 09:41:39', 'valid', 'default.png', 91, 1);
INSERT INTO `tanggapan` VALUES (241, 'sedang dalam proses pak jamhuri', '2025-06-28 09:42:08', 'pengerjaan', 'default.png', 91, 1);
INSERT INTO `tanggapan` VALUES (242, 'Proses', '2025-06-28 09:45:21', 'proses', 'default.png', 92, 1);
INSERT INTO `tanggapan` VALUES (243, 'Asisten produksi tidak bisa bantu,\r\n\r\nkordinator kasir tidak bisa ditelpon \r\n\r\nAsisten OPP tidak bisa ditelpon', '2025-06-28 09:45:59', 'tidak_valid', 'default.png', 92, 1);
INSERT INTO `tanggapan` VALUES (244, 'proses', '2025-06-28 09:53:53', 'proses', 'default.png', 84, 1);
INSERT INTO `tanggapan` VALUES (245, 'v', '2025-06-28 09:53:58', 'valid', 'default.png', 84, 1);
INSERT INTO `tanggapan` VALUES (246, '1. Pastikan device tersambung dengan internet \r\n2. Pastikan settingan notifikasi android di aplikasi shopee menyala\r\n3. Pastikan aplikasi shopee berjalan pada background\r\n4. Lakukan ujicoba notifikasi pada aplikasi shopee secara berkala', '2025-06-28 09:54:09', 'pengerjaan', 'default.png', 84, 1);
INSERT INTO `tanggapan` VALUES (247, 'Tahap pengecekan :\r\n1. Pastikan device tersambung dengan internet \r\n2. Pastikan settingan notifikasi android di aplikasi shopee menyala\r\n3. Pastikan aplikasi shopee berjalan pada background\r\n4. Lakukan ujicoba notifikasi pada aplikasi shopee secara berkala\r\n\r\nUji coba berjalan 1,2,4\r\nstatus : clear', '2025-06-28 09:55:42', 'selesai', 'default.png', 84, 1);
INSERT INTO `tanggapan` VALUES (248, 'proses', '2025-06-28 09:57:24', 'proses', 'default.png', 89, 1);
INSERT INTO `tanggapan` VALUES (249, 'v', '2025-06-28 09:57:28', 'valid', 'default.png', 89, 1);
INSERT INTO `tanggapan` VALUES (250, 'sedang bantu cek oleh mas @Pak Ihsanuddin SS IT Pusat', '2025-06-28 09:57:48', 'pengerjaan', 'default.png', 89, 1);
INSERT INTO `tanggapan` VALUES (251, 'proses', '2025-06-28 14:40:10', 'proses', 'default.png', 96, 1);
INSERT INTO `tanggapan` VALUES (252, 'v', '2025-06-28 14:40:15', 'valid', 'default.png', 96, 1);
INSERT INTO `tanggapan` VALUES (253, 'sedang di cek oleh pak rendy', '2025-06-28 14:40:32', 'pengerjaan', 'default.png', 96, 1);
INSERT INTO `tanggapan` VALUES (254, 'proses', '2025-07-08 13:51:04', 'proses', 'default.png', 95, 1);
INSERT INTO `tanggapan` VALUES (255, 'v', '2025-07-08 13:51:09', 'valid', 'default.png', 95, 1);
INSERT INTO `tanggapan` VALUES (256, 'dipsandu oleh pak jamhuri', '2025-07-08 13:51:27', 'pengerjaan', 'default.png', 95, 1);
INSERT INTO `tanggapan` VALUES (257, 'sudah di pandu oleh IT Area', '2025-07-08 13:51:56', 'selesai', 'default.png', 95, 1);
INSERT INTO `tanggapan` VALUES (258, 'p', '2025-07-09 09:49:46', 'proses', 'default.png', 90, 1);
INSERT INTO `tanggapan` VALUES (259, 'v', '2025-07-09 09:49:51', 'valid', 'default.png', 90, 1);
INSERT INTO `tanggapan` VALUES (260, 'sedang di bantu pak ihsan', '2025-07-09 09:50:04', 'pengerjaan', 'default.png', 90, 1);
INSERT INTO `tanggapan` VALUES (261, 'dibantu tim software', '2025-07-09 09:50:18', 'selesai', 'default.png', 90, 1);
INSERT INTO `tanggapan` VALUES (262, 'proses', '2025-07-09 10:15:09', 'proses', 'default.png', 98, 1);
INSERT INTO `tanggapan` VALUES (263, 'v', '2025-07-09 10:15:14', 'valid', 'default.png', 98, 1);
INSERT INTO `tanggapan` VALUES (264, 'sedang di pandu it area', '2025-07-09 10:15:27', 'pengerjaan', 'default.png', 98, 1);
INSERT INTO `tanggapan` VALUES (265, '1. Indibiz Los - Teknisi Indihome melakukan perbaikan \r\n2. Teknisi Indibiz memindahkan jaringan PC Keu langsung di modem Indibiz sehingga tidak bisa akses sipedas.wss\r\n3. IT pusat melakukan pemindahan jaringan di bawah jaringan Mikrotik \r\n4. Done', '2025-07-09 10:15:32', 'selesai', 'default.png', 98, 1);
INSERT INTO `tanggapan` VALUES (266, 'proses', '2025-07-09 10:20:06', 'proses', 'default.png', 99, 1);
INSERT INTO `tanggapan` VALUES (267, 'v', '2025-07-09 10:20:11', 'valid', 'default.png', 99, 1);
INSERT INTO `tanggapan` VALUES (268, 'sedang dalam remote oleh pak alfan', '2025-07-09 10:20:29', 'pengerjaan', 'default.png', 99, 1);
INSERT INTO `tanggapan` VALUES (269, 'dilaporkan ke telkom karena internet loss', '2025-07-09 10:21:00', 'selesai', 'default.png', 99, 1);
INSERT INTO `tanggapan` VALUES (270, 'proses', '2025-07-09 13:28:25', 'proses', 'default.png', 93, 1);
INSERT INTO `tanggapan` VALUES (271, 'v', '2025-07-09 13:28:31', 'valid', 'default.png', 93, 1);
INSERT INTO `tanggapan` VALUES (272, 'sedang dilakukan remote IT area', '2025-07-09 13:29:00', 'pengerjaan', 'default.png', 93, 1);
INSERT INTO `tanggapan` VALUES (273, 'sudah dibantu IT area', '2025-07-09 13:29:26', 'selesai', 'default.png', 93, 1);
INSERT INTO `tanggapan` VALUES (274, 'PROSES', '2025-07-14 09:16:51', 'proses', 'default.png', 101, 1);
INSERT INTO `tanggapan` VALUES (275, 'V', '2025-07-14 09:17:03', 'valid', 'default.png', 101, 1);
INSERT INTO `tanggapan` VALUES (276, '1. Restart POE\r\n2. Copot kabel power lalu colokan lagi\r\n3. Dibantu pak @Pak Alfan SS IT Malang \r\n3. Done ✅', '2025-07-14 09:17:34', 'pengerjaan', 'default.png', 101, 1);
INSERT INTO `tanggapan` VALUES (277, '1. Restart POE\r\n2. Copot kabel power lalu colokan lagi\r\n3. Dibantu pak @Pak Alfan SS IT Malang \r\n3. Done ✅', '2025-07-14 09:19:02', 'selesai', 'default.png', 101, 1);
INSERT INTO `tanggapan` VALUES (278, '1. Untuk HDD yg tidak bisa menyimpan,\r\nCobak lakukan reset pada HDD terlebih dahulu, kira2 apakah bisa melakukan Ndan?\r\n\r\nLalu apabila tidak bisa, fix perlu penggantian HDD baru 2TB (Pengajuan bisa di titipkan SDM Area)\r\n2. Bantu Fotokan Ndan, apabila memungkinkan, bisa menanyakan stok Kabel LAN yg ada di Area. Apabila ada bisa di minta untuk dilakukan penarikan kabel secara mandiri.\r\n\r\n1. Sudah di restat tapi belum bisa menyimpan  akan saya restat lagi\r\n2. Kabel LAN sudah ada pak tinggal pemasangan saja yg tidak bisa menambahkan ke daftar cctv', '2025-07-14 09:36:25', 'proses', 'default.png', 104, 1);
INSERT INTO `tanggapan` VALUES (279, 'CCTVnya disambungkan di PoE', '2025-07-14 09:37:26', 'valid', 'default.png', 104, 1);
INSERT INTO `tanggapan` VALUES (280, 'VALID', '2025-07-14 09:38:13', 'pengerjaan', 'default.png', 104, 1);
INSERT INTO `tanggapan` VALUES (281, '1. Untuk HDD yg tidak bisa menyimpan, Cobak lakukan reset pada HDD terlebih dahulu, kira2 apakah bisa melakukan Ndan? Lalu apabila tidak bisa, fix perlu penggantian HDD baru 2TB (Pengajuan bisa di titipkan SDM Area) 2. Bantu Fotokan Ndan, apabila memungkinkan, bisa menanyakan stok Kabel LAN yg ada di Area. Apabila ada bisa di minta untuk dilakukan penarikan kabel secara mandiri. 1. Sudah di restat tapi belum bisa menyimpan akan saya restat lagi 2. Kabel LAN sudah ada pak tinggal pemasangan saja yg tidak bisa menambahkan ke daftar cctv', '2025-07-14 09:57:42', 'selesai', 'default.png', 104, 1);
INSERT INTO `tanggapan` VALUES (282, 'WPS tidak terpakai di uninstall', '2025-07-14 09:47:18', 'proses', 'default.png', 105, 1);
INSERT INTO `tanggapan` VALUES (283, 'Valid', '2025-07-14 09:47:37', 'valid', 'default.png', 105, 1);
INSERT INTO `tanggapan` VALUES (284, 'Sedang dalam proses', '2025-07-14 09:58:25', 'pengerjaan', 'default.png', 105, 1);
INSERT INTO `tanggapan` VALUES (285, 'WPS tidak terpakai di uninstall', '2025-07-14 09:58:40', 'selesai', 'default.png', 105, 1);
INSERT INTO `tanggapan` VALUES (286, 'Cek Konektor LAN dan kabel LAN pada PoE Menuju kamera', '2025-07-14 09:54:12', 'proses', 'default.png', 106, 1);
INSERT INTO `tanggapan` VALUES (287, 'Valid', '2025-07-14 09:54:57', 'valid', 'default.png', 106, 1);
INSERT INTO `tanggapan` VALUES (288, 'Sedang dalam pengerjaan', '2025-07-14 09:56:01', 'pengerjaan', 'default.png', 106, 1);
INSERT INTO `tanggapan` VALUES (289, 'Pengecekan Konektor LAN dan kabel LAN pada PoE Menuju kamera', '2025-07-14 09:59:33', 'selesai', 'default.png', 106, 1);
INSERT INTO `tanggapan` VALUES (290, 'Proses', '2025-07-14 10:05:35', 'proses', 'default.png', 107, 1);
INSERT INTO `tanggapan` VALUES (291, 'Valid', '2025-07-14 10:05:51', 'valid', 'default.png', 107, 1);
INSERT INTO `tanggapan` VALUES (343, 'Di pandu tim it area', '2025-07-14 11:26:02', 'pengerjaan', 'default.png', 107, 1);
INSERT INTO `tanggapan` VALUES (344, 'Penindaklanjutan oleh Jamhuri', '2025-07-14 11:26:11', 'selesai', 'default.png', 107, 1);
INSERT INTO `tanggapan` VALUES (294, 'Presensi dilakukan dengan arahan untuk screenshoot dikirim melalui group rekap akan dilakukan secara manual.', '2025-07-14 10:21:39', 'proses', 'default.png', 108, 1);
INSERT INTO `tanggapan` VALUES (295, 'Valid', '2025-07-14 10:13:14', 'valid', 'default.png', 108, 1);
INSERT INTO `tanggapan` VALUES (307, 'Arahan untuk screenshoot dikirim melalui group wr', '2025-07-14 10:23:03', 'pengerjaan', 'default.png', 108, 1);
INSERT INTO `tanggapan` VALUES (308, 'Untuk presensi pulang, silahkan lakukan Screenshot pada aplikasi dan kirim ke group wr untuk di rekap manual. Saat ini sedang proses perbaikan server.', '2025-07-14 10:23:23', 'selesai', 'default.png', 108, 1);
INSERT INTO `tanggapan` VALUES (298, 'Prsensi dilakukan dengan rekap manual.', '2025-07-14 10:18:37', 'proses', 'default.png', 109, 1);
INSERT INTO `tanggapan` VALUES (302, 'Valid', '2025-07-14 10:20:24', 'valid', 'default.png', 109, 1);
INSERT INTO `tanggapan` VALUES (303, 'Presensi dilakukan dengan arahan untuk screenshoot dikirim melalui group rekap akan dilakukan secara manual.', '2025-07-14 10:20:43', 'pengerjaan', 'default.png', 109, 1);
INSERT INTO `tanggapan` VALUES (304, 'Untuk presensi pulang, silahkan lakukan Screenshot pada aplikasi dan kirim ke group wr untuk di rekap manual. Saat ini sedang proses perbaikan server.', '2025-07-14 10:20:55', 'selesai', 'default.png', 109, 1);
INSERT INTO `tanggapan` VALUES (321, 'PC tidak mau menyala pasca listrik padam', '2025-07-14 10:54:09', 'proses', 'default.png', 112, 1);
INSERT INTO `tanggapan` VALUES (322, 'Valid', '2025-07-14 10:54:18', 'valid', 'default.png', 112, 1);
INSERT INTO `tanggapan` VALUES (323, 'Dilakukan melalui VC via WhatsApp', '2025-07-14 10:54:48', 'pengerjaan', 'default.png', 112, 1);
INSERT INTO `tanggapan` VALUES (324, 'Penyelesaian dilakukan melalui VC via WhatsApp', '2025-07-14 10:55:16', 'selesai', 'default.png', 112, 1);
INSERT INTO `tanggapan` VALUES (325, 'Pengecekan indikator yang berkedip di eksekusi oleh Ismail SS IT Semarang', '2025-07-14 11:03:13', 'proses', 'default.png', 113, 1);
INSERT INTO `tanggapan` VALUES (326, 'Valid', '2025-07-14 11:00:30', 'valid', 'default.png', 113, 1);
INSERT INTO `tanggapan` VALUES (333, 'Pengecekan POE indikator kedip2 apa tidak, dan pengecekan sudah berkedip dan sudah dipastikan tidak ada kendala', '2025-07-14 11:04:04', 'pengerjaan', 'default.png', 113, 1);
INSERT INTO `tanggapan` VALUES (316, 'Setting NVR', '2025-07-14 10:44:25', 'proses', 'default.png', 110, 1);
INSERT INTO `tanggapan` VALUES (317, 'Valid', '2025-07-14 10:44:31', 'valid', 'default.png', 110, 1);
INSERT INTO `tanggapan` VALUES (318, 'Instal aplikasi SADP Tools di Windows di jaringan yg sama dengan NVR, untuk cek masing2 kamera.', '2025-07-14 10:44:59', 'pengerjaan', 'default.png', 110, 1);
INSERT INTO `tanggapan` VALUES (319, 'NVR tidak terdeteksi di jaringan, Cobak pastikan Kabel LAN NVR,\r\nTukar dengan kabel Uplink biru, lalu tembak IP di chorme 192.168.1.45', '2025-07-14 10:46:17', 'selesai', 'default.png', 110, 1);
INSERT INTO `tanggapan` VALUES (334, 'Pengecekan POE indikator kedip2 apa tidak, dan pengecekan sudah berkedip dan sudah dipastikan tidak ada kendala, masalah terselesaikan', '2025-07-14 11:04:13', 'selesai', 'default.png', 113, 1);
INSERT INTO `tanggapan` VALUES (335, 'Pengecekan kondisi konektornya di kamera dan PoE', '2025-07-14 11:11:01', 'proses', 'default.png', 114, 1);
INSERT INTO `tanggapan` VALUES (336, 'Valid', '2025-07-14 11:11:07', 'valid', 'default.png', 114, 1);
INSERT INTO `tanggapan` VALUES (337, 'Pengecekan kabel untuk memastikan ada atau tidaknya korosi pada konektrnya kemudian memberikan arahan untuk mencopot Camera dari tempat asal, kemudian camera dicobak pake kabel pendek ke PoE', '2025-07-14 11:14:14', 'pengerjaan', 'default.png', 114, 1);
INSERT INTO `tanggapan` VALUES (338, 'Pengecekan Camera dan menopot dari tempat asal, kemudian camera dicobak pake kabel pendek ke PoE dan dilakukan arahan melalui VC via WhatsApp', '2025-07-14 11:15:28', 'selesai', 'default.png', 114, 1);
INSERT INTO `tanggapan` VALUES (339, '1. Sambungkan printer dulu sebelum mencetak\r\n2. Jalankan Aplikasi di background, jgn di close aplikasinya', '2025-07-14 11:23:55', 'proses', 'default.png', 115, 1);
INSERT INTO `tanggapan` VALUES (340, 'Valid', '2025-07-14 11:24:02', 'valid', 'default.png', 115, 1);
INSERT INTO `tanggapan` VALUES (341, 'Silahkan Hapus data aplikasi, lalu kemudian login lagi', '2025-07-14 11:26:57', 'pengerjaan', 'default.png', 115, 1);
INSERT INTO `tanggapan` VALUES (342, 'Hapus data pada aplikasi, kemudian login kembali dilanjutkan penyelesai melalui VC via WhatsApp', '2025-07-14 11:26:48', 'selesai', 'default.png', 115, 1);
INSERT INTO `tanggapan` VALUES (345, 'p', '2025-07-17 08:37:59', 'proses', 'default.png', 117, 1);
INSERT INTO `tanggapan` VALUES (346, 'v', '2025-07-17 08:38:05', 'valid', 'default.png', 117, 1);
INSERT INTO `tanggapan` VALUES (347, 'di cek oleh mas rendy', '2025-07-17 08:38:21', 'pengerjaan', 'default.png', 117, 1);
INSERT INTO `tanggapan` VALUES (348, 'dibantu tim software', '2025-07-17 08:38:33', 'selesai', 'default.png', 117, 1);
INSERT INTO `tanggapan` VALUES (349, 'Kabel Telkom ada yg putus.\r\nSudah saya laporkan.\r\nMohon di tunggu', '2025-07-17 16:24:21', 'proses', 'default.png', 119, 1);
INSERT INTO `tanggapan` VALUES (350, 'Valid', '2025-07-17 16:24:30', 'valid', 'default.png', 119, 1);
INSERT INTO `tanggapan` VALUES (351, 'Proses', '2025-07-17 16:24:42', 'pengerjaan', 'default.png', 119, 1);
INSERT INTO `tanggapan` VALUES (352, 'Pelaporan ke pihak telkom sudah dilakukan, dan menunggu sampai terhubung kembali, selesai', '2025-07-17 16:25:40', 'selesai', 'default.png', 119, 1);
INSERT INTO `tanggapan` VALUES (353, '1. Kacab melihat tutorial di Youtube dan langsung mempraktekannya', '2025-07-17 16:30:45', 'proses', 'default.png', 120, 1);
INSERT INTO `tanggapan` VALUES (354, 'Valid', '2025-07-17 16:30:55', 'valid', 'default.png', 120, 1);
INSERT INTO `tanggapan` VALUES (355, 'Proses', '2025-07-17 16:31:07', 'pengerjaan', 'default.png', 120, 1);
INSERT INTO `tanggapan` VALUES (356, '1. Kacab melihat tutorial di Youtube dan langsung mempraktekannya\r\n2. Selesai', '2025-07-17 16:31:33', 'selesai', 'default.png', 120, 1);
INSERT INTO `tanggapan` VALUES (357, '1. mikrotik dan wifi direstart\r\n2. ojol di restart,\r\n3. kemudian CR55nya baru di restart kembali', '2025-07-17 16:34:40', 'proses', 'default.png', 121, 1);
INSERT INTO `tanggapan` VALUES (358, 'Valid', '2025-07-17 16:34:49', 'valid', 'default.png', 121, 1);
INSERT INTO `tanggapan` VALUES (359, 'Proses', '2025-07-17 16:34:56', 'pengerjaan', 'default.png', 121, 1);
INSERT INTO `tanggapan` VALUES (360, '1. mikrotik dan wifi direstart\r\n2. ojol di restart,\r\n3. kemudian CR55nya baru di restart kembali\r\n4. Selesai', '2025-07-17 16:35:10', 'selesai', 'default.png', 121, 1);
INSERT INTO `tanggapan` VALUES (361, '1. Matikan computer dan copot semua kabel yg terhubung\r\n2. Pindahkan Kabel SATA ke port sata yg lain\r\n3. Pindahkan HDD ke CPU yg lain', '2025-07-17 16:38:44', 'proses', 'default.png', 122, 1);
INSERT INTO `tanggapan` VALUES (362, 'Valid', '2025-07-17 16:38:53', 'valid', 'default.png', 122, 1);
INSERT INTO `tanggapan` VALUES (363, 'Proses', '2025-07-17 16:39:03', 'pengerjaan', 'default.png', 122, 1);
INSERT INTO `tanggapan` VALUES (364, '1. Matikan computer dan copot semua kabel yg terhubung\r\n2. Pindahkan Kabel SATA ke port sata yg lain\r\n3. Pindahkan HDD ke CPU yg lain\r\n4. Selesai', '2025-07-17 16:39:19', 'selesai', 'default.png', 122, 1);
INSERT INTO `tanggapan` VALUES (365, 'p', '2025-07-17 16:42:19', 'proses', 'default.png', 123, 8);
INSERT INTO `tanggapan` VALUES (366, 'v', '2025-07-17 16:42:25', 'valid', 'default.png', 123, 8);
INSERT INTO `tanggapan` VALUES (367, 'di pandu tim software', '2025-07-17 16:43:49', 'pengerjaan', 'default.png', 123, 8);
INSERT INTO `tanggapan` VALUES (368, 'Langsung adjustment saja pak tidak ada masalah. Yg penting komp CR55 masih hidup bisa digunakan', '2025-07-17 16:44:09', 'selesai', 'default.png', 123, 8);
INSERT INTO `tanggapan` VALUES (369, '1. Klik diagnose\r\n2. Install Ini di computer KC dan Keu\r\n3. Mengirimkan ID keuangan', '2025-07-17 16:46:07', 'proses', 'default.png', 124, 1);
INSERT INTO `tanggapan` VALUES (370, 'Valid', '2025-07-17 16:46:18', 'valid', 'default.png', 124, 1);
INSERT INTO `tanggapan` VALUES (371, 'Proses', '2025-07-17 16:46:31', 'pengerjaan', 'default.png', 124, 1);
INSERT INTO `tanggapan` VALUES (372, '1. Klik diagnose\r\n2. Install Ini di computer KC dan Keu\r\n3. Mengirimkan ID keuangan\r\n4. Open Security ->administrator -> Isi yg kosong\r\n4. Selesai', '2025-07-17 16:56:02', 'selesai', 'default.png', 124, 1);
INSERT INTO `tanggapan` VALUES (373, 'p', '2025-07-17 16:49:33', 'proses', 'default.png', 125, 8);
INSERT INTO `tanggapan` VALUES (374, 'v', '2025-07-17 16:49:43', 'valid', 'default.png', 125, 8);
INSERT INTO `tanggapan` VALUES (375, 'di jelaskan oleh sdm area', '2025-07-17 16:50:10', 'pengerjaan', 'default.png', 125, 8);
INSERT INTO `tanggapan` VALUES (376, 'Seperti ini jika ast keu ngecek stuck sales tiap jam 15.00 tidak akan terjadi kesalahan ketahuan di akhir\r\nKemarin baru saja RIM dijelaskan\r\nCek belanja harian sampai ke porsi juga\r\nCaranya di SO apa adanya sisanya saja\r\nLakukan adjusment jika ada stuck sales', '2025-07-17 16:50:43', 'selesai', 'default.png', 125, 8);
INSERT INTO `tanggapan` VALUES (377, 'Dibaca error e.\r\n1. Scanner apakah hidup?\r\n2. USB apakah terhubung?\r\n\r\nTindakan :\r\n1. Pindah USB Scannernya\r\n2. Ganti kabel yg lain', '2025-07-17 16:53:04', 'proses', 'default.png', 126, 1);
INSERT INTO `tanggapan` VALUES (378, 'Valid', '2025-07-17 16:53:21', 'valid', 'default.png', 126, 1);
INSERT INTO `tanggapan` VALUES (379, 'Proses', '2025-07-17 16:53:30', 'pengerjaan', 'default.png', 126, 1);
INSERT INTO `tanggapan` VALUES (380, 'Konfirmasi apakah:\r\n1. Scanner apakah hidup?\r\n2. USB apakah terhubung?\r\n\r\nTindakan :\r\n1. Pindah USB Scannernya\r\n2. Ganti kabel yg lain\r\n3. restart CPU\r\n4. Selesai', '2025-07-17 16:54:56', 'selesai', 'default.png', 126, 1);
INSERT INTO `tanggapan` VALUES (381, 'p', '2025-07-17 16:55:04', 'proses', 'default.png', 127, 8);
INSERT INTO `tanggapan` VALUES (382, 'v', '2025-07-17 16:55:09', 'valid', 'default.png', 127, 8);
INSERT INTO `tanggapan` VALUES (383, 'proses remote oleh tim sipedas', '2025-07-17 16:55:24', 'pengerjaan', 'default.png', 127, 8);
INSERT INTO `tanggapan` VALUES (384, 'stockan gudang produksi habis mbk, sedangkan gobal-gabul pakai jjkm brrti seharusnya ada tambahan ini mbk..', '2025-07-17 16:55:32', 'selesai', 'default.png', 127, 8);
INSERT INTO `tanggapan` VALUES (385, 'Direkomendasikan untuk melakukan pengecekan langsung di tempat service', '2025-07-19 08:27:05', 'proses', 'default.png', 128, 1);
INSERT INTO `tanggapan` VALUES (386, 'Valid', '2025-07-19 08:27:14', 'valid', 'default.png', 128, 1);
INSERT INTO `tanggapan` VALUES (387, 'Proses', '2025-07-19 08:27:58', 'pengerjaan', 'default.png', 128, 1);
INSERT INTO `tanggapan` VALUES (388, 'Sebelum dilakukan pengecekan langsung di tempat service, alangkah baiknya memperhatikan hal berikut ini:\r\n1. Pastikan biaya cek\r\n2. Pastikan Kendalanya disebabkan apa\r\n3. Pastikan minta RAB sebelum dikerjakan\r\n4. Selesai', '2025-07-19 08:28:54', 'selesai', 'default.png', 128, 1);
INSERT INTO `tanggapan` VALUES (389, 'Pengecekan jaringan internet pada komputer kacab apaka terhubung atau tidak', '2025-07-19 08:40:14', 'proses', 'default.png', 129, 1);
INSERT INTO `tanggapan` VALUES (390, 'Valid', '2025-07-19 08:40:28', 'valid', 'default.png', 129, 1);
INSERT INTO `tanggapan` VALUES (391, 'Selesai', '2025-07-19 08:40:42', 'pengerjaan', 'default.png', 129, 1);
INSERT INTO `tanggapan` VALUES (392, 'Restart komputer keuangan, selesai', '2025-07-19 08:44:08', 'selesai', 'default.png', 129, 1);
INSERT INTO `tanggapan` VALUES (393, 'Pengecekan pada Modem Indibiznya apakah lampu indikator kedip2 merah atau tidak', '2025-07-19 08:42:47', 'proses', 'default.png', 130, 1);
INSERT INTO `tanggapan` VALUES (394, 'Valid', '2025-07-19 08:42:55', 'valid', 'default.png', 130, 1);
INSERT INTO `tanggapan` VALUES (395, 'Proses', '2025-07-19 08:43:05', 'pengerjaan', 'default.png', 130, 1);
INSERT INTO `tanggapan` VALUES (396, 'Arahan untuk melakukan restart pada modem, selesai', '2025-07-19 08:43:31', 'selesai', 'default.png', 130, 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Administrator', 'admin', '$2y$10$L201Eud0B8zkRfT9wOctFeK1LSJWFxwDV8He41JDk4ggRLUb9aIC6', '08956434564', 'administrator');
INSERT INTO `user` VALUES (7, 'M. Naufal Ahnaf', 'naufalahnaf', '$2y$10$dXlRwZ0g.j77HYK.HdaVYuIgJ/TyF2IQgnMc0B4z1QHe2Qq.SJR4m', '62', 'operator');
INSERT INTO `user` VALUES (8, 'Naufal Ahnaf', 'naufalahnaf22', '$2y$10$qiD3ukadr/m4HVFEQTFpU.OEUc/y.iLyLG2Gr.PLDuarjI4gaSTEa', '089606360400', 'administrator');

-- ----------------------------
-- Table structure for waroeng
-- ----------------------------
DROP TABLE IF EXISTS `waroeng`;
CREATE TABLE `waroeng`  (
  `id_waroeng` int NOT NULL AUTO_INCREMENT,
  `waroeng` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_area` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_waroeng`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of waroeng
-- ----------------------------
INSERT INTO `waroeng` VALUES (1, 'WSS Cirebon Ampera', 5);
INSERT INTO `waroeng` VALUES (2, 'WSS  GOR Satria', 5);
INSERT INTO `waroeng` VALUES (3, 'WSS Cilacap', 5);
INSERT INTO `waroeng` VALUES (4, 'WSS Wiryaatmaja', 5);
INSERT INTO `waroeng` VALUES (5, 'WSS Cirebon Tuparev', 5);
INSERT INTO `waroeng` VALUES (6, 'WSS Pemalang', 5);
INSERT INTO `waroeng` VALUES (7, 'WSS Tegal', 5);
INSERT INTO `waroeng` VALUES (8, 'WSS Wonosobo', 5);
INSERT INTO `waroeng` VALUES (9, 'WSS Citra Raya', 5);
INSERT INTO `waroeng` VALUES (10, 'WSS PA Palemsemi', 5);
INSERT INTO `waroeng` VALUES (11, 'WSS Tanjung Duren Utara', 5);
INSERT INTO `waroeng` VALUES (12, 'WSS Bekasi', 5);
INSERT INTO `waroeng` VALUES (13, 'WSS Bogor 2', 5);
INSERT INTO `waroeng` VALUES (14, 'WSS Depok Margonda', 5);
INSERT INTO `waroeng` VALUES (15, 'WSS Jatinangor', 5);
INSERT INTO `waroeng` VALUES (16, 'WSS Bawen', 5);
INSERT INTO `waroeng` VALUES (17, 'WSS bandung Sukabumi', 5);
INSERT INTO `waroeng` VALUES (18, 'Kantor Area Jabodetabek', 5);
INSERT INTO `waroeng` VALUES (19, 'WSS Boyolali', 11);
INSERT INTO `waroeng` VALUES (20, 'WSS Sragen', 11);
INSERT INTO `waroeng` VALUES (21, 'WSS Klaten sekarsuli', 11);
INSERT INTO `waroeng` VALUES (22, 'WSS Wonogiri', 11);
INSERT INTO `waroeng` VALUES (23, 'WSS Manahan Barat', 11);
INSERT INTO `waroeng` VALUES (24, 'WSS Gonilan', 11);
INSERT INTO `waroeng` VALUES (25, 'WSS Manahan Timur', 11);
INSERT INTO `waroeng` VALUES (26, 'WSS Kerten', 11);
INSERT INTO `waroeng` VALUES (27, 'WSS Jurug', 11);
INSERT INTO `waroeng` VALUES (28, 'WSS Karanganyar', 11);
INSERT INTO `waroeng` VALUES (29, 'WSS Solo Baru', 11);
INSERT INTO `waroeng` VALUES (30, 'WSS Boyolali Heritage', 11);
INSERT INTO `waroeng` VALUES (31, 'WSS Banyudono', 11);
INSERT INTO `waroeng` VALUES (32, 'WSS Kopral Sayom', 11);
INSERT INTO `waroeng` VALUES (33, 'WSS Patimura', 11);
INSERT INTO `waroeng` VALUES (34, 'WSS Klodran', 11);
INSERT INTO `waroeng` VALUES (35, 'DSA SOLO', 11);
INSERT INTO `waroeng` VALUES (36, 'Kantor Area Solo', 11);
INSERT INTO `waroeng` VALUES (37, 'WSS Malang Ciliwung', 7);
INSERT INTO `waroeng` VALUES (38, 'Wss Surabaya Manyar', 7);
INSERT INTO `waroeng` VALUES (39, 'WSS Surabaya Arjuna Raya', 7);
INSERT INTO `waroeng` VALUES (40, 'WSS Malang Sengkaling', 7);
INSERT INTO `waroeng` VALUES (41, 'WSS Jember', 7);
INSERT INTO `waroeng` VALUES (42, 'WSS Madiun', 7);
INSERT INTO `waroeng` VALUES (43, 'WSS LA Sucipto', 7);
INSERT INTO `waroeng` VALUES (44, 'WSS Kediri', 7);
INSERT INTO `waroeng` VALUES (45, 'WSS Batu malang', 7);
INSERT INTO `waroeng` VALUES (46, 'WSS Tulungagung', 7);
INSERT INTO `waroeng` VALUES (47, 'Kantor Area Malang', 7);
INSERT INTO `waroeng` VALUES (48, 'WSS Bali Batubulan', 2);
INSERT INTO `waroeng` VALUES (49, 'WSS Bali Tukad Barito', 2);
INSERT INTO `waroeng` VALUES (50, 'WSS Bali Uluwatu', 2);
INSERT INTO `waroeng` VALUES (51, 'WSS Teuku Umar', 2);
INSERT INTO `waroeng` VALUES (52, 'WSS Gatot Subroto', 2);
INSERT INTO `waroeng` VALUES (53, 'WSS Tabanan', 2);
INSERT INTO `waroeng` VALUES (54, 'Kantor Area bali', 2);
INSERT INTO `waroeng` VALUES (55, 'WSS Cirebon Ampera', 10);
INSERT INTO `waroeng` VALUES (56, 'WSS  GOR Satria', 10);
INSERT INTO `waroeng` VALUES (57, 'WSS Cilacap', 10);
INSERT INTO `waroeng` VALUES (58, 'WSS Wiryaatmaja', 10);
INSERT INTO `waroeng` VALUES (59, 'WSS Cirebon Tuparev', 10);
INSERT INTO `waroeng` VALUES (60, 'WSS Pemalang', 10);
INSERT INTO `waroeng` VALUES (61, 'WSS Tegal', 10);
INSERT INTO `waroeng` VALUES (62, 'WSS Wonosobo', 10);
INSERT INTO `waroeng` VALUES (63, 'Kantor Area Purwokerto', NULL);
INSERT INTO `waroeng` VALUES (64, 'WSS Sompok', 6);
INSERT INTO `waroeng` VALUES (65, 'WSS Puri Anjasmoro', 6);
INSERT INTO `waroeng` VALUES (66, 'WSS Lampersari', 6);
INSERT INTO `waroeng` VALUES (67, 'WSS Ngaliyan', 6);
INSERT INTO `waroeng` VALUES (68, 'WSS Salatiga Diponegoro', 6);
INSERT INTO `waroeng` VALUES (69, 'WSS Salatiga Sudirman ', 6);
INSERT INTO `waroeng` VALUES (70, 'WSS Sampangan', 6);
INSERT INTO `waroeng` VALUES (71, 'WSS Kudus', 6);
INSERT INTO `waroeng` VALUES (72, 'WSS  Banyumanik', 6);
INSERT INTO `waroeng` VALUES (73, 'WSS Pekalongan', 6);
INSERT INTO `waroeng` VALUES (74, 'WSS Ungaran ', 6);
INSERT INTO `waroeng` VALUES (75, 'WSS Pati', 6);
INSERT INTO `waroeng` VALUES (76, 'WSS Sambiroto', 6);
INSERT INTO `waroeng` VALUES (77, 'WSS Tembalang ', 6);
INSERT INTO `waroeng` VALUES (78, 'Kantor Area Semarang', 6);
INSERT INTO `waroeng` VALUES (79, 'WSS Magelang', 8);
INSERT INTO `waroeng` VALUES (80, 'WSS Prambanan', 8);
INSERT INTO `waroeng` VALUES (81, 'WSS Palagan', 8);
INSERT INTO `waroeng` VALUES (82, 'WSS  Wonosari', 8);
INSERT INTO `waroeng` VALUES (83, 'WSS Sewon', 8);
INSERT INTO `waroeng` VALUES (84, 'WSS Ambarketawang', 8);
INSERT INTO `waroeng` VALUES (85, 'WSS Kulonprogo', 8);
INSERT INTO `waroeng` VALUES (86, 'WSS Jakal Km 12', 8);
INSERT INTO `waroeng` VALUES (87, 'Kantor Area Perintis', 8);
INSERT INTO `waroeng` VALUES (88, 'WSS Pogung baru ', 4);
INSERT INTO `waroeng` VALUES (89, 'WSS Monjali', 4);
INSERT INTO `waroeng` VALUES (90, 'WSS Megatruh', 4);
INSERT INTO `waroeng` VALUES (91, 'DSA Area Jogja', 4);
INSERT INTO `waroeng` VALUES (92, 'WSS Kledokan', 4);
INSERT INTO `waroeng` VALUES (93, 'WSS Gedong Kuning', 4);
INSERT INTO `waroeng` VALUES (94, 'WSS Samirono', 4);
INSERT INTO `waroeng` VALUES (95, 'WSS Plengkung Gading', 4);
INSERT INTO `waroeng` VALUES (96, 'WSS Kyai Mojo', 4);
INSERT INTO `waroeng` VALUES (97, 'WSS Bantul', 4);
INSERT INTO `waroeng` VALUES (98, 'WSS Jakal KM 8', 4);
INSERT INTO `waroeng` VALUES (99, 'WSS Condongcatur Timur', 4);
INSERT INTO `waroeng` VALUES (100, 'WSS Maguwoharjo', 4);
INSERT INTO `waroeng` VALUES (101, 'WSS Veteran', 4);
INSERT INTO `waroeng` VALUES (102, 'WSS Condongcatur Barat', 4);
INSERT INTO `waroeng` VALUES (103, 'WSS Perjuangan', 4);
INSERT INTO `waroeng` VALUES (104, 'Kantor Area Yogyakarta', 4);
INSERT INTO `waroeng` VALUES (105, 'Wss L\'agricola', 5);
INSERT INTO `waroeng` VALUES (106, 'Kisamaun 1', 5);
INSERT INTO `waroeng` VALUES (107, 'Kisamaun 2', 5);
INSERT INTO `waroeng` VALUES (108, 'Kantor Area Purwokerto', 10);
INSERT INTO `waroeng` VALUES (110, 'Wss Depok Sawangan', 5);
INSERT INTO `waroeng` VALUES (111, 'Kantor Kinanthi', 3);
INSERT INTO `waroeng` VALUES (112, 'Training Center', 3);
INSERT INTO `waroeng` VALUES (113, 'Wss Gading Serpong', 5);
INSERT INTO `waroeng` VALUES (114, 'Wss Greenville', 5);
INSERT INTO `waroeng` VALUES (117, 'Wss Bsd', 5);
INSERT INTO `waroeng` VALUES (118, 'Wss Ahmad Yani', 5);

SET FOREIGN_KEY_CHECKS = 1;
