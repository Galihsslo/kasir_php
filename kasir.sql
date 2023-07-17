/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : kasir

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 02/01/2023 11:09:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for laporan_penjualan
-- ----------------------------
DROP TABLE IF EXISTS `laporan_penjualan`;
CREATE TABLE `laporan_penjualan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kdproduk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nm_produk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kategori` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jumlah_beli` int NOT NULL,
  `total` int NOT NULL,
  `tanggal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jam` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kasir` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of laporan_penjualan
-- ----------------------------
INSERT INTO `laporan_penjualan` VALUES (30, 'RAK001', 'Mouse logitech ', 'Parts', 3, 15000000, '2023-01-02', '09:55 am', 'kasir');
INSERT INTO `laporan_penjualan` VALUES (31, 'KD002', 'ASUS FOLD OLED', 'Laptop', 1, 45000000, '2023-01-02', '09:59 am', 'kasir');
INSERT INTO `laporan_penjualan` VALUES (32, 'RAK001', 'Monitor LG  24', 'Parts', 3, 15000000, '2023-01-02', '10:07 am', 'kasir');

-- ----------------------------
-- Table structure for tb_kat
-- ----------------------------
DROP TABLE IF EXISTS `tb_kat`;
CREATE TABLE `tb_kat`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_kat
-- ----------------------------
INSERT INTO `tb_kat` VALUES (2, 'Parts');
INSERT INTO `tb_kat` VALUES (4, 'Laptop');
INSERT INTO `tb_kat` VALUES (5, 'Aksessoris');
INSERT INTO `tb_kat` VALUES (6, 'Komputer');

-- ----------------------------
-- Table structure for tb_prod_masuk
-- ----------------------------
DROP TABLE IF EXISTS `tb_prod_masuk`;
CREATE TABLE `tb_prod_masuk`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `noinv` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tanggal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jam` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kdproduk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nm_produk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kategori` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `rak` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `supplier` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `stok` int NOT NULL,
  `jml_masuk` int NOT NULL,
  `admin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_prod_masuk
-- ----------------------------
INSERT INTO `tb_prod_masuk` VALUES (29, 'INV001', '2023-01-02', '08:31 am', 'RAK001', 'Monitor LG  24', 'Parts', 'RAK 1', 'PT SUSILO', 4, 5, 'Galih Susilo');
INSERT INTO `tb_prod_masuk` VALUES (30, 'INV002', '2023-01-02', '08:32 am', 'RAK001', 'Mouse logitech ', 'Parts', 'RAK 1', 'PT SUSILO', 9, 20, 'Galih Susilo');

-- ----------------------------
-- Table structure for tb_produk
-- ----------------------------
DROP TABLE IF EXISTS `tb_produk`;
CREATE TABLE `tb_produk`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kdproduk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nm_produk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kategori` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `stok` int NOT NULL,
  `rak` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `supplier` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `harga` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_produk
-- ----------------------------
INSERT INTO `tb_produk` VALUES (13, 'RAK001', 'Monitor LG  24\"', 'Parts', 17, 'RAK 1', 'PT SUSILO', 5000000);
INSERT INTO `tb_produk` VALUES (14, 'RAK001', 'Mouse logitech ', 'Parts', 17, 'RAK 1', 'PT SUSILO', 120000);
INSERT INTO `tb_produk` VALUES (15, 'KD002', 'ASUS FOLD OLED', 'Laptop', 5, 'RAK 1', 'PT SUSILO', 45000000);

-- ----------------------------
-- Table structure for tb_rak
-- ----------------------------
DROP TABLE IF EXISTS `tb_rak`;
CREATE TABLE `tb_rak`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kdrak` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `namarak` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_rak
-- ----------------------------
INSERT INTO `tb_rak` VALUES (1, 'RAK001', 'RAK 1');
INSERT INTO `tb_rak` VALUES (3, 'KD002', 'Rak 02');
INSERT INTO `tb_rak` VALUES (4, 'KD003', 'Rak 3');
INSERT INTO `tb_rak` VALUES (5, 'KD004', 'Rak 4');
INSERT INTO `tb_rak` VALUES (6, 'KD005', 'Rak 07');
INSERT INTO `tb_rak` VALUES (7, 'KD006', 'Rak 06');

-- ----------------------------
-- Table structure for tb_supplier
-- ----------------------------
DROP TABLE IF EXISTS `tb_supplier`;
CREATE TABLE `tb_supplier`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kdspl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `namaspl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `alamatspl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kontakspl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_supplier
-- ----------------------------
INSERT INTO `tb_supplier` VALUES (1, 'SPL01', 'PT SUSILO', 'Bandar Lampung', '081298013281');
INSERT INTO `tb_supplier` VALUES (3, 'SPL02', 'PT SENTOSO ABADI', 'Medan', '081282839220');
INSERT INTO `tb_supplier` VALUES (4, 'SPL03', 'PT  NUSANTARA', 'WONOSOBO', '043239423552');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `level` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (11, 'Galih', '81dc9bdb52d04dc20036dbd8313ed055', 'Galih Susilo', 'admin', '663-a.png');
INSERT INTO `tb_user` VALUES (13, 'kasir', 'c7911af3adbd12a035b289556d96470a', 'Galih', 'kasir', '845-a.png');

-- ----------------------------
-- Table structure for transaksi_temp
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_temp`;
CREATE TABLE `transaksi_temp`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kdproduk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nm_produk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kategori` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jumlah_beli` int NOT NULL,
  `total` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transaksi_temp
-- ----------------------------
INSERT INTO `transaksi_temp` VALUES (144, 'RAK001', 'Monitor LG  24', 'Parts', 3, 15000000);

SET FOREIGN_KEY_CHECKS = 1;
