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

 Date: 14/06/2025 09:25:46
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
) ENGINE = InnoDB AUTO_INCREMENT = 147 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jabatan
-- ----------------------------
INSERT INTO `jabatan` VALUES (1, 'Direktur');
INSERT INTO `jabatan` VALUES (2, 'Wakil Direktur');
INSERT INTO `jabatan` VALUES (3, 'Kasubag. Staf Direktur');
INSERT INTO `jabatan` VALUES (4, 'Kasi Sekretariat Direktur');
INSERT INTO `jabatan` VALUES (5, 'Kaur Administrasi dan Protokol');
INSERT INTO `jabatan` VALUES (6, 'Staf Administrasi dan Protokol');
INSERT INTO `jabatan` VALUES (7, 'Kaur R1');
INSERT INTO `jabatan` VALUES (8, 'Staf Umum Direktur');
INSERT INTO `jabatan` VALUES (9, 'Staf Umum Direktur');
INSERT INTO `jabatan` VALUES (10, 'GM Operasi');
INSERT INTO `jabatan` VALUES (11, 'Sekretaris GM Operasi');
INSERT INTO `jabatan` VALUES (12, 'Kepala Staf GM Operasi');
INSERT INTO `jabatan` VALUES (13, 'Staf Senior Urusan Komplain');
INSERT INTO `jabatan` VALUES (14, 'GM Pendukung');
INSERT INTO `jabatan` VALUES (15, 'Ka. Staf GM Suport');
INSERT INTO `jabatan` VALUES (16, 'Staf Khusus GM Pendukung');
INSERT INTO `jabatan` VALUES (17, 'GM Keuangan');
INSERT INTO `jabatan` VALUES (18, 'Staf Khusus GM Keu Urusan Kesekretariatan');
INSERT INTO `jabatan` VALUES (19, 'Kasi Humas & Pengabdian Masyarakat');
INSERT INTO `jabatan` VALUES (20, 'Staf Senior Urusan Komunikasi Publik');
INSERT INTO `jabatan` VALUES (21, 'Staf Senior Urusan Sosial Masyarakat');
INSERT INTO `jabatan` VALUES (22, 'Staf Senior Urusan Pengabdian Masyarakat');
INSERT INTO `jabatan` VALUES (23, 'Staf Humas Urusan Keproduksian');
INSERT INTO `jabatan` VALUES (24, 'Kasi Legal & UDTC');
INSERT INTO `jabatan` VALUES (25, 'Staf Senior Urusan Legal');
INSERT INTO `jabatan` VALUES (26, 'Staf Senior Urusan Tanggap Cepat Kesra Umat');
INSERT INTO `jabatan` VALUES (27, 'Junior Manajer Internal Audit');
INSERT INTO `jabatan` VALUES (28, 'Auditor PGD');
INSERT INTO `jabatan` VALUES (29, 'Auditor Produksi');
INSERT INTO `jabatan` VALUES (30, 'Auditor OPP');
INSERT INTO `jabatan` VALUES (31, 'Auditor SDM');
INSERT INTO `jabatan` VALUES (32, 'Auditor Keuangan');
INSERT INTO `jabatan` VALUES (33, 'Manajer Operasi');
INSERT INTO `jabatan` VALUES (34, 'Kasi Operasi PGD');
INSERT INTO `jabatan` VALUES (35, 'Staf Senior Operasi PGD Urusan Pengadaan');
INSERT INTO `jabatan` VALUES (36, 'Staf Senior Operasi PGD Urusan Pergudangan');
INSERT INTO `jabatan` VALUES (37, 'Kasi Operasi Produksi');
INSERT INTO `jabatan` VALUES (38, 'Staf Senior Operasi Urusan Resep');
INSERT INTO `jabatan` VALUES (39, 'Staf Senior Operasi Produksi Urusan Operasional Produksi');
INSERT INTO `jabatan` VALUES (40, 'Staf Senior Produksi Urusan PSA');
INSERT INTO `jabatan` VALUES (41, 'Kasi Operasi OPP');
INSERT INTO `jabatan` VALUES (42, 'Staf Senior Operasi OPP Urusan Operasional Pelayanan');
INSERT INTO `jabatan` VALUES (43, 'Kasi Operasi WBD');
INSERT INTO `jabatan` VALUES (44, 'Staf Senior Operasi OPP Urusan WBD');
INSERT INTO `jabatan` VALUES (45, 'Junior Manager Pengembangan Operasi');
INSERT INTO `jabatan` VALUES (46, 'Kasi PO PGD');
INSERT INTO `jabatan` VALUES (47, 'Kasi PO Produksi');
INSERT INTO `jabatan` VALUES (48, 'Kasi PO OPP');
INSERT INTO `jabatan` VALUES (49, 'Manajer IT & Multimedia');
INSERT INTO `jabatan` VALUES (50, 'Kasi operasional dan penerapan sistem');
INSERT INTO `jabatan` VALUES (51, 'Staf senior Pengembangan sistem ');
INSERT INTO `jabatan` VALUES (52, 'Kasi pengembangan Software');
INSERT INTO `jabatan` VALUES (53, 'Kaur Analis Data');
INSERT INTO `jabatan` VALUES (54, 'Kaur Programer');
INSERT INTO `jabatan` VALUES (55, 'Staf Programer');
INSERT INTO `jabatan` VALUES (56, 'Kasi Hardware dan Jaringan');
INSERT INTO `jabatan` VALUES (57, 'Kaur Penanganan dan pengembangan ');
INSERT INTO `jabatan` VALUES (58, 'Staf Penanganan dan pengembangan ');
INSERT INTO `jabatan` VALUES (59, 'kaur perawatan dan pendataan alat IT');
INSERT INTO `jabatan` VALUES (60, 'Staf  perawatan dan pendataan alat IT');
INSERT INTO `jabatan` VALUES (61, 'Kasubag. Multimedia dan Komunikasi Media Sosial');
INSERT INTO `jabatan` VALUES (62, 'Kasi Multimedia');
INSERT INTO `jabatan` VALUES (63, 'Kaur Design Grafis');
INSERT INTO `jabatan` VALUES (64, 'Staf Design');
INSERT INTO `jabatan` VALUES (65, 'Kaur Dokumentasi dan Visual Multimedia');
INSERT INTO `jabatan` VALUES (66, 'Staf Production');
INSERT INTO `jabatan` VALUES (67, 'Staf Production');
INSERT INTO `jabatan` VALUES (68, 'Kaur Pengelolaan Media Sosial');
INSERT INTO `jabatan` VALUES (69, 'Staf Konten Kreatif');
INSERT INTO `jabatan` VALUES (70, 'Kepala Cabang WBD Online Sales');
INSERT INTO `jabatan` VALUES (71, 'Asisten Digital Marketing & CS');
INSERT INTO `jabatan` VALUES (72, 'Asisten PGD & Ekspedisi');
INSERT INTO `jabatan` VALUES (73, 'Staf PGD dan Ekspedisi');
INSERT INTO `jabatan` VALUES (74, 'Asisten Keuangan Online sales');
INSERT INTO `jabatan` VALUES (75, 'Staf Keuangan Online Sales');
INSERT INTO `jabatan` VALUES (76, 'Manajer SDM WSS');
INSERT INTO `jabatan` VALUES (77, 'Kasi Spiritualitas Agama');
INSERT INTO `jabatan` VALUES (78, 'Staf Spiritualitas agama islam');
INSERT INTO `jabatan` VALUES (79, 'Staf Spiritualitas- Non');
INSERT INTO `jabatan` VALUES (80, 'Kasi Kesra');
INSERT INTO `jabatan` VALUES (81, 'Kaur Kesra Dana');
INSERT INTO `jabatan` VALUES (82, 'Staf Kesra Dana ');
INSERT INTO `jabatan` VALUES (83, 'Kaur Kesra Non Dana');
INSERT INTO `jabatan` VALUES (84, 'Staf Kesra Non Dana');
INSERT INTO `jabatan` VALUES (85, 'Kaur Fasilitas Kerja');
INSERT INTO `jabatan` VALUES (86, 'Staf Fasilitas Kerja ');
INSERT INTO `jabatan` VALUES (87, 'Kasi Pembinaan dan Penegakan Aturan');
INSERT INTO `jabatan` VALUES (88, 'Kaur Pembinaan & Penegakan Aturan');
INSERT INTO `jabatan` VALUES (89, 'Kasi Kerumah Tangga-an');
INSERT INTO `jabatan` VALUES (90, 'Kaur Kerumatangga-an');
INSERT INTO `jabatan` VALUES (91, 'Staf Sarana & Prasarana Rumah Tangga');
INSERT INTO `jabatan` VALUES (92, 'Kaur Traffic & Armada');
INSERT INTO `jabatan` VALUES (93, 'Staf Traffic & Armada');
INSERT INTO `jabatan` VALUES (94, 'Manager RTEO');
INSERT INTO `jabatan` VALUES (95, 'Kasi Rekrutmen & Pengembangan Organisasi');
INSERT INTO `jabatan` VALUES (96, 'Kaur Rekrutmen');
INSERT INTO `jabatan` VALUES (97, 'Staf Rekrutmen');
INSERT INTO `jabatan` VALUES (98, 'Kaur Pengembangan Organisasi');
INSERT INTO `jabatan` VALUES (99, 'Staf Pengembangan Organisasi');
INSERT INTO `jabatan` VALUES (100, 'Staf Pengembangan Organisasi');
INSERT INTO `jabatan` VALUES (101, 'Kasi Training');
INSERT INTO `jabatan` VALUES (102, 'Kaur Pengembangan SDM');
INSERT INTO `jabatan` VALUES (103, 'Staf Pengembangan SDM');
INSERT INTO `jabatan` VALUES (104, 'Kaur Training');
INSERT INTO `jabatan` VALUES (106, 'Staf Training');
INSERT INTO `jabatan` VALUES (107, 'Kasi Event');
INSERT INTO `jabatan` VALUES (108, 'Kaur Event');
INSERT INTO `jabatan` VALUES (109, 'komputer event');
INSERT INTO `jabatan` VALUES (110, 'Staf Event');
INSERT INTO `jabatan` VALUES (111, 'Staf Senior Pengelolaan Sarpras Event');
INSERT INTO `jabatan` VALUES (112, 'Manajer Keuangan & Pajak');
INSERT INTO `jabatan` VALUES (113, 'Kasi Keuangan');
INSERT INTO `jabatan` VALUES (114, 'Kaur Keuangan Perusahaan');
INSERT INTO `jabatan` VALUES (115, 'Staf Keuangan');
INSERT INTO `jabatan` VALUES (116, 'Kaur Anggaran');
INSERT INTO `jabatan` VALUES (117, 'Staf Anggaran');
INSERT INTO `jabatan` VALUES (118, 'Staf Anggaran');
INSERT INTO `jabatan` VALUES (119, 'Kaur Pajak Daerah');
INSERT INTO `jabatan` VALUES (120, 'Staf Pajak Daerah');
INSERT INTO `jabatan` VALUES (121, 'Kasi Operasional Keuangan');
INSERT INTO `jabatan` VALUES (122, 'Kaur Operasional Keuangan');
INSERT INTO `jabatan` VALUES (123, 'Staf Operasional Keuangan');
INSERT INTO `jabatan` VALUES (124, 'Kaur Sarana & Prasarana Keuangan');
INSERT INTO `jabatan` VALUES (125, 'Staf Sarana & Prasarana Kuangan');
INSERT INTO `jabatan` VALUES (126, 'Manajer Akuntansi');
INSERT INTO `jabatan` VALUES (127, 'Kasi General Accounting');
INSERT INTO `jabatan` VALUES (128, 'Kaur Financial Accounting');
INSERT INTO `jabatan` VALUES (129, 'Staf Financial Accounting');
INSERT INTO `jabatan` VALUES (130, 'Staf Financial Accounting');
INSERT INTO `jabatan` VALUES (131, 'Kaur Aset Control');
INSERT INTO `jabatan` VALUES (132, 'Staf Aset Control');
INSERT INTO `jabatan` VALUES (133, 'Kasi Cost Accounting');
INSERT INTO `jabatan` VALUES (134, 'Kaur Inventory Control');
INSERT INTO `jabatan` VALUES (135, 'Staf Inventory Control');
INSERT INTO `jabatan` VALUES (136, 'Kaur Cost Accounting');
INSERT INTO `jabatan` VALUES (137, 'Staf Cost Accounting');
INSERT INTO `jabatan` VALUES (138, 'Kasi Sales');
INSERT INTO `jabatan` VALUES (139, 'Kasi Sales');
INSERT INTO `jabatan` VALUES (140, 'Kaur Sales Accounting');
INSERT INTO `jabatan` VALUES (141, 'Staf Sales Accounting');
INSERT INTO `jabatan` VALUES (142, 'Kaur Pengembagan Akuntansi');
INSERT INTO `jabatan` VALUES (143, 'Staf Mater Data');
INSERT INTO `jabatan` VALUES (144, 'Kaur Management Accounting');
INSERT INTO `jabatan` VALUES (145, 'Staf Management Accounting');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id_kategori` int NOT NULL AUTO_INCREMENT,
  `kategori` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (4, 'Hardware');
INSERT INTO `kategori` VALUES (5, 'Software');
INSERT INTO `kategori` VALUES (6, 'Cr55');

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
) ENGINE = InnoDB AUTO_INCREMENT = 186 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
  `id_waroeng` int NOT NULL,
  `id_jabatan` int NULL DEFAULT NULL,
  `id_petugas` int NULL DEFAULT NULL,
  `id_subkategori` int NOT NULL,
  `id_kategori` int NOT NULL,
  PRIMARY KEY (`id_pengaduan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pengaduan
