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

 Date: 18/06/2025 14:15:48
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
) ENGINE = InnoDB AUTO_INCREMENT = 152 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jabatan
-- ----------------------------
INSERT INTO `jabatan` VALUES (147, 'Asissten Keuangan');
INSERT INTO `jabatan` VALUES (148, 'Staf General');
INSERT INTO `jabatan` VALUES (149, 'Staff Kasir');
INSERT INTO `jabatan` VALUES (150, 'Akutansi');
INSERT INTO `jabatan` VALUES (151, 'Kacab Digital');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id_kategori` int NOT NULL AUTO_INCREMENT,
  `kategori` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (4, 'Hardware');
INSERT INTO `kategori` VALUES (5, 'Software');
INSERT INTO `kategori` VALUES (6, 'Cr55');
INSERT INTO `kategori` VALUES (7, 'Ops Keuangan');
INSERT INTO `kategori` VALUES (8, 'Jaringan');

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
) ENGINE = InnoDB AUTO_INCREMENT = 327 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `pengaduan` VALUES (56, NULL, 'Ganisya', '+62 889-5393-721', '2025-06-16', 'Pada Rekap Menu Global Tgl 15 tidak mau muncul datanya (masih kosong)\r\nHal yg sudah dilakukan : \r\n- Melakukat Restart \r\n- Ctrl + F5 \r\n- Mencoba membuka melalui Pc Lain dan Web Brownser lain', 'WhatsApp_Image_2025-06-16_at_10_47_10.jpeg', 'pengerjaan', 36, 147, 10, 11, 5);
INSERT INTO `pengaduan` VALUES (57, NULL, 'Dwi Ayu', '+62 877-3642-2290', '2025-06-16', 'CR55 blank tidak ada meja dan bungkus internet tidak connec', 'WhatsApp_Image_2025-06-16_at_17_12_24.jpeg', 'selesai', 92, 147, 6, 8, 6);
INSERT INTO `pengaduan` VALUES (58, NULL, 'Ayu', '+62 857-3523-7201', '2025-06-17', 'CPU tidak mau nyala kabel power sudah diganti menggunakan kabel power lain namun tetap tidak mau nyala', 'WhatsApp_Image_2025-06-17_at_08_12_18.jpeg', 'selesai', 44, 147, NULL, 15, 6);
INSERT INTO `pengaduan` VALUES (59, NULL, 'Ferry', '+62 812-8897-9425', '2025-06-17', 'Pak ini cpu batubulan mati tapi hardisknya tidak saya sambungkan ke HDD takutnya datanya rusak/hilang pak', 'Screenshot_2025-06-17_163804.png', 'selesai', 48, 148, 11, 5, 4);
INSERT INTO `pengaduan` VALUES (60, NULL, 'Miftah', '+62 858-8850-2564', '2025-06-18', 'katergori menu yang membuat penjualan tidak nge link', 'WhatsApp_Image_2025-06-18_at_09_04_22.jpeg', 'selesai', 71, 147, 7, 9, 6);
INSERT INTO `pengaduan` VALUES (61, NULL, 'Arbella', '+62 857-7223-3775', '2025-06-18', 'Internet lemot terkadang sampai trouble kemungkinan jarak rother yang jauh dan jaringan internet sering tidak stabil serta hari ini trouble pada komputer yang jika akan mendownload file tidak bisa dibuka atau ketetangan resume.', 'WhatsApp_Image_2025-06-18_at_10_38_06.jpeg', 'selesai', 93, 147, 11, 16, 8);
INSERT INTO `pengaduan` VALUES (62, NULL, 'Nindya', '+62 896-8258-3360', '2025-06-18', 'Laptop tidak bisa muncul wifi', 'default.png', 'selesai', 111, 151, 11, 5, 4);

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
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = MyISAM AUTO_INCREMENT = 150 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `waroeng` VALUES (38, 'WSS Surabaya Rungkut', 7);
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

SET FOREIGN_KEY_CHECKS = 1;