-- ----------------------------
INSERT INTO `pengaduan` VALUES (32, NULL, 'dona', '085423614274', '2025-05-15 09:29:51', 'mikrotik tidak hidup', 'WhatsApp_Image_2025-05-14_at_10_28_10_(1).jpeg', 'proses', 2, 2, 4, 7, 4);
INSERT INTO `pengaduan` VALUES (33, NULL, 'cahya angga', '09812345678', '2025-06-04 08:24:46', 'ketika komputer hidup matot', 'Screenshot_2025-06-03_164555.png', 'belum_ditanggapi', 2, 1, 3, 7, 4);
INSERT INTO `pengaduan` VALUES (34, NULL, 'asep', '04835034585', '2025-06-11 15:40:02', 'tidak terhubung ke jaringan pusat', 'original.jpg', 'belum_ditanggapi', 2, 2, 4, 7, 4);
INSERT INTO `pengaduan` VALUES (35, NULL, 'ekoo wicaksosno', '048594743', '2025-06-11 16:25:11', 'apa aja', 'e1ab17b022e6468b86848b1b6ed915f7~.jpeg', 'selesai', 1, 2, 5, 7, 4);
INSERT INTO `pengaduan` VALUES (36, NULL, 'eko', '09876543223', '2025-06-12 10:45:39', 'Komputer mati', 'ec11df13-577a-45e4-bdb2-0806e69a9eaf_jpg.jpg', 'selesai', 38, 55, 5, 5, 4);
INSERT INTO `pengaduan` VALUES (37, NULL, 'asep', '0943848754', '2025-06-12 13:15:46', 'cr55 matot', 'abce9c96-fe5c-43a8-9e55-4bacc5a6ae1d.jpg', 'selesai', 52, 55, 5, 6, 5);
INSERT INTO `pengaduan` VALUES (38, NULL, 'ruhul', '098765432', '2025-06-12 13:49:32', 'ganti harga', 'ec11df13-577a-45e4-bdb2-0806e69a9eaf_jpg1.jpg', 'belum_ditanggapi', 78, 53, 6, 10, 6);

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of petugas
-- ----------------------------
INSERT INTO `petugas` VALUES (3, 'Ahmad Holis');
INSERT INTO `petugas` VALUES (4, 'Risco Dharmawan');
INSERT INTO `petugas` VALUES (5, 'Cahya Angga Krisna');
INSERT INTO `petugas` VALUES (6, 'Alfan Niami');

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of subkategori
-- ----------------------------
INSERT INTO `subkategori` VALUES (5, 'Komputer', 4);
INSERT INTO `subkategori` VALUES (6, 'Cr55', 5);
INSERT INTO `subkategori` VALUES (7, 'Mikrotik', 4);
INSERT INTO `subkategori` VALUES (8, 'Hardware Jaringan', 6);
INSERT INTO `subkategori` VALUES (9, 'Software', 6);
INSERT INTO `subkategori` VALUES (10, 'Ops Keuangan', 6);

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
) ENGINE = MyISAM AUTO_INCREMENT = 66 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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

SET FOREIGN_KEY_CHECKS = 1;
