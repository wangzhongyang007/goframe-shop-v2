/*
 Navicat MySQL Data Transfer

 Source Server         : Mac本地
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 09/02/2023 15:11:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address_info
-- ----------------------------
DROP TABLE IF EXISTS `address_info`;
CREATE TABLE `address_info` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pid` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='全国城市信息表';

-- ----------------------------
-- Records of address_info
-- ----------------------------
BEGIN;
INSERT INTO `address_info` VALUES (110000, '北京', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (110100, '北京市', 110000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (110101, '东城区', 110100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (110102, '西城区', 110100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (110103, '崇文区', 110100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (110104, '宣武区', 110100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (110105, '朝阳区', 110100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (110106, '丰台区', 110100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (110107, '石景山区', 110100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (110108, '海淀区', 110100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (110109, '门头沟区', 110100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (110111, '房山区', 110100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (110112, '通州区', 110100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (110113, '顺义区', 110100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (110114, '昌平区', 110100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (110115, '大兴区', 110100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (110116, '怀柔区', 110100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (110117, '平谷区', 110100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (110228, '密云县', 110100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (110229, '延庆县', 110100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (110230, '其它区', 110100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120000, '天津', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120100, '天津市', 120000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120101, '和平区', 120100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120102, '河东区', 120100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120103, '河西区', 120100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120104, '南开区', 120100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120105, '河北区', 120100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120106, '红桥区', 120100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120107, '塘沽区', 120100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120108, '汉沽区', 120100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120109, '大港区', 120100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120110, '东丽区', 120100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120111, '西青区', 120100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120112, '津南区', 120100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120113, '北辰区', 120100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120114, '武清区', 120100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120115, '宝坻区', 120100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120116, '滨海新区', 120100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120221, '宁河县', 120100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120223, '静海县', 120100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120225, '蓟县', 120100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (120226, '其它区', 120100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130000, '河北省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130100, '石家庄市', 130000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130102, '长安区', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130103, '桥东区', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130104, '桥西区', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130105, '新华区', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130107, '井陉矿区', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130108, '裕华区', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130121, '井陉县', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130123, '正定县', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130124, '栾城县', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130125, '行唐县', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130126, '灵寿县', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130127, '高邑县', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130128, '深泽县', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130129, '赞皇县', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130130, '无极县', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130131, '平山县', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130132, '元氏县', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130133, '赵县', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130181, '辛集市', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130182, '藁城市', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130183, '晋州市', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130184, '新乐市', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130185, '鹿泉市', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130186, '其它区', 130100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130200, '唐山市', 130000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130202, '路南区', 130200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130203, '路北区', 130200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130204, '古冶区', 130200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130205, '开平区', 130200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130207, '丰南区', 130200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130208, '丰润区', 130200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130223, '滦县', 130200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130224, '滦南县', 130200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130225, '乐亭县', 130200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130227, '迁西县', 130200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130229, '玉田县', 130200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130230, '唐海县', 130200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130281, '遵化市', 130200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130283, '迁安市', 130200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130284, '其它区', 130200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130300, '秦皇岛市', 130000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130302, '海港区', 130300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130303, '山海关区', 130300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130304, '北戴河区', 130300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130321, '青龙满族自治县', 130300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130322, '昌黎县', 130300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130323, '抚宁县', 130300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130324, '卢龙县', 130300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130398, '其它区', 130300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130399, '经济技术开发区', 130300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130400, '邯郸市', 130000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130402, '邯山区', 130400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130403, '丛台区', 130400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130404, '复兴区', 130400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130406, '峰峰矿区', 130400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130421, '邯郸县', 130400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130423, '临漳县', 130400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130424, '成安县', 130400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130425, '大名县', 130400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130426, '涉县', 130400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130427, '磁县', 130400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130428, '肥乡县', 130400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130429, '永年县', 130400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130430, '邱县', 130400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130431, '鸡泽县', 130400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130432, '广平县', 130400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130433, '馆陶县', 130400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130434, '魏县', 130400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130435, '曲周县', 130400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130481, '武安市', 130400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130482, '其它区', 130400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130500, '邢台市', 130000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130502, '桥东区', 130500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130503, '桥西区', 130500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130521, '邢台县', 130500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130522, '临城县', 130500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130523, '内丘县', 130500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130524, '柏乡县', 130500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130525, '隆尧县', 130500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130526, '任县', 130500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130527, '南和县', 130500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130528, '宁晋县', 130500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130529, '巨鹿县', 130500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130530, '新河县', 130500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130531, '广宗县', 130500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130532, '平乡县', 130500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130533, '威县', 130500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130534, '清河县', 130500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130535, '临西县', 130500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130581, '南宫市', 130500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130582, '沙河市', 130500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130583, '其它区', 130500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130600, '保定市', 130000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130602, '新市区', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130603, '北市区', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130604, '南市区', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130621, '满城县', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130622, '清苑县', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130623, '涞水县', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130624, '阜平县', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130625, '徐水县', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130626, '定兴县', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130627, '唐县', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130628, '高阳县', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130629, '容城县', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130630, '涞源县', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130631, '望都县', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130632, '安新县', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130633, '易县', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130634, '曲阳县', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130635, '蠡县', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130636, '顺平县', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130637, '博野县', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130638, '雄县', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130681, '涿州市', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130682, '定州市', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130683, '安国市', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130684, '高碑店市', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130698, '高开区', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130699, '其它区', 130600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130700, '张家口市', 130000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130702, '桥东区', 130700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130703, '桥西区', 130700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130705, '宣化区', 130700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130706, '下花园区', 130700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130721, '宣化县', 130700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130722, '张北县', 130700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130723, '康保县', 130700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130724, '沽源县', 130700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130725, '尚义县', 130700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130726, '蔚县', 130700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130727, '阳原县', 130700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130728, '怀安县', 130700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130729, '万全县', 130700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130730, '怀来县', 130700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130731, '涿鹿县', 130700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130732, '赤城县', 130700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130733, '崇礼县', 130700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130734, '其它区', 130700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130800, '承德市', 130000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130802, '双桥区', 130800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130803, '双滦区', 130800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130804, '鹰手营子矿区', 130800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130821, '承德县', 130800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130822, '兴隆县', 130800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130823, '平泉县', 130800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130824, '滦平县', 130800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130825, '隆化县', 130800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130826, '丰宁满族自治县', 130800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130827, '宽城满族自治县', 130800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130828, '围场满族蒙古族自治县', 130800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130829, '其它区', 130800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130900, '沧州市', 130000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130902, '新华区', 130900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130903, '运河区', 130900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130921, '沧县', 130900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130922, '青县', 130900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130923, '东光县', 130900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130924, '海兴县', 130900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130925, '盐山县', 130900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130926, '肃宁县', 130900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130927, '南皮县', 130900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130928, '吴桥县', 130900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130929, '献县', 130900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130930, '孟村回族自治县', 130900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130981, '泊头市', 130900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130982, '任丘市', 130900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130983, '黄骅市', 130900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130984, '河间市', 130900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (130985, '其它区', 130900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131000, '廊坊市', 130000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131002, '安次区', 131000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131003, '广阳区', 131000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131022, '固安县', 131000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131023, '永清县', 131000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131024, '香河县', 131000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131025, '大城县', 131000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131026, '文安县', 131000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131028, '大厂回族自治县', 131000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131051, '开发区', 131000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131052, '燕郊经济技术开发区', 131000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131081, '霸州市', 131000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131082, '三河市', 131000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131083, '其它区', 131000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131100, '衡水市', 130000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131102, '桃城区', 131100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131121, '枣强县', 131100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131122, '武邑县', 131100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131123, '武强县', 131100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131124, '饶阳县', 131100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131125, '安平县', 131100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131126, '故城县', 131100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131127, '景县', 131100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131128, '阜城县', 131100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131181, '冀州市', 131100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131182, '深州市', 131100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (131183, '其它区', 131100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140000, '山西省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140100, '太原市', 140000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140105, '小店区', 140100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140106, '迎泽区', 140100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140107, '杏花岭区', 140100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140108, '尖草坪区', 140100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140109, '万柏林区', 140100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140110, '晋源区', 140100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140121, '清徐县', 140100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140122, '阳曲县', 140100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140123, '娄烦县', 140100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140181, '古交市', 140100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140182, '其它区', 140100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140200, '大同市', 140000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140202, '城区', 140200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140203, '矿区', 140200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140211, '南郊区', 140200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140212, '新荣区', 140200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140221, '阳高县', 140200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140222, '天镇县', 140200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140223, '广灵县', 140200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140224, '灵丘县', 140200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140225, '浑源县', 140200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140226, '左云县', 140200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140227, '大同县', 140200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140228, '其它区', 140200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140300, '阳泉市', 140000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140302, '城区', 140300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140303, '矿区', 140300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140311, '郊区', 140300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140321, '平定县', 140300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140322, '盂县', 140300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140323, '其它区', 140300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140400, '长治市', 140000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140421, '长治县', 140400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140423, '襄垣县', 140400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140424, '屯留县', 140400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140425, '平顺县', 140400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140426, '黎城县', 140400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140427, '壶关县', 140400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140428, '长子县', 140400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140429, '武乡县', 140400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140430, '沁县', 140400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140431, '沁源县', 140400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140481, '潞城市', 140400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140482, '城区', 140400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140483, '郊区', 140400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140484, '高新区', 140400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140485, '其它区', 140400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140500, '晋城市', 140000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140502, '城区', 140500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140521, '沁水县', 140500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140522, '阳城县', 140500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140524, '陵川县', 140500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140525, '泽州县', 140500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140581, '高平市', 140500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140582, '其它区', 140500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140600, '朔州市', 140000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140602, '朔城区', 140600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140603, '平鲁区', 140600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140621, '山阴县', 140600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140622, '应县', 140600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140623, '右玉县', 140600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140624, '怀仁县', 140600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140625, '其它区', 140600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140700, '晋中市', 140000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140702, '榆次区', 140700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140721, '榆社县', 140700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140722, '左权县', 140700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140723, '和顺县', 140700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140724, '昔阳县', 140700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140725, '寿阳县', 140700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140726, '太谷县', 140700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140727, '祁县', 140700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140728, '平遥县', 140700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140729, '灵石县', 140700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140781, '介休市', 140700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140782, '其它区', 140700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140800, '运城市', 140000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140802, '盐湖区', 140800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140821, '临猗县', 140800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140822, '万荣县', 140800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140823, '闻喜县', 140800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140824, '稷山县', 140800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140825, '新绛县', 140800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140826, '绛县', 140800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140827, '垣曲县', 140800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140828, '夏县', 140800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140829, '平陆县', 140800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140830, '芮城县', 140800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140881, '永济市', 140800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140882, '河津市', 140800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140883, '其它区', 140800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140900, '忻州市', 140000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140902, '忻府区', 140900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140921, '定襄县', 140900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140922, '五台县', 140900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140923, '代县', 140900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140924, '繁峙县', 140900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140925, '宁武县', 140900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140926, '静乐县', 140900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140927, '神池县', 140900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140928, '五寨县', 140900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140929, '岢岚县', 140900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140930, '河曲县', 140900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140931, '保德县', 140900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140932, '偏关县', 140900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140981, '原平市', 140900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (140982, '其它区', 140900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141000, '临汾市', 140000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141002, '尧都区', 141000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141021, '曲沃县', 141000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141022, '翼城县', 141000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141023, '襄汾县', 141000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141024, '洪洞县', 141000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141025, '古县', 141000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141026, '安泽县', 141000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141027, '浮山县', 141000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141028, '吉县', 141000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141029, '乡宁县', 141000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141030, '大宁县', 141000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141031, '隰县', 141000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141032, '永和县', 141000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141033, '蒲县', 141000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141034, '汾西县', 141000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141081, '侯马市', 141000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141082, '霍州市', 141000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141083, '其它区', 141000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141100, '吕梁市', 140000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141102, '离石区', 141100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141121, '文水县', 141100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141122, '交城县', 141100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141123, '兴县', 141100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141124, '临县', 141100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141125, '柳林县', 141100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141126, '石楼县', 141100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141127, '岚县', 141100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141128, '方山县', 141100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141129, '中阳县', 141100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141130, '交口县', 141100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141181, '孝义市', 141100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141182, '汾阳市', 141100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (141183, '其它区', 141100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150000, '内蒙古自治区', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150100, '呼和浩特市', 150000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150102, '新城区', 150100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150103, '回民区', 150100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150104, '玉泉区', 150100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150105, '赛罕区', 150100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150121, '土默特左旗', 150100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150122, '托克托县', 150100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150123, '和林格尔县', 150100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150124, '清水河县', 150100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150125, '武川县', 150100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150126, '其它区', 150100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150200, '包头市', 150000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150202, '东河区', 150200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150203, '昆都仑区', 150200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150204, '青山区', 150200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150205, '石拐区', 150200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150206, '白云矿区', 150200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150207, '九原区', 150200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150221, '土默特右旗', 150200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150222, '固阳县', 150200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150223, '达尔罕茂明安联合旗', 150200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150224, '其它区', 150200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150300, '乌海市', 150000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150302, '海勃湾区', 150300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150303, '海南区', 150300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150304, '乌达区', 150300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150305, '其它区', 150300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150400, '赤峰市', 150000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150402, '红山区', 150400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150403, '元宝山区', 150400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150404, '松山区', 150400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150421, '阿鲁科尔沁旗', 150400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150422, '巴林左旗', 150400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150423, '巴林右旗', 150400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150424, '林西县', 150400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150425, '克什克腾旗', 150400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150426, '翁牛特旗', 150400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150428, '喀喇沁旗', 150400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150429, '宁城县', 150400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150430, '敖汉旗', 150400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150431, '其它区', 150400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150500, '通辽市', 150000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150502, '科尔沁区', 150500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150521, '科尔沁左翼中旗', 150500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150522, '科尔沁左翼后旗', 150500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150523, '开鲁县', 150500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150524, '库伦旗', 150500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150525, '奈曼旗', 150500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150526, '扎鲁特旗', 150500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150581, '霍林郭勒市', 150500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150582, '其它区', 150500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150600, '鄂尔多斯市', 150000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150602, '东胜区', 150600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150621, '达拉特旗', 150600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150622, '准格尔旗', 150600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150623, '鄂托克前旗', 150600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150624, '鄂托克旗', 150600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150625, '杭锦旗', 150600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150626, '乌审旗', 150600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150627, '伊金霍洛旗', 150600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150628, '其它区', 150600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150700, '呼伦贝尔市', 150000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150702, '海拉尔区', 150700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150721, '阿荣旗', 150700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150722, '莫力达瓦达斡尔族自治旗', 150700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150723, '鄂伦春自治旗', 150700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150724, '鄂温克族自治旗', 150700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150725, '陈巴尔虎旗', 150700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150726, '新巴尔虎左旗', 150700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150727, '新巴尔虎右旗', 150700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150781, '满洲里市', 150700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150782, '牙克石市', 150700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150783, '扎兰屯市', 150700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150784, '额尔古纳市', 150700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150785, '根河市', 150700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150786, '其它区', 150700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150800, '巴彦淖尔市', 150000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150802, '临河区', 150800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150821, '五原县', 150800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150822, '磴口县', 150800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150823, '乌拉特前旗', 150800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150824, '乌拉特中旗', 150800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150825, '乌拉特后旗', 150800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150826, '杭锦后旗', 150800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150827, '其它区', 150800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150900, '乌兰察布市', 150000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150902, '集宁区', 150900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150921, '卓资县', 150900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150922, '化德县', 150900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150923, '商都县', 150900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150924, '兴和县', 150900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150925, '凉城县', 150900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150926, '察哈尔右翼前旗', 150900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150927, '察哈尔右翼中旗', 150900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150928, '察哈尔右翼后旗', 150900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150929, '四子王旗', 150900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150981, '丰镇市', 150900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (150982, '其它区', 150900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152200, '兴安盟', 150000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152201, '乌兰浩特市', 152200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152202, '阿尔山市', 152200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152221, '科尔沁右翼前旗', 152200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152222, '科尔沁右翼中旗', 152200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152223, '扎赉特旗', 152200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152224, '突泉县', 152200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152225, '其它区', 152200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152500, '锡林郭勒盟', 150000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152501, '二连浩特市', 152500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152502, '锡林浩特市', 152500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152522, '阿巴嘎旗', 152500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152523, '苏尼特左旗', 152500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152524, '苏尼特右旗', 152500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152525, '东乌珠穆沁旗', 152500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152526, '西乌珠穆沁旗', 152500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152527, '太仆寺旗', 152500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152528, '镶黄旗', 152500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152529, '正镶白旗', 152500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152530, '正蓝旗', 152500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152531, '多伦县', 152500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152532, '其它区', 152500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152900, '阿拉善盟', 150000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152921, '阿拉善左旗', 152900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152922, '阿拉善右旗', 152900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152923, '额济纳旗', 152900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (152924, '其它区', 152900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210000, '辽宁省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210100, '沈阳市', 210000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210102, '和平区', 210100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210103, '沈河区', 210100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210104, '大东区', 210100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210105, '皇姑区', 210100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210106, '铁西区', 210100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210111, '苏家屯区', 210100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210112, '东陵区', 210100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210113, '新城子区', 210100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210114, '于洪区', 210100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210122, '辽中县', 210100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210123, '康平县', 210100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210124, '法库县', 210100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210181, '新民市', 210100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210182, '浑南新区', 210100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210183, '张士开发区', 210100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210184, '沈北新区', 210100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210185, '其它区', 210100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210200, '大连市', 210000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210202, '中山区', 210200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210203, '西岗区', 210200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210204, '沙河口区', 210200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210211, '甘井子区', 210200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210212, '旅顺口区', 210200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210213, '金州区', 210200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210224, '长海县', 210200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210251, '开发区', 210200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210281, '瓦房店市', 210200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210282, '普兰店市', 210200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210283, '庄河市', 210200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210297, '岭前区', 210200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210298, '其它区', 210200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210300, '鞍山市', 210000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210302, '铁东区', 210300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210303, '铁西区', 210300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210304, '立山区', 210300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210311, '千山区', 210300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210321, '台安县', 210300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210323, '岫岩满族自治县', 210300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210351, '高新区', 210300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210381, '海城市', 210300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210382, '其它区', 210300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210400, '抚顺市', 210000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210402, '新抚区', 210400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210403, '东洲区', 210400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210404, '望花区', 210400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210411, '顺城区', 210400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210421, '抚顺县', 210400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210422, '新宾满族自治县', 210400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210423, '清原满族自治县', 210400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210424, '其它区', 210400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210500, '本溪市', 210000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210502, '平山区', 210500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210503, '溪湖区', 210500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210504, '明山区', 210500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210505, '南芬区', 210500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210521, '本溪满族自治县', 210500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210522, '桓仁满族自治县', 210500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210523, '其它区', 210500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210600, '丹东市', 210000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210602, '元宝区', 210600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210603, '振兴区', 210600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210604, '振安区', 210600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210624, '宽甸满族自治县', 210600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210681, '东港市', 210600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210682, '凤城市', 210600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210683, '其它区', 210600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210700, '锦州市', 210000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210702, '古塔区', 210700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210703, '凌河区', 210700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210711, '太和区', 210700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210726, '黑山县', 210700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210727, '义县', 210700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210781, '凌海市', 210700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210782, '北镇市', 210700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210783, '其它区', 210700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210800, '营口市', 210000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210802, '站前区', 210800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210803, '西市区', 210800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210804, '鲅鱼圈区', 210800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210811, '老边区', 210800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210881, '盖州市', 210800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210882, '大石桥市', 210800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210883, '其它区', 210800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210900, '阜新市', 210000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210902, '海州区', 210900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210903, '新邱区', 210900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210904, '太平区', 210900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210905, '清河门区', 210900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210911, '细河区', 210900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210921, '阜新蒙古族自治县', 210900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210922, '彰武县', 210900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (210923, '其它区', 210900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211000, '辽阳市', 210000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211002, '白塔区', 211000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211003, '文圣区', 211000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211004, '宏伟区', 211000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211005, '弓长岭区', 211000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211011, '太子河区', 211000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211021, '辽阳县', 211000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211081, '灯塔市', 211000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211082, '其它区', 211000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211100, '盘锦市', 210000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211102, '双台子区', 211100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211103, '兴隆台区', 211100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211121, '大洼县', 211100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211122, '盘山县', 211100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211123, '其它区', 211100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211200, '铁岭市', 210000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211202, '银州区', 211200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211204, '清河区', 211200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211221, '铁岭县', 211200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211223, '西丰县', 211200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211224, '昌图县', 211200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211281, '调兵山市', 211200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211282, '开原市', 211200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211283, '其它区', 211200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211300, '朝阳市', 210000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211302, '双塔区', 211300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211303, '龙城区', 211300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211321, '朝阳县', 211300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211322, '建平县', 211300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211324, '喀喇沁左翼蒙古族自治县', 211300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211381, '北票市', 211300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211382, '凌源市', 211300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211383, '其它区', 211300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211400, '葫芦岛市', 210000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211402, '连山区', 211400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211403, '龙港区', 211400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211404, '南票区', 211400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211421, '绥中县', 211400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211422, '建昌县', 211400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211481, '兴城市', 211400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (211482, '其它区', 211400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220000, '吉林省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220100, '长春市', 220000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220102, '南关区', 220100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220103, '宽城区', 220100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220104, '朝阳区', 220100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220105, '二道区', 220100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220106, '绿园区', 220100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220112, '双阳区', 220100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220122, '农安县', 220100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220181, '九台市', 220100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220182, '榆树市', 220100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220183, '德惠市', 220100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220184, '高新技术产业开发区', 220100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220185, '汽车产业开发区', 220100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220186, '经济技术开发区', 220100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220187, '净月旅游开发区', 220100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220188, '其它区', 220100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220200, '吉林市', 220000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220202, '昌邑区', 220200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220203, '龙潭区', 220200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220204, '船营区', 220200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220211, '丰满区', 220200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220221, '永吉县', 220200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220281, '蛟河市', 220200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220282, '桦甸市', 220200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220283, '舒兰市', 220200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220284, '磐石市', 220200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220285, '其它区', 220200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220300, '四平市', 220000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220302, '铁西区', 220300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220303, '铁东区', 220300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220322, '梨树县', 220300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220323, '伊通满族自治县', 220300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220381, '公主岭市', 220300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220382, '双辽市', 220300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220383, '其它区', 220300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220400, '辽源市', 220000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220402, '龙山区', 220400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220403, '西安区', 220400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220421, '东丰县', 220400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220422, '东辽县', 220400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220423, '其它区', 220400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220500, '通化市', 220000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220502, '东昌区', 220500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220503, '二道江区', 220500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220521, '通化县', 220500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220523, '辉南县', 220500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220524, '柳河县', 220500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220581, '梅河口市', 220500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220582, '集安市', 220500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220583, '其它区', 220500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220600, '白山市', 220000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220602, '八道江区', 220600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220621, '抚松县', 220600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220622, '靖宇县', 220600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220623, '长白朝鲜族自治县', 220600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220625, '江源县', 220600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220681, '临江市', 220600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220682, '其它区', 220600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220700, '松原市', 220000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220702, '宁江区', 220700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220721, '前郭尔罗斯蒙古族自治县', 220700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220722, '长岭县', 220700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220723, '乾安县', 220700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220724, '扶余县', 220700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220725, '其它区', 220700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220800, '白城市', 220000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220802, '洮北区', 220800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220821, '镇赉县', 220800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220822, '通榆县', 220800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220881, '洮南市', 220800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220882, '大安市', 220800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (220883, '其它区', 220800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (222400, '延边朝鲜族自治州', 220000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (222401, '延吉市', 222400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (222402, '图们市', 222400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (222403, '敦化市', 222400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (222404, '珲春市', 222400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (222405, '龙井市', 222400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (222406, '和龙市', 222400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (222424, '汪清县', 222400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (222426, '安图县', 222400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (222427, '其它区', 222400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230000, '黑龙江省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230100, '哈尔滨市', 230000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230102, '道里区', 230100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230103, '南岗区', 230100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230104, '道外区', 230100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230106, '香坊区', 230100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230107, '动力区', 230100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230108, '平房区', 230100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230109, '松北区', 230100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230111, '呼兰区', 230100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230123, '依兰县', 230100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230124, '方正县', 230100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230125, '宾县', 230100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230126, '巴彦县', 230100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230127, '木兰县', 230100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230128, '通河县', 230100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230129, '延寿县', 230100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230181, '阿城市', 230100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230182, '双城市', 230100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230183, '尚志市', 230100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230184, '五常市', 230100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230185, '阿城市', 230100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230186, '其它区', 230100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230200, '齐齐哈尔市', 230000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230202, '龙沙区', 230200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230203, '建华区', 230200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230204, '铁锋区', 230200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230205, '昂昂溪区', 230200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230206, '富拉尔基区', 230200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230207, '碾子山区', 230200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230208, '梅里斯达斡尔族区', 230200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230221, '龙江县', 230200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230223, '依安县', 230200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230224, '泰来县', 230200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230225, '甘南县', 230200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230227, '富裕县', 230200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230229, '克山县', 230200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230230, '克东县', 230200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230231, '拜泉县', 230200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230281, '讷河市', 230200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230282, '其它区', 230200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230300, '鸡西市', 230000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230302, '鸡冠区', 230300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230303, '恒山区', 230300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230304, '滴道区', 230300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230305, '梨树区', 230300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230306, '城子河区', 230300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230307, '麻山区', 230300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230321, '鸡东县', 230300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230381, '虎林市', 230300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230382, '密山市', 230300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230383, '其它区', 230300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230400, '鹤岗市', 230000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230402, '向阳区', 230400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230403, '工农区', 230400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230404, '南山区', 230400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230405, '兴安区', 230400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230406, '东山区', 230400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230407, '兴山区', 230400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230421, '萝北县', 230400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230422, '绥滨县', 230400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230423, '其它区', 230400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230500, '双鸭山市', 230000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230502, '尖山区', 230500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230503, '岭东区', 230500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230505, '四方台区', 230500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230506, '宝山区', 230500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230521, '集贤县', 230500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230522, '友谊县', 230500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230523, '宝清县', 230500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230524, '饶河县', 230500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230525, '其它区', 230500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230600, '大庆市', 230000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230602, '萨尔图区', 230600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230603, '龙凤区', 230600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230604, '让胡路区', 230600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230605, '红岗区', 230600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230606, '大同区', 230600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230621, '肇州县', 230600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230622, '肇源县', 230600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230623, '林甸县', 230600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230624, '杜尔伯特蒙古族自治县', 230600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230625, '其它区', 230600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230700, '伊春市', 230000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230702, '伊春区', 230700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230703, '南岔区', 230700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230704, '友好区', 230700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230705, '西林区', 230700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230706, '翠峦区', 230700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230707, '新青区', 230700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230708, '美溪区', 230700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230709, '金山屯区', 230700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230710, '五营区', 230700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230711, '乌马河区', 230700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230712, '汤旺河区', 230700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230713, '带岭区', 230700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230714, '乌伊岭区', 230700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230715, '红星区', 230700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230716, '上甘岭区', 230700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230722, '嘉荫县', 230700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230781, '铁力市', 230700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230782, '其它区', 230700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230800, '佳木斯市', 230000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230802, '永红区', 230800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230803, '向阳区', 230800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230804, '前进区', 230800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230805, '东风区', 230800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230811, '郊区', 230800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230822, '桦南县', 230800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230826, '桦川县', 230800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230828, '汤原县', 230800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230833, '抚远县', 230800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230881, '同江市', 230800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230882, '富锦市', 230800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230883, '其它区', 230800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230900, '七台河市', 230000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230902, '新兴区', 230900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230903, '桃山区', 230900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230904, '茄子河区', 230900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230921, '勃利县', 230900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (230922, '其它区', 230900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231000, '牡丹江市', 230000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231002, '东安区', 231000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231003, '阳明区', 231000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231004, '爱民区', 231000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231005, '西安区', 231000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231024, '东宁县', 231000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231025, '林口县', 231000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231081, '绥芬河市', 231000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231083, '海林市', 231000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231084, '宁安市', 231000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231085, '穆棱市', 231000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231086, '其它区', 231000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231100, '黑河市', 230000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231102, '爱辉区', 231100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231121, '嫩江县', 231100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231123, '逊克县', 231100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231124, '孙吴县', 231100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231181, '北安市', 231100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231182, '五大连池市', 231100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231183, '其它区', 231100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231200, '绥化市', 230000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231202, '北林区', 231200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231221, '望奎县', 231200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231222, '兰西县', 231200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231223, '青冈县', 231200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231224, '庆安县', 231200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231225, '明水县', 231200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231226, '绥棱县', 231200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231281, '安达市', 231200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231282, '肇东市', 231200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231283, '海伦市', 231200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (231284, '其它区', 231200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (232700, '大兴安岭地区', 230000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (232721, '呼玛县', 232700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (232722, '塔河县', 232700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (232723, '漠河县', 232700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (232724, '加格达奇区', 232700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (232725, '其它区', 232700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310000, '上海', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310100, '上海市', 310000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310101, '黄浦区', 310100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310103, '卢湾区', 310100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310104, '徐汇区', 310100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310105, '长宁区', 310100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310106, '静安区', 310100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310107, '普陀区', 310100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310108, '闸北区', 310100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310109, '虹口区', 310100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310110, '杨浦区', 310100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310112, '闵行区', 310100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310113, '宝山区', 310100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310114, '嘉定区', 310100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310115, '浦东新区', 310100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310116, '金山区', 310100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310117, '松江区', 310100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310118, '青浦区', 310100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310119, '南汇区', 310100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310120, '奉贤区', 310100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310152, '川沙区', 310100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310230, '崇明县', 310100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (310231, '其它区', 310100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320000, '江苏省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320100, '南京市', 320000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320102, '玄武区', 320100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320103, '白下区', 320100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320104, '秦淮区', 320100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320105, '建邺区', 320100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320106, '鼓楼区', 320100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320107, '下关区', 320100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320111, '浦口区', 320100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320113, '栖霞区', 320100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320114, '雨花台区', 320100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320115, '江宁区', 320100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320116, '六合区', 320100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320124, '溧水县', 320100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320125, '高淳县', 320100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320126, '其它区', 320100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320200, '无锡市', 320000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320202, '崇安区', 320200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320203, '南长区', 320200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320204, '北塘区', 320200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320205, '锡山区', 320200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320206, '惠山区', 320200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320211, '滨湖区', 320200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320281, '江阴市', 320200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320282, '宜兴市', 320200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320296, '新区', 320200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320297, '其它区', 320200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320300, '徐州市', 320000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320302, '鼓楼区', 320300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320303, '云龙区', 320300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320304, '九里区', 320300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320305, '贾汪区', 320300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320311, '泉山区', 320300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320321, '丰县', 320300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320322, '沛县', 320300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320323, '铜山县', 320300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320324, '睢宁县', 320300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320381, '新沂市', 320300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320382, '邳州市', 320300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320383, '其它区', 320300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320400, '常州市', 320000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320402, '天宁区', 320400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320404, '钟楼区', 320400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320405, '戚墅堰区', 320400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320411, '新北区', 320400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320412, '武进区', 320400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320481, '溧阳市', 320400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320482, '金坛市', 320400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320483, '其它区', 320400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320500, '苏州市', 320000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320502, '沧浪区', 320500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320503, '平江区', 320500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320504, '金阊区', 320500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320505, '虎丘区', 320500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320506, '吴中区', 320500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320507, '相城区', 320500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320581, '常熟市', 320500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320582, '张家港市', 320500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320583, '昆山市', 320500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320584, '吴江市', 320500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320585, '太仓市', 320500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320594, '新区', 320500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320595, '园区', 320500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320596, '其它区', 320500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320600, '南通市', 320000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320602, '崇川区', 320600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320611, '港闸区', 320600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320612, '通州区', 320600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320621, '海安县', 320600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320623, '如东县', 320600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320681, '启东市', 320600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320682, '如皋市', 320600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320683, '通州市', 320600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320684, '海门市', 320600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320693, '开发区', 320600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320694, '其它区', 320600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320700, '连云港市', 320000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320703, '连云区', 320700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320705, '新浦区', 320700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320706, '海州区', 320700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320721, '赣榆县', 320700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320722, '东海县', 320700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320723, '灌云县', 320700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320724, '灌南县', 320700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320725, '其它区', 320700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320800, '淮安市', 320000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320802, '清河区', 320800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320803, '楚州区', 320800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320804, '淮阴区', 320800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320811, '清浦区', 320800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320826, '涟水县', 320800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320829, '洪泽县', 320800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320830, '盱眙县', 320800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320831, '金湖县', 320800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320832, '其它区', 320800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320900, '盐城市', 320000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320902, '亭湖区', 320900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320903, '盐都区', 320900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320921, '响水县', 320900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320922, '滨海县', 320900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320923, '阜宁县', 320900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320924, '射阳县', 320900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320925, '建湖县', 320900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320981, '东台市', 320900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320982, '大丰市', 320900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (320983, '其它区', 320900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321000, '扬州市', 320000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321002, '广陵区', 321000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321003, '邗江区', 321000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321011, '维扬区', 321000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321023, '宝应县', 321000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321081, '仪征市', 321000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321084, '高邮市', 321000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321088, '江都市', 321000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321092, '经济开发区', 321000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321093, '其它区', 321000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321100, '镇江市', 320000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321102, '京口区', 321100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321111, '润州区', 321100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321112, '丹徒区', 321100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321181, '丹阳市', 321100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321182, '扬中市', 321100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321183, '句容市', 321100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321184, '其它区', 321100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321200, '泰州市', 320000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321202, '海陵区', 321200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321203, '高港区', 321200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321281, '兴化市', 321200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321282, '靖江市', 321200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321283, '泰兴市', 321200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321284, '姜堰市', 321200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321285, '其它区', 321200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321300, '宿迁市', 320000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321302, '宿城区', 321300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321311, '宿豫区', 321300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321322, '沭阳县', 321300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321323, '泗阳县', 321300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321324, '泗洪县', 321300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (321325, '其它区', 321300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330000, '浙江省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330100, '杭州市', 330000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330102, '上城区', 330100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330103, '下城区', 330100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330104, '江干区', 330100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330105, '拱墅区', 330100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330106, '西湖区', 330100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330108, '滨江区', 330100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330109, '萧山区', 330100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330110, '余杭区', 330100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330122, '桐庐县', 330100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330127, '淳安县', 330100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330182, '建德市', 330100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330183, '富阳市', 330100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330185, '临安市', 330100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330186, '其它区', 330100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330200, '宁波市', 330000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330203, '海曙区', 330200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330204, '江东区', 330200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330205, '江北区', 330200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330206, '北仑区', 330200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330211, '镇海区', 330200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330212, '鄞州区', 330200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330225, '象山县', 330200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330226, '宁海县', 330200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330281, '余姚市', 330200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330282, '慈溪市', 330200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330283, '奉化市', 330200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330284, '其它区', 330200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330300, '温州市', 330000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330302, '鹿城区', 330300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330303, '龙湾区', 330300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330304, '瓯海区', 330300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330322, '洞头县', 330300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330324, '永嘉县', 330300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330326, '平阳县', 330300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330327, '苍南县', 330300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330328, '文成县', 330300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330329, '泰顺县', 330300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330381, '瑞安市', 330300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330382, '乐清市', 330300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330383, '其它区', 330300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330400, '嘉兴市', 330000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330402, '南湖区', 330400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330411, '秀洲区', 330400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330421, '嘉善县', 330400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330424, '海盐县', 330400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330481, '海宁市', 330400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330482, '平湖市', 330400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330483, '桐乡市', 330400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330484, '其它区', 330400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330500, '湖州市', 330000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330502, '吴兴区', 330500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330503, '南浔区', 330500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330521, '德清县', 330500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330522, '长兴县', 330500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330523, '安吉县', 330500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330524, '其它区', 330500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330600, '绍兴市', 330000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330602, '越城区', 330600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330621, '绍兴县', 330600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330624, '新昌县', 330600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330681, '诸暨市', 330600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330682, '上虞市', 330600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330683, '嵊州市', 330600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330684, '其它区', 330600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330700, '金华市', 330000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330702, '婺城区', 330700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330703, '金东区', 330700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330723, '武义县', 330700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330726, '浦江县', 330700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330727, '磐安县', 330700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330781, '兰溪市', 330700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330782, '义乌市', 330700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330783, '东阳市', 330700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330784, '永康市', 330700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330785, '其它区', 330700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330800, '衢州市', 330000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330802, '柯城区', 330800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330803, '衢江区', 330800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330822, '常山县', 330800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330824, '开化县', 330800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330825, '龙游县', 330800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330881, '江山市', 330800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330882, '其它区', 330800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330900, '舟山市', 330000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330902, '定海区', 330900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330903, '普陀区', 330900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330921, '岱山县', 330900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330922, '嵊泗县', 330900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (330923, '其它区', 330900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331000, '台州市', 330000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331002, '椒江区', 331000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331003, '黄岩区', 331000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331004, '路桥区', 331000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331021, '玉环县', 331000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331022, '三门县', 331000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331023, '天台县', 331000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331024, '仙居县', 331000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331081, '温岭市', 331000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331082, '临海市', 331000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331083, '其它区', 331000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331100, '丽水市', 330000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331102, '莲都区', 331100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331121, '青田县', 331100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331122, '缙云县', 331100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331123, '遂昌县', 331100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331124, '松阳县', 331100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331125, '云和县', 331100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331126, '庆元县', 331100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331127, '景宁畲族自治县', 331100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331181, '龙泉市', 331100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (331182, '其它区', 331100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340000, '安徽省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340100, '合肥市', 340000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340102, '瑶海区', 340100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340103, '庐阳区', 340100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340104, '蜀山区', 340100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340111, '包河区', 340100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340121, '长丰县', 340100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340122, '肥东县', 340100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340123, '肥西县', 340100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340151, '高新区', 340100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340191, '中区', 340100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340192, '其它区', 340100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340200, '芜湖市', 340000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340202, '镜湖区', 340200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340203, '弋江区', 340200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340207, '鸠江区', 340200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340208, '三山区', 340200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340221, '芜湖县', 340200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340222, '繁昌县', 340200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340223, '南陵县', 340200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340224, '其它区', 340200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340300, '蚌埠市', 340000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340302, '龙子湖区', 340300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340303, '蚌山区', 340300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340304, '禹会区', 340300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340311, '淮上区', 340300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340321, '怀远县', 340300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340322, '五河县', 340300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340323, '固镇县', 340300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340324, '其它区', 340300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340400, '淮南市', 340000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340402, '大通区', 340400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340403, '田家庵区', 340400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340404, '谢家集区', 340400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340405, '八公山区', 340400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340406, '潘集区', 340400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340421, '凤台县', 340400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340422, '其它区', 340400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340500, '马鞍山市', 340000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340502, '金家庄区', 340500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340503, '花山区', 340500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340504, '雨山区', 340500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340521, '当涂县', 340500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340522, '其它区', 340500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340600, '淮北市', 340000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340602, '杜集区', 340600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340603, '相山区', 340600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340604, '烈山区', 340600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340621, '濉溪县', 340600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340622, '其它区', 340600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340700, '铜陵市', 340000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340702, '铜官山区', 340700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340703, '狮子山区', 340700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340711, '郊区', 340700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340721, '铜陵县', 340700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340722, '其它区', 340700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340800, '安庆市', 340000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340802, '迎江区', 340800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340803, '大观区', 340800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340811, '宜秀区', 340800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340822, '怀宁县', 340800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340823, '枞阳县', 340800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340824, '潜山县', 340800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340825, '太湖县', 340800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340826, '宿松县', 340800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340827, '望江县', 340800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340828, '岳西县', 340800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340881, '桐城市', 340800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (340882, '其它区', 340800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341000, '黄山市', 340000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341002, '屯溪区', 341000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341003, '黄山区', 341000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341004, '徽州区', 341000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341021, '歙县', 341000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341022, '休宁县', 341000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341023, '黟县', 341000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341024, '祁门县', 341000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341025, '其它区', 341000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341100, '滁州市', 340000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341102, '琅琊区', 341100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341103, '南谯区', 341100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341122, '来安县', 341100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341124, '全椒县', 341100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341125, '定远县', 341100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341126, '凤阳县', 341100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341181, '天长市', 341100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341182, '明光市', 341100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341183, '其它区', 341100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341200, '阜阳市', 340000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341202, '颍州区', 341200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341203, '颍东区', 341200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341204, '颍泉区', 341200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341221, '临泉县', 341200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341222, '太和县', 341200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341225, '阜南县', 341200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341226, '颍上县', 341200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341282, '界首市', 341200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341283, '其它区', 341200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341300, '宿州市', 340000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341302, '埇桥区', 341300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341321, '砀山县', 341300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341322, '萧县', 341300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341323, '灵璧县', 341300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341324, '泗县', 341300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341325, '其它区', 341300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341400, '巢湖市', 340100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341402, '居巢区', 340100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341421, '庐江县', 340100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341422, '无为县', 340200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341423, '含山县', 340500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341424, '和县', 340500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341500, '六安市', 340000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341502, '金安区', 341500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341503, '裕安区', 341500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341521, '寿县', 341500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341522, '霍邱县', 341500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341523, '舒城县', 341500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341524, '金寨县', 341500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341525, '霍山县', 341500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341526, '其它区', 341500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341600, '亳州市', 340000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341602, '谯城区', 341600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341621, '涡阳县', 341600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341622, '蒙城县', 341600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341623, '利辛县', 341600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341624, '其它区', 341600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341700, '池州市', 340000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341702, '贵池区', 341700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341721, '东至县', 341700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341722, '石台县', 341700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341723, '青阳县', 341700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341724, '其它区', 341700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341800, '宣城市', 340000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341802, '宣州区', 341800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341821, '郎溪县', 341800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341822, '广德县', 341800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341823, '泾县', 341800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341824, '绩溪县', 341800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341825, '旌德县', 341800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341881, '宁国市', 341800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (341882, '其它区', 341800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350000, '福建省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350100, '福州市', 350000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350102, '鼓楼区', 350100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350103, '台江区', 350100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350104, '仓山区', 350100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350105, '马尾区', 350100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350111, '晋安区', 350100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350121, '闽侯县', 350100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350122, '连江县', 350100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350123, '罗源县', 350100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350124, '闽清县', 350100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350125, '永泰县', 350100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350128, '平潭县', 350100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350181, '福清市', 350100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350182, '长乐市', 350100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350183, '其它区', 350100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350200, '厦门市', 350000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350203, '思明区', 350200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350205, '海沧区', 350200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350206, '湖里区', 350200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350211, '集美区', 350200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350212, '同安区', 350200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350213, '翔安区', 350200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350214, '其它区', 350200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350300, '莆田市', 350000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350302, '城厢区', 350300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350303, '涵江区', 350300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350304, '荔城区', 350300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350305, '秀屿区', 350300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350322, '仙游县', 350300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350323, '其它区', 350300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350400, '三明市', 350000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350402, '梅列区', 350400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350403, '三元区', 350400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350421, '明溪县', 350400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350423, '清流县', 350400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350424, '宁化县', 350400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350425, '大田县', 350400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350426, '尤溪县', 350400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350427, '沙县', 350400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350428, '将乐县', 350400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350429, '泰宁县', 350400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350430, '建宁县', 350400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350481, '永安市', 350400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350482, '其它区', 350400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350500, '泉州市', 350000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350502, '鲤城区', 350500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350503, '丰泽区', 350500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350504, '洛江区', 350500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350505, '泉港区', 350500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350521, '惠安县', 350500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350524, '安溪县', 350500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350525, '永春县', 350500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350526, '德化县', 350500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350527, '金门县', 350500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350581, '石狮市', 350500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350582, '晋江市', 350500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350583, '南安市', 350500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350584, '其它区', 350500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350600, '漳州市', 350000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350602, '芗城区', 350600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350603, '龙文区', 350600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350622, '云霄县', 350600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350623, '漳浦县', 350600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350624, '诏安县', 350600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350625, '长泰县', 350600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350626, '东山县', 350600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350627, '南靖县', 350600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350628, '平和县', 350600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350629, '华安县', 350600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350681, '龙海市', 350600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350682, '其它区', 350600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350700, '南平市', 350000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350702, '延平区', 350700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350721, '顺昌县', 350700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350722, '浦城县', 350700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350723, '光泽县', 350700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350724, '松溪县', 350700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350725, '政和县', 350700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350781, '邵武市', 350700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350782, '武夷山市', 350700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350783, '建瓯市', 350700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350784, '建阳市', 350700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350785, '其它区', 350700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350800, '龙岩市', 350000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350802, '新罗区', 350800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350821, '长汀县', 350800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350822, '永定县', 350800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350823, '上杭县', 350800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350824, '武平县', 350800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350825, '连城县', 350800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350881, '漳平市', 350800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350882, '其它区', 350800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350900, '宁德市', 350000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350902, '蕉城区', 350900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350921, '霞浦县', 350900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350922, '古田县', 350900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350923, '屏南县', 350900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350924, '寿宁县', 350900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350925, '周宁县', 350900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350926, '柘荣县', 350900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350981, '福安市', 350900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350982, '福鼎市', 350900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (350983, '其它区', 350900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360000, '江西省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360100, '南昌市', 360000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360102, '东湖区', 360100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360103, '西湖区', 360100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360104, '青云谱区', 360100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360105, '湾里区', 360100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360111, '青山湖区', 360100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360121, '南昌县', 360100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360122, '新建县', 360100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360123, '安义县', 360100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360124, '进贤县', 360100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360125, '红谷滩新区', 360100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360126, '经济技术开发区', 360100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360127, '昌北区', 360100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360128, '其它区', 360100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360200, '景德镇市', 360000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360202, '昌江区', 360200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360203, '珠山区', 360200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360222, '浮梁县', 360200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360281, '乐平市', 360200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360282, '其它区', 360200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360300, '萍乡市', 360000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360302, '安源区', 360300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360313, '湘东区', 360300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360321, '莲花县', 360300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360322, '上栗县', 360300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360323, '芦溪县', 360300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360324, '其它区', 360300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360400, '九江市', 360000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360402, '庐山区', 360400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360403, '浔阳区', 360400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360421, '九江县', 360400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360423, '武宁县', 360400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360424, '修水县', 360400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360425, '永修县', 360400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360426, '德安县', 360400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360427, '星子县', 360400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360428, '都昌县', 360400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360429, '湖口县', 360400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360430, '彭泽县', 360400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360481, '瑞昌市', 360400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360482, '其它区', 360400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360500, '新余市', 360000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360502, '渝水区', 360500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360521, '分宜县', 360500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360522, '其它区', 360500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360600, '鹰潭市', 360000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360602, '月湖区', 360600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360622, '余江县', 360600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360681, '贵溪市', 360600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360682, '其它区', 360600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360700, '赣州市', 360000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360702, '章贡区', 360700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360721, '赣县', 360700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360722, '信丰县', 360700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360723, '大余县', 360700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360724, '上犹县', 360700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360725, '崇义县', 360700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360726, '安远县', 360700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360727, '龙南县', 360700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360728, '定南县', 360700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360729, '全南县', 360700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360730, '宁都县', 360700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360731, '于都县', 360700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360732, '兴国县', 360700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360733, '会昌县', 360700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360734, '寻乌县', 360700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360735, '石城县', 360700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360751, '黄金区', 360700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360781, '瑞金市', 360700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360782, '南康市', 360700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360783, '其它区', 360700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360800, '吉安市', 360000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360802, '吉州区', 360800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360803, '青原区', 360800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360821, '吉安县', 360800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360822, '吉水县', 360800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360823, '峡江县', 360800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360824, '新干县', 360800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360825, '永丰县', 360800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360826, '泰和县', 360800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360827, '遂川县', 360800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360828, '万安县', 360800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360829, '安福县', 360800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360830, '永新县', 360800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360881, '井冈山市', 360800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360882, '其它区', 360800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360900, '宜春市', 360000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360902, '袁州区', 360900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360921, '奉新县', 360900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360922, '万载县', 360900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360923, '上高县', 360900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360924, '宜丰县', 360900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360925, '靖安县', 360900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360926, '铜鼓县', 360900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360981, '丰城市', 360900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360982, '樟树市', 360900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360983, '高安市', 360900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (360984, '其它区', 360900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361000, '抚州市', 360000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361002, '临川区', 361000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361021, '南城县', 361000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361022, '黎川县', 361000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361023, '南丰县', 361000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361024, '崇仁县', 361000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361025, '乐安县', 361000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361026, '宜黄县', 361000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361027, '金溪县', 361000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361028, '资溪县', 361000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361029, '东乡县', 361000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361030, '广昌县', 361000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361031, '其它区', 361000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361100, '上饶市', 360000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361102, '信州区', 361100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361121, '上饶县', 361100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361122, '广丰县', 361100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361123, '玉山县', 361100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361124, '铅山县', 361100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361125, '横峰县', 361100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361126, '弋阳县', 361100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361127, '余干县', 361100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361128, '鄱阳县', 361100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361129, '万年县', 361100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361130, '婺源县', 361100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361181, '德兴市', 361100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (361182, '其它区', 361100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370000, '山东省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370100, '济南市', 370000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370102, '历下区', 370100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370103, '市中区', 370100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370104, '槐荫区', 370100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370105, '天桥区', 370100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370112, '历城区', 370100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370113, '长清区', 370100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370124, '平阴县', 370100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370125, '济阳县', 370100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370126, '商河县', 370100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370181, '章丘市', 370100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370182, '其它区', 370100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370200, '青岛市', 370000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370202, '市南区', 370200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370203, '市北区', 370200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370205, '四方区', 370200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370211, '黄岛区', 370200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370212, '崂山区', 370200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370213, '李沧区', 370200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370214, '城阳区', 370200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370251, '开发区', 370200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370281, '胶州市', 370200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370282, '即墨市', 370200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370283, '平度市', 370200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370284, '胶南市', 370200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370285, '莱西市', 370200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370286, '其它区', 370200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370300, '淄博市', 370000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370302, '淄川区', 370300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370303, '张店区', 370300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370304, '博山区', 370300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370305, '临淄区', 370300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370306, '周村区', 370300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370321, '桓台县', 370300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370322, '高青县', 370300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370323, '沂源县', 370300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370324, '其它区', 370300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370400, '枣庄市', 370000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370402, '市中区', 370400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370403, '薛城区', 370400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370404, '峄城区', 370400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370405, '台儿庄区', 370400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370406, '山亭区', 370400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370481, '滕州市', 370400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370482, '其它区', 370400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370500, '东营市', 370000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370502, '东营区', 370500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370503, '河口区', 370500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370521, '垦利县', 370500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370522, '利津县', 370500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370523, '广饶县', 370500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370589, '西城区', 370500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370590, '东城区', 370500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370591, '其它区', 370500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370600, '烟台市', 370000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370602, '芝罘区', 370600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370611, '福山区', 370600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370612, '牟平区', 370600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370613, '莱山区', 370600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370634, '长岛县', 370600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370681, '龙口市', 370600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370682, '莱阳市', 370600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370683, '莱州市', 370600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370684, '蓬莱市', 370600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370685, '招远市', 370600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370686, '栖霞市', 370600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370687, '海阳市', 370600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370688, '其它区', 370600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370700, '潍坊市', 370000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370702, '潍城区', 370700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370703, '寒亭区', 370700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370704, '坊子区', 370700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370705, '奎文区', 370700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370724, '临朐县', 370700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370725, '昌乐县', 370700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370751, '开发区', 370700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370781, '青州市', 370700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370782, '诸城市', 370700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370783, '寿光市', 370700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370784, '安丘市', 370700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370785, '高密市', 370700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370786, '昌邑市', 370700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370787, '其它区', 370700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370800, '济宁市', 370000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370802, '市中区', 370800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370811, '任城区', 370800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370826, '微山县', 370800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370827, '鱼台县', 370800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370828, '金乡县', 370800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370829, '嘉祥县', 370800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370830, '汶上县', 370800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370831, '泗水县', 370800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370832, '梁山县', 370800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370881, '曲阜市', 370800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370882, '兖州市', 370800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370883, '邹城市', 370800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370884, '其它区', 370800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370900, '泰安市', 370000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370902, '泰山区', 370900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370903, '岱岳区', 370900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370921, '宁阳县', 370900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370923, '东平县', 370900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370982, '新泰市', 370900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370983, '肥城市', 370900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (370984, '其它区', 370900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371000, '威海市', 370000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371002, '环翠区', 371000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371081, '文登市', 371000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371082, '荣成市', 371000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371083, '乳山市', 371000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371084, '其它区', 371000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371100, '日照市', 370000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371102, '东港区', 371100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371103, '岚山区', 371100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371121, '五莲县', 371100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371122, '莒县', 371100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371123, '其它区', 371100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371200, '莱芜市', 370000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371202, '莱城区', 371200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371203, '钢城区', 371200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371204, '其它区', 371200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371300, '临沂市', 370000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371302, '兰山区', 371300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371311, '罗庄区', 371300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371312, '河东区', 371300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371321, '沂南县', 371300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371322, '郯城县', 371300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371323, '沂水县', 371300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371324, '苍山县', 371300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371325, '费县', 371300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371326, '平邑县', 371300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371327, '莒南县', 371300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371328, '蒙阴县', 371300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371329, '临沭县', 371300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371330, '其它区', 371300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371400, '德州市', 370000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371402, '德城区', 371400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371421, '陵县', 371400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371422, '宁津县', 371400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371423, '庆云县', 371400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371424, '临邑县', 371400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371425, '齐河县', 371400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371426, '平原县', 371400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371427, '夏津县', 371400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371428, '武城县', 371400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371451, '开发区', 371400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371481, '乐陵市', 371400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371482, '禹城市', 371400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371483, '其它区', 371400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371500, '聊城市', 370000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371502, '东昌府区', 371500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371521, '阳谷县', 371500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371522, '莘县', 371500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371523, '茌平县', 371500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371524, '东阿县', 371500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371525, '冠县', 371500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371526, '高唐县', 371500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371581, '临清市', 371500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371582, '其它区', 371500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371600, '滨州市', 370000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371602, '滨城区', 371600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371621, '惠民县', 371600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371622, '阳信县', 371600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371623, '无棣县', 371600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371624, '沾化县', 371600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371625, '博兴县', 371600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371626, '邹平县', 371600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371627, '其它区', 371600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371700, '菏泽市', 370000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371702, '牡丹区', 371700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371721, '曹县', 371700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371722, '单县', 371700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371723, '成武县', 371700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371724, '巨野县', 371700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371725, '郓城县', 371700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371726, '鄄城县', 371700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371727, '定陶县', 371700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371728, '东明县', 371700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (371729, '其它区', 371700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410000, '河南省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410100, '郑州市', 410000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410102, '中原区', 410100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410103, '二七区', 410100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410104, '管城回族区', 410100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410105, '金水区', 410100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410106, '上街区', 410100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410108, '惠济区', 410100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410122, '中牟县', 410100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410181, '巩义市', 410100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410182, '荥阳市', 410100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410183, '新密市', 410100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410184, '新郑市', 410100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410185, '登封市', 410100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410186, '郑东新区', 410100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410187, '高新区', 410100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410188, '其它区', 410100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410200, '开封市', 410000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410202, '龙亭区', 410200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410203, '顺河回族区', 410200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410204, '鼓楼区', 410200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410205, '禹王台区', 410200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410211, '金明区', 410200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410221, '杞县', 410200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410222, '通许县', 410200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410223, '尉氏县', 410200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410224, '开封县', 410200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410225, '兰考县', 410200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410226, '其它区', 410200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410300, '洛阳市', 410000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410302, '老城区', 410300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410303, '西工区', 410300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410304, '廛河回族区', 410300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410305, '涧西区', 410300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410306, '吉利区', 410300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410307, '洛龙区', 410300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410322, '孟津县', 410300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410323, '新安县', 410300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410324, '栾川县', 410300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410325, '嵩县', 410300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410326, '汝阳县', 410300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410327, '宜阳县', 410300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410328, '洛宁县', 410300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410329, '伊川县', 410300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410381, '偃师市', 410300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410400, '平顶山市', 410000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410402, '新华区', 410400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410403, '卫东区', 410400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410404, '石龙区', 410400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410411, '湛河区', 410400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410421, '宝丰县', 410400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410422, '叶县', 410400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410423, '鲁山县', 410400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410425, '郏县', 410400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410481, '舞钢市', 410400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410482, '汝州市', 410400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410483, '其它区', 410400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410500, '安阳市', 410000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410502, '文峰区', 410500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410503, '北关区', 410500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410505, '殷都区', 410500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410506, '龙安区', 410500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410522, '安阳县', 410500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410523, '汤阴县', 410500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410526, '滑县', 410500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410527, '内黄县', 410500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410581, '林州市', 410500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410582, '其它区', 410500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410600, '鹤壁市', 410000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410602, '鹤山区', 410600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410603, '山城区', 410600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410611, '淇滨区', 410600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410621, '浚县', 410600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410622, '淇县', 410600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410623, '其它区', 410600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410700, '新乡市', 410000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410702, '红旗区', 410700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410703, '卫滨区', 410700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410704, '凤泉区', 410700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410711, '牧野区', 410700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410721, '新乡县', 410700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410724, '获嘉县', 410700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410725, '原阳县', 410700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410726, '延津县', 410700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410727, '封丘县', 410700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410728, '长垣县', 410700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410781, '卫辉市', 410700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410782, '辉县市', 410700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410783, '其它区', 410700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410800, '焦作市', 410000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410802, '解放区', 410800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410803, '中站区', 410800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410804, '马村区', 410800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410811, '山阳区', 410800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410821, '修武县', 410800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410822, '博爱县', 410800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410823, '武陟县', 410800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410825, '温县', 410800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410881, '济源市', 410000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410882, '沁阳市', 410800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410883, '孟州市', 410800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410884, '其它区', 410800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410900, '濮阳市', 410000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410902, '华龙区', 410900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410922, '清丰县', 410900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410923, '南乐县', 410900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410926, '范县', 410900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410927, '台前县', 410900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410928, '濮阳县', 410900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (410929, '其它区', 410900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411000, '许昌市', 410000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411002, '魏都区', 411000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411023, '许昌县', 411000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411024, '鄢陵县', 411000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411025, '襄城县', 411000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411081, '禹州市', 411000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411082, '长葛市', 411000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411083, '其它区', 411000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411100, '漯河市', 410000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411102, '源汇区', 411100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411103, '郾城区', 411100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411104, '召陵区', 411100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411121, '舞阳县', 411100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411122, '临颍县', 411100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411123, '其它区', 411100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411200, '三门峡市', 410000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411202, '湖滨区', 411200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411221, '渑池县', 411200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411222, '陕县', 411200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411224, '卢氏县', 411200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411281, '义马市', 411200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411282, '灵宝市', 411200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411283, '其它区', 411200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411300, '南阳市', 410000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411302, '宛城区', 411300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411303, '卧龙区', 411300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411321, '南召县', 411300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411322, '方城县', 411300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411323, '西峡县', 411300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411324, '镇平县', 411300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411325, '内乡县', 411300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411326, '淅川县', 411300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411327, '社旗县', 411300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411328, '唐河县', 411300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411329, '新野县', 411300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411330, '桐柏县', 411300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411381, '邓州市', 411300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411382, '其它区', 411300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411400, '商丘市', 410000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411402, '梁园区', 411400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411403, '睢阳区', 411400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411421, '民权县', 411400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411422, '睢县', 411400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411423, '宁陵县', 411400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411424, '柘城县', 411400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411425, '虞城县', 411400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411426, '夏邑县', 411400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411481, '永城市', 411400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411482, '其它区', 411400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411500, '信阳市', 410000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411502, '浉河区', 411500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411503, '平桥区', 411500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411521, '罗山县', 411500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411522, '光山县', 411500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411523, '新县', 411500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411524, '商城县', 411500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411525, '固始县', 411500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411526, '潢川县', 411500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411527, '淮滨县', 411500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411528, '息县', 411500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411529, '其它区', 411500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411600, '周口市', 410000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411602, '川汇区', 411600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411621, '扶沟县', 411600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411622, '西华县', 411600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411623, '商水县', 411600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411624, '沈丘县', 411600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411625, '郸城县', 411600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411626, '淮阳县', 411600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411627, '太康县', 411600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411628, '鹿邑县', 411600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411681, '项城市', 411600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411682, '其它区', 411600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411700, '驻马店市', 410000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411702, '驿城区', 411700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411721, '西平县', 411700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411722, '上蔡县', 411700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411723, '平舆县', 411700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411724, '正阳县', 411700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411725, '确山县', 411700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411726, '泌阳县', 411700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411727, '汝南县', 411700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411728, '遂平县', 411700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411729, '新蔡县', 411700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (411730, '其它区', 411700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420000, '湖北省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420100, '武汉市', 420000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420102, '江岸区', 420100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420103, '江汉区', 420100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420104, '硚口区', 420100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420105, '汉阳区', 420100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420106, '武昌区', 420100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420107, '青山区', 420100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420111, '洪山区', 420100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420112, '东西湖区', 420100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420113, '汉南区', 420100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420114, '蔡甸区', 420100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420115, '江夏区', 420100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420116, '黄陂区', 420100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420117, '新洲区', 420100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420118, '其它区', 420100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420200, '黄石市', 420000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420202, '黄石港区', 420200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420203, '西塞山区', 420200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420204, '下陆区', 420200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420205, '铁山区', 420200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420222, '阳新县', 420200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420281, '大冶市', 420200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420282, '其它区', 420200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420300, '十堰市', 420000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420302, '茅箭区', 420300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420303, '张湾区', 420300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420321, '郧县', 420300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420322, '郧西县', 420300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420323, '竹山县', 420300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420324, '竹溪县', 420300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420325, '房县', 420300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420381, '丹江口市', 420300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420382, '城区', 420300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420383, '其它区', 420300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420500, '宜昌市', 420000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420502, '西陵区', 420500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420503, '伍家岗区', 420500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420504, '点军区', 420500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420505, '猇亭区', 420500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420506, '夷陵区', 420500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420525, '远安县', 420500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420526, '兴山县', 420500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420527, '秭归县', 420500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420528, '长阳土家族自治县', 420500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420529, '五峰土家族自治县', 420500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420551, '葛洲坝区', 420500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420552, '开发区', 420500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420581, '宜都市', 420500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420582, '当阳市', 420500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420583, '枝江市', 420500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420584, '其它区', 420500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420600, '襄阳市', 420000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420602, '襄城区', 420600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420606, '樊城区', 420600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420607, '襄州区', 420600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420624, '南漳县', 420600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420625, '谷城县', 420600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420626, '保康县', 420600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420682, '老河口市', 420600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420683, '枣阳市', 420600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420684, '宜城市', 420600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420685, '其它区', 420600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420700, '鄂州市', 420000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420702, '梁子湖区', 420700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420703, '华容区', 420700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420704, '鄂城区', 420700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420705, '其它区', 420700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420800, '荆门市', 420000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420802, '东宝区', 420800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420804, '掇刀区', 420800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420821, '京山县', 420800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420822, '沙洋县', 420800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420881, '钟祥市', 420800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420882, '其它区', 420800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420900, '孝感市', 420000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420902, '孝南区', 420900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420921, '孝昌县', 420900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420922, '大悟县', 420900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420923, '云梦县', 420900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420981, '应城市', 420900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420982, '安陆市', 420900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420984, '汉川市', 420900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (420985, '其它区', 420900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421000, '荆州市', 420000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421002, '沙市区', 421000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421003, '荆州区', 421000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421022, '公安县', 421000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421023, '监利县', 421000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421024, '江陵县', 421000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421081, '石首市', 421000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421083, '洪湖市', 421000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421087, '松滋市', 421000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421088, '其它区', 421000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421100, '黄冈市', 420000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421102, '黄州区', 421100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421121, '团风县', 421100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421122, '红安县', 421100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421123, '罗田县', 421100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421124, '英山县', 421100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421125, '浠水县', 421100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421126, '蕲春县', 421100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421127, '黄梅县', 421100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421181, '麻城市', 421100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421182, '武穴市', 421100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421183, '其它区', 421100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421200, '咸宁市', 420000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421202, '咸安区', 421200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421221, '嘉鱼县', 421200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421222, '通城县', 421200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421223, '崇阳县', 421200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421224, '通山县', 421200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421281, '赤壁市', 421200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421282, '温泉城区', 421200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421283, '其它区', 421200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421300, '随州市', 420000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421302, '曾都区', 421300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421321, '随县', 421300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421381, '广水市', 421300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (421382, '其它区', 421300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (422800, '恩施土家族苗族自治州', 420000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (422801, '恩施市', 422800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (422802, '利川市', 422800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (422822, '建始县', 422800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (422823, '巴东县', 422800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (422825, '宣恩县', 422800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (422826, '咸丰县', 422800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (422827, '来凤县', 422800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (422828, '鹤峰县', 422800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (422829, '其它区', 422800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (429004, '仙桃市', 420000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (429005, '潜江市', 420000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (429006, '天门市', 420000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (429021, '神农架林区', 420000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430000, '湖南省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430100, '长沙市', 430000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430102, '芙蓉区', 430100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430103, '天心区', 430100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430104, '岳麓区', 430100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430105, '开福区', 430100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430111, '雨花区', 430100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430121, '长沙县', 430100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430122, '望城县', 430100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430124, '宁乡县', 430100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430181, '浏阳市', 430100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430182, '其它区', 430100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430200, '株洲市', 430000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430202, '荷塘区', 430200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430203, '芦淞区', 430200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430204, '石峰区', 430200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430211, '天元区', 430200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430221, '株洲县', 430200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430223, '攸县', 430200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430224, '茶陵县', 430200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430225, '炎陵县', 430200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430281, '醴陵市', 430200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430282, '其它区', 430200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430300, '湘潭市', 430000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430302, '雨湖区', 430300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430304, '岳塘区', 430300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430321, '湘潭县', 430300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430381, '湘乡市', 430300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430382, '韶山市', 430300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430383, '其它区', 430300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430400, '衡阳市', 430000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430405, '珠晖区', 430400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430406, '雁峰区', 430400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430407, '石鼓区', 430400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430408, '蒸湘区', 430400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430412, '南岳区', 430400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430421, '衡阳县', 430400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430422, '衡南县', 430400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430423, '衡山县', 430400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430424, '衡东县', 430400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430426, '祁东县', 430400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430481, '耒阳市', 430400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430482, '常宁市', 430400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430483, '其它区', 430400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430500, '邵阳市', 430000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430502, '双清区', 430500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430503, '大祥区', 430500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430511, '北塔区', 430500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430521, '邵东县', 430500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430522, '新邵县', 430500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430523, '邵阳县', 430500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430524, '隆回县', 430500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430525, '洞口县', 430500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430527, '绥宁县', 430500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430528, '新宁县', 430500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430529, '城步苗族自治县', 430500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430581, '武冈市', 430500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430582, '其它区', 430500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430600, '岳阳市', 430000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430602, '岳阳楼区', 430600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430603, '云溪区', 430600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430611, '君山区', 430600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430621, '岳阳县', 430600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430623, '华容县', 430600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430624, '湘阴县', 430600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430626, '平江县', 430600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430681, '汨罗市', 430600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430682, '临湘市', 430600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430683, '其它区', 430600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430700, '常德市', 430000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430702, '武陵区', 430700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430703, '鼎城区', 430700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430721, '安乡县', 430700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430722, '汉寿县', 430700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430723, '澧县', 430700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430724, '临澧县', 430700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430725, '桃源县', 430700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430726, '石门县', 430700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430781, '津市市', 430700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430782, '其它区', 430700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430800, '张家界市', 430000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430802, '永定区', 430800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430811, '武陵源区', 430800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430821, '慈利县', 430800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430822, '桑植县', 430800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430823, '其它区', 430800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430900, '益阳市', 430000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430902, '资阳区', 430900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430903, '赫山区', 430900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430921, '南县', 430900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430922, '桃江县', 430900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430923, '安化县', 430900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430981, '沅江市', 430900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (430982, '其它区', 430900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431000, '郴州市', 430000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431002, '北湖区', 431000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431003, '苏仙区', 431000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431021, '桂阳县', 431000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431022, '宜章县', 431000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431023, '永兴县', 431000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431024, '嘉禾县', 431000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431025, '临武县', 431000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431026, '汝城县', 431000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431027, '桂东县', 431000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431028, '安仁县', 431000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431081, '资兴市', 431000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431082, '其它区', 431000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431100, '永州市', 430000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431102, '零陵区', 431100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431103, '冷水滩区', 431100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431121, '祁阳县', 431100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431122, '东安县', 431100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431123, '双牌县', 431100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431124, '道县', 431100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431125, '江永县', 431100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431126, '宁远县', 431100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431127, '蓝山县', 431100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431128, '新田县', 431100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431129, '江华瑶族自治县', 431100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431130, '其它区', 431100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431200, '怀化市', 430000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431202, '鹤城区', 431200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431221, '中方县', 431200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431222, '沅陵县', 431200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431223, '辰溪县', 431200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431224, '溆浦县', 431200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431225, '会同县', 431200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431226, '麻阳苗族自治县', 431200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431227, '新晃侗族自治县', 431200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431228, '芷江侗族自治县', 431200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431229, '靖州苗族侗族自治县', 431200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431230, '通道侗族自治县', 431200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431281, '洪江市', 431200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431282, '其它区', 431200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431300, '娄底市', 430000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431302, '娄星区', 431300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431321, '双峰县', 431300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431322, '新化县', 431300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431381, '冷水江市', 431300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431382, '涟源市', 431300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (431383, '其它区', 431300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (433100, '湘西土家族苗族自治州', 430000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (433101, '吉首市', 433100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (433122, '泸溪县', 433100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (433123, '凤凰县', 433100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (433124, '花垣县', 433100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (433125, '保靖县', 433100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (433126, '古丈县', 433100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (433127, '永顺县', 433100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (433130, '龙山县', 433100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (433131, '其它区', 433100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440000, '广东省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440100, '广州市', 440000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440103, '荔湾区', 440100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440104, '越秀区', 440100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440105, '海珠区', 440100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440106, '天河区', 440100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440111, '白云区', 440100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440112, '黄埔区', 440100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440113, '番禺区', 440100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440114, '花都区', 440100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440115, '南沙区', 440100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440116, '萝岗区', 440100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440183, '增城市', 440100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440184, '从化市', 440100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440188, '东山区', 440100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440189, '其它区', 440100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440200, '韶关市', 440000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440203, '武江区', 440200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440204, '浈江区', 440200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440205, '曲江区', 440200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440222, '始兴县', 440200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440224, '仁化县', 440200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440229, '翁源县', 440200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440232, '乳源瑶族自治县', 440200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440233, '新丰县', 440200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440281, '乐昌市', 440200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440282, '南雄市', 440200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440283, '其它区', 440200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440300, '深圳市', 440000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440303, '罗湖区', 440300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440304, '福田区', 440300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440305, '南山区', 440300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440306, '宝安区', 440300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440307, '龙岗区', 440300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440308, '盐田区', 440300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440309, '其它区', 440300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440400, '珠海市', 440000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440402, '香洲区', 440400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440403, '斗门区', 440400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440404, '金湾区', 440400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440486, '金唐区', 440400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440487, '南湾区', 440400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440488, '其它区', 440400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440500, '汕头市', 440000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440507, '龙湖区', 440500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440511, '金平区', 440500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440512, '濠江区', 440500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440513, '潮阳区', 440500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440514, '潮南区', 440500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440515, '澄海区', 440500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440523, '南澳县', 440500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440524, '其它区', 440500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440600, '佛山市', 440000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440604, '禅城区', 440600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440605, '南海区', 440600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440606, '顺德区', 440600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440607, '三水区', 440600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440608, '高明区', 440600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440609, '其它区', 440600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440700, '江门市', 440000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440703, '蓬江区', 440700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440704, '江海区', 440700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440705, '新会区', 440700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440781, '台山市', 440700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440783, '开平市', 440700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440784, '鹤山市', 440700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440785, '恩平市', 440700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440786, '其它区', 440700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440800, '湛江市', 440000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440802, '赤坎区', 440800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440803, '霞山区', 440800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440804, '坡头区', 440800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440811, '麻章区', 440800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440823, '遂溪县', 440800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440825, '徐闻县', 440800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440881, '廉江市', 440800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440882, '雷州市', 440800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440883, '吴川市', 440800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440884, '其它区', 440800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440900, '茂名市', 440000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440902, '茂南区', 440900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440903, '茂港区', 440900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440923, '电白县', 440900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440981, '高州市', 440900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440982, '化州市', 440900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440983, '信宜市', 440900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (440984, '其它区', 440900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441200, '肇庆市', 440000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441202, '端州区', 441200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441203, '鼎湖区', 441200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441223, '广宁县', 441200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441224, '怀集县', 441200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441225, '封开县', 441200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441226, '德庆县', 441200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441283, '高要市', 441200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441284, '四会市', 441200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441285, '其它区', 441200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441300, '惠州市', 440000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441302, '惠城区', 441300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441303, '惠阳区', 441300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441322, '博罗县', 441300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441323, '惠东县', 441300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441324, '龙门县', 441300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441325, '其它区', 441300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441400, '梅州市', 440000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441402, '梅江区', 441400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441421, '梅县', 441400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441422, '大埔县', 441400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441423, '丰顺县', 441400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441424, '五华县', 441400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441426, '平远县', 441400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441427, '蕉岭县', 441400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441481, '兴宁市', 441400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441482, '其它区', 441400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441500, '汕尾市', 440000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441502, '城区', 441500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441521, '海丰县', 441500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441523, '陆河县', 441500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441581, '陆丰市', 441500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441582, '其它区', 441500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441600, '河源市', 440000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441602, '源城区', 441600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441621, '紫金县', 441600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441622, '龙川县', 441600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441623, '连平县', 441600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441624, '和平县', 441600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441625, '东源县', 441600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441626, '其它区', 441600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441700, '阳江市', 440000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441702, '江城区', 441700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441721, '阳西县', 441700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441723, '阳东县', 441700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441781, '阳春市', 441700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441782, '其它区', 441700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441800, '清远市', 440000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441802, '清城区', 441800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441821, '佛冈县', 441800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441823, '阳山县', 441800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441825, '连山壮族瑶族自治县', 441800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441826, '连南瑶族自治县', 441800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441827, '清新县', 441800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441881, '英德市', 441800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441882, '连州市', 441800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441883, '其它区', 441800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (441900, '东莞市', 440000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (442000, '中山市', 440000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (445100, '潮州市', 440000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (445102, '湘桥区', 445100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (445121, '潮安县', 445100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (445122, '饶平县', 445100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (445185, '枫溪区', 445100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (445186, '其它区', 445100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (445200, '揭阳市', 440000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (445202, '榕城区', 445200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (445221, '揭东县', 445200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (445222, '揭西县', 445200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (445224, '惠来县', 445200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (445281, '普宁市', 445200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (445284, '东山区', 445200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (445285, '其它区', 445200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (445300, '云浮市', 440000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (445302, '云城区', 445300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (445321, '新兴县', 445300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (445322, '郁南县', 445300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (445323, '云安县', 445300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (445381, '罗定市', 445300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (445382, '其它区', 445300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450000, '广西壮族自治区', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450100, '南宁市', 450000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450102, '兴宁区', 450100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450103, '青秀区', 450100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450105, '江南区', 450100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450107, '西乡塘区', 450100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450108, '良庆区', 450100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450109, '邕宁区', 450100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450122, '武鸣县', 450100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450123, '隆安县', 450100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450124, '马山县', 450100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450125, '上林县', 450100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450126, '宾阳县', 450100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450127, '横县', 450100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450128, '其它区', 450100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450200, '柳州市', 450000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450202, '城中区', 450200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450203, '鱼峰区', 450200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450204, '柳南区', 450200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450205, '柳北区', 450200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450221, '柳江县', 450200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450222, '柳城县', 450200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450223, '鹿寨县', 450200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450224, '融安县', 450200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450225, '融水苗族自治县', 450200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450226, '三江侗族自治县', 450200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450227, '其它区', 450200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450300, '桂林市', 450000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450302, '秀峰区', 450300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450303, '叠彩区', 450300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450304, '象山区', 450300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450305, '七星区', 450300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450311, '雁山区', 450300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450321, '阳朔县', 450300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450322, '临桂县', 450300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450323, '灵川县', 450300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450324, '全州县', 450300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450325, '兴安县', 450300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450326, '永福县', 450300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450327, '灌阳县', 450300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450328, '龙胜各族自治县', 450300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450329, '资源县', 450300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450330, '平乐县', 450300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450331, '荔浦县', 450300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450332, '恭城瑶族自治县', 450300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450333, '其它区', 450300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450400, '梧州市', 450000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450403, '万秀区', 450400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450404, '蝶山区', 450400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450405, '长洲区', 450400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450421, '苍梧县', 450400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450422, '藤县', 450400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450423, '蒙山县', 450400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450481, '岑溪市', 450400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450482, '其它区', 450400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450500, '北海市', 450000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450502, '海城区', 450500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450503, '银海区', 450500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450512, '铁山港区', 450500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450521, '合浦县', 450500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450522, '其它区', 450500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450600, '防城港市', 450000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450602, '港口区', 450600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450603, '防城区', 450600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450621, '上思县', 450600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450681, '东兴市', 450600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450682, '其它区', 450600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450700, '钦州市', 450000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450702, '钦南区', 450700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450703, '钦北区', 450700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450721, '灵山县', 450700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450722, '浦北县', 450700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450723, '其它区', 450700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450800, '贵港市', 450000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450802, '港北区', 450800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450803, '港南区', 450800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450804, '覃塘区', 450800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450821, '平南县', 450800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450881, '桂平市', 450800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450882, '其它区', 450800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450900, '玉林市', 450000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450902, '玉州区', 450900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450921, '容县', 450900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450922, '陆川县', 450900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450923, '博白县', 450900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450924, '兴业县', 450900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450981, '北流市', 450900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (450982, '其它区', 450900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451000, '百色市', 450000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451002, '右江区', 451000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451021, '田阳县', 451000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451022, '田东县', 451000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451023, '平果县', 451000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451024, '德保县', 451000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451025, '靖西县', 451000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451026, '那坡县', 451000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451027, '凌云县', 451000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451028, '乐业县', 451000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451029, '田林县', 451000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451030, '西林县', 451000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451031, '隆林各族自治县', 451000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451032, '其它区', 451000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451100, '贺州市', 450000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451102, '八步区', 451100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451121, '昭平县', 451100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451122, '钟山县', 451100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451123, '富川瑶族自治县', 451100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451124, '其它区', 451100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451200, '河池市', 450000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451202, '金城江区', 451200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451221, '南丹县', 451200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451222, '天峨县', 451200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451223, '凤山县', 451200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451224, '东兰县', 451200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451225, '罗城仫佬族自治县', 451200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451226, '环江毛南族自治县', 451200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451227, '巴马瑶族自治县', 451200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451228, '都安瑶族自治县', 451200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451229, '大化瑶族自治县', 451200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451281, '宜州市', 451200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451282, '其它区', 451200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451300, '来宾市', 450000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451302, '兴宾区', 451300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451321, '忻城县', 451300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451322, '象州县', 451300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451323, '武宣县', 451300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451324, '金秀瑶族自治县', 451300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451381, '合山市', 451300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451382, '其它区', 451300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451400, '崇左市', 450000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451402, '江州区', 451400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451421, '扶绥县', 451400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451422, '宁明县', 451400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451423, '龙州县', 451400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451424, '大新县', 451400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451425, '天等县', 451400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451481, '凭祥市', 451400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (451482, '其它区', 451400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (460000, '海南省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (460100, '海口市', 460000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (460105, '秀英区', 460100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (460106, '龙华区', 460100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (460107, '琼山区', 460100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (460108, '美兰区', 460100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (460109, '其它区', 460100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (460200, '三亚市', 460000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (469001, '五指山市', 460000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (469002, '琼海市', 460000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (469003, '儋州市', 460000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (469005, '文昌市', 460000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (469006, '万宁市', 460000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (469007, '东方市', 460000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (469025, '定安县', 460000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (469026, '屯昌县', 460000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (469027, '澄迈县', 460000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (469028, '临高县', 460000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (469030, '白沙黎族自治县', 460000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (469031, '昌江黎族自治县', 460000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (469033, '乐东黎族自治县', 460000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (469034, '陵水黎族自治县', 460000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (469035, '保亭黎族苗族自治县', 460000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (469036, '琼中黎族苗族自治县', 460000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (469037, '西沙群岛', 460000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (469038, '南沙群岛', 460000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (469039, '中沙群岛的岛礁及其海域', 460000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (471004, '高新区', 410300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (471005, '其它区', 410300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500000, '重庆', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500100, '重庆市', 500000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500101, '万州区', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500102, '涪陵区', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500103, '渝中区', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500104, '大渡口区', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500105, '江北区', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500106, '沙坪坝区', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500107, '九龙坡区', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500108, '南岸区', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500109, '北碚区', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500110, '万盛区', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500111, '双桥区', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500112, '渝北区', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500113, '巴南区', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500114, '黔江区', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500115, '长寿区', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500222, '綦江县', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500223, '潼南县', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500224, '铜梁县', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500225, '大足县', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500226, '荣昌县', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500227, '璧山县', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500228, '梁平县', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500229, '城口县', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500230, '丰都县', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500231, '垫江县', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500232, '武隆县', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500233, '忠县', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500234, '开县', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500235, '云阳县', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500236, '奉节县', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500237, '巫山县', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500238, '巫溪县', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500240, '石柱土家族自治县', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500241, '秀山土家族苗族自治县', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500242, '酉阳土家族苗族自治县', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500243, '彭水苗族土家族自治县', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500381, '江津区', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500382, '合川区', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500383, '永川区', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500384, '南川区', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (500385, '其它区', 500100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510000, '四川省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510100, '成都市', 510000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510104, '锦江区', 510100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510105, '青羊区', 510100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510106, '金牛区', 510100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510107, '武侯区', 510100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510108, '成华区', 510100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510112, '龙泉驿区', 510100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510113, '青白江区', 510100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510114, '新都区', 510100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510115, '温江区', 510100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510121, '金堂县', 510100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510122, '双流县', 510100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510124, '郫县', 510100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510129, '大邑县', 510100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510131, '蒲江县', 510100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510132, '新津县', 510100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510181, '都江堰市', 510100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510182, '彭州市', 510100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510183, '邛崃市', 510100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510184, '崇州市', 510100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510185, '其它区', 510100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510300, '自贡市', 510000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510302, '自流井区', 510300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510303, '贡井区', 510300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510304, '大安区', 510300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510311, '沿滩区', 510300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510321, '荣县', 510300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510322, '富顺县', 510300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510323, '其它区', 510300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510400, '攀枝花市', 510000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510402, '东区', 510400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510403, '西区', 510400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510411, '仁和区', 510400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510421, '米易县', 510400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510422, '盐边县', 510400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510423, '其它区', 510400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510500, '泸州市', 510000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510502, '江阳区', 510500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510503, '纳溪区', 510500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510504, '龙马潭区', 510500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510521, '泸县', 510500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510522, '合江县', 510500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510524, '叙永县', 510500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510525, '古蔺县', 510500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510526, '其它区', 510500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510600, '德阳市', 510000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510603, '旌阳区', 510600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510623, '中江县', 510600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510626, '罗江县', 510600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510681, '广汉市', 510600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510682, '什邡市', 510600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510683, '绵竹市', 510600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510684, '其它区', 510600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510700, '绵阳市', 510000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510703, '涪城区', 510700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510704, '游仙区', 510700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510722, '三台县', 510700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510723, '盐亭县', 510700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510724, '安县', 510700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510725, '梓潼县', 510700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510726, '北川羌族自治县', 510700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510727, '平武县', 510700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510751, '高新区', 510700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510781, '江油市', 510700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510782, '其它区', 510700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510800, '广元市', 510000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510802, '利州区', 510800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510811, '元坝区', 510800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510812, '朝天区', 510800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510821, '旺苍县', 510800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510822, '青川县', 510800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510823, '剑阁县', 510800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510824, '苍溪县', 510800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510825, '其它区', 510800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510900, '遂宁市', 510000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510903, '船山区', 510900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510904, '安居区', 510900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510921, '蓬溪县', 510900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510922, '射洪县', 510900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510923, '大英县', 510900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (510924, '其它区', 510900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511000, '内江市', 510000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511002, '市中区', 511000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511011, '东兴区', 511000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511024, '威远县', 511000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511025, '资中县', 511000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511028, '隆昌县', 511000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511029, '其它区', 511000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511100, '乐山市', 510000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511102, '市中区', 511100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511111, '沙湾区', 511100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511112, '五通桥区', 511100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511113, '金口河区', 511100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511123, '犍为县', 511100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511124, '井研县', 511100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511126, '夹江县', 511100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511129, '沐川县', 511100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511132, '峨边彝族自治县', 511100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511133, '马边彝族自治县', 511100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511181, '峨眉山市', 511100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511182, '其它区', 511100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511300, '南充市', 510000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511302, '顺庆区', 511300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511303, '高坪区', 511300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511304, '嘉陵区', 511300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511321, '南部县', 511300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511322, '营山县', 511300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511323, '蓬安县', 511300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511324, '仪陇县', 511300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511325, '西充县', 511300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511381, '阆中市', 511300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511382, '其它区', 511300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511400, '眉山市', 510000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511402, '东坡区', 511400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511421, '仁寿县', 511400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511422, '彭山县', 511400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511423, '洪雅县', 511400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511424, '丹棱县', 511400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511425, '青神县', 511400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511426, '其它区', 511400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511500, '宜宾市', 510000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511502, '翠屏区', 511500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511521, '宜宾县', 511500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511522, '南溪县', 511500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511523, '江安县', 511500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511524, '长宁县', 511500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511525, '高县', 511500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511526, '珙县', 511500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511527, '筠连县', 511500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511528, '兴文县', 511500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511529, '屏山县', 511500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511530, '其它区', 511500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511600, '广安市', 510000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511602, '广安区', 511600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511621, '岳池县', 511600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511622, '武胜县', 511600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511623, '邻水县', 511600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511681, '华蓥市', 511600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511682, '市辖区', 511600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511683, '其它区', 511600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511700, '达州市', 510000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511702, '通川区', 511700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511721, '达县', 511700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511722, '宣汉县', 511700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511723, '开江县', 511700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511724, '大竹县', 511700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511725, '渠县', 511700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511781, '万源市', 511700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511782, '其它区', 511700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511800, '雅安市', 510000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511802, '雨城区', 511800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511821, '名山县', 511800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511822, '荥经县', 511800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511823, '汉源县', 511800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511824, '石棉县', 511800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511825, '天全县', 511800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511826, '芦山县', 511800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511827, '宝兴县', 511800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511828, '其它区', 511800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511900, '巴中市', 510000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511902, '巴州区', 511900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511921, '通江县', 511900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511922, '南江县', 511900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511923, '平昌县', 511900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (511924, '其它区', 511900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (512000, '资阳市', 510000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (512002, '雁江区', 512000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (512021, '安岳县', 512000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (512022, '乐至县', 512000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (512081, '简阳市', 512000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (512082, '其它区', 512000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513200, '阿坝藏族羌族自治州', 510000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513221, '汶川县', 513200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513222, '理县', 513200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513223, '茂县', 513200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513224, '松潘县', 513200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513225, '九寨沟县', 513200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513226, '金川县', 513200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513227, '小金县', 513200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513228, '黑水县', 513200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513229, '马尔康县', 513200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513230, '壤塘县', 513200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513231, '阿坝县', 513200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513232, '若尔盖县', 513200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513233, '红原县', 513200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513234, '其它区', 513200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513300, '甘孜藏族自治州', 510000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513321, '康定县', 513300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513322, '泸定县', 513300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513323, '丹巴县', 513300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513324, '九龙县', 513300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513325, '雅江县', 513300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513326, '道孚县', 513300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513327, '炉霍县', 513300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513328, '甘孜县', 513300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513329, '新龙县', 513300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513330, '德格县', 513300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513331, '白玉县', 513300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513332, '石渠县', 513300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513333, '色达县', 513300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513334, '理塘县', 513300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513335, '巴塘县', 513300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513336, '乡城县', 513300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513337, '稻城县', 513300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513338, '得荣县', 513300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513339, '其它区', 513300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513400, '凉山彝族自治州', 510000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513401, '西昌市', 513400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513422, '木里藏族自治县', 513400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513423, '盐源县', 513400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513424, '德昌县', 513400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513425, '会理县', 513400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513426, '会东县', 513400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513427, '宁南县', 513400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513428, '普格县', 513400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513429, '布拖县', 513400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513430, '金阳县', 513400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513431, '昭觉县', 513400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513432, '喜德县', 513400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513433, '冕宁县', 513400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513434, '越西县', 513400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513435, '甘洛县', 513400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513436, '美姑县', 513400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513437, '雷波县', 513400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (513438, '其它区', 513400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520000, '贵州省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520100, '贵阳市', 520000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520102, '南明区', 520100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520103, '云岩区', 520100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520111, '花溪区', 520100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520112, '乌当区', 520100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520113, '白云区', 520100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520114, '小河区', 520100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520121, '开阳县', 520100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520122, '息烽县', 520100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520123, '修文县', 520100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520151, '金阳开发区', 520100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520181, '清镇市', 520100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520182, '其它区', 520100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520200, '六盘水市', 520000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520201, '钟山区', 520200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520203, '六枝特区', 520200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520221, '水城县', 520200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520222, '盘县', 520200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520223, '其它区', 520200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520300, '遵义市', 520000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520302, '红花岗区', 520300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520303, '汇川区', 520300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520321, '遵义县', 520300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520322, '桐梓县', 520300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520323, '绥阳县', 520300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520324, '正安县', 520300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520325, '道真仡佬族苗族自治县', 520300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520326, '务川仡佬族苗族自治县', 520300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520327, '凤冈县', 520300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520328, '湄潭县', 520300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520329, '余庆县', 520300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520330, '习水县', 520300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520381, '赤水市', 520300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520382, '仁怀市', 520300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520383, '其它区', 520300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520400, '安顺市', 520000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520402, '西秀区', 520400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520421, '平坝县', 520400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520422, '普定县', 520400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520423, '镇宁布依族苗族自治县', 520400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520424, '关岭布依族苗族自治县', 520400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520425, '紫云苗族布依族自治县', 520400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (520426, '其它区', 520400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522200, '铜仁地区', 520000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522201, '铜仁市', 522200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522222, '江口县', 522200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522223, '玉屏侗族自治县', 522200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522224, '石阡县', 522200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522225, '思南县', 522200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522226, '印江土家族苗族自治县', 522200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522227, '德江县', 522200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522228, '沿河土家族自治县', 522200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522229, '松桃苗族自治县', 522200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522230, '万山特区', 522200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522231, '其它区', 522200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522300, '黔西南布依族苗族自治州', 520000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522301, '兴义市', 522300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522322, '兴仁县', 522300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522323, '普安县', 522300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522324, '晴隆县', 522300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522325, '贞丰县', 522300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522326, '望谟县', 522300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522327, '册亨县', 522300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522328, '安龙县', 522300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522329, '其它区', 522300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522400, '毕节地区', 520000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522401, '毕节市', 522400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522422, '大方县', 522400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522423, '黔西县', 522400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522424, '金沙县', 522400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522425, '织金县', 522400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522426, '纳雍县', 522400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522427, '威宁彝族回族苗族自治县', 522400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522428, '赫章县', 522400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522429, '其它区', 522400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522600, '黔东南苗族侗族自治州', 520000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522601, '凯里市', 522600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522622, '黄平县', 522600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522623, '施秉县', 522600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522624, '三穗县', 522600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522625, '镇远县', 522600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522626, '岑巩县', 522600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522627, '天柱县', 522600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522628, '锦屏县', 522600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522629, '剑河县', 522600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522630, '台江县', 522600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522631, '黎平县', 522600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522632, '榕江县', 522600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522633, '从江县', 522600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522634, '雷山县', 522600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522635, '麻江县', 522600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522636, '丹寨县', 522600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522637, '其它区', 522600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522700, '黔南布依族苗族自治州', 520000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522701, '都匀市', 522700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522702, '福泉市', 522700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522722, '荔波县', 522700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522723, '贵定县', 522700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522725, '瓮安县', 522700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522726, '独山县', 522700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522727, '平塘县', 522700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522728, '罗甸县', 522700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522729, '长顺县', 522700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522730, '龙里县', 522700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522731, '惠水县', 522700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522732, '三都水族自治县', 522700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (522733, '其它区', 522700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530000, '云南省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530100, '昆明市', 530000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530102, '五华区', 530100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530103, '盘龙区', 530100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530111, '官渡区', 530100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530112, '西山区', 530100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530113, '东川区', 530100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530121, '呈贡县', 530100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530122, '晋宁县', 530100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530124, '富民县', 530100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530125, '宜良县', 530100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530126, '石林彝族自治县', 530100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530127, '嵩明县', 530100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530128, '禄劝彝族苗族自治县', 530100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530129, '寻甸回族彝族自治县', 530100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530181, '安宁市', 530100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530182, '其它区', 530100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530300, '曲靖市', 530000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530302, '麒麟区', 530300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530321, '马龙县', 530300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530322, '陆良县', 530300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530323, '师宗县', 530300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530324, '罗平县', 530300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530325, '富源县', 530300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530326, '会泽县', 530300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530328, '沾益县', 530300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530381, '宣威市', 530300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530382, '其它区', 530300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530400, '玉溪市', 530000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530402, '红塔区', 530400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530421, '江川县', 530400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530422, '澄江县', 530400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530423, '通海县', 530400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530424, '华宁县', 530400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530425, '易门县', 530400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530426, '峨山彝族自治县', 530400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530427, '新平彝族傣族自治县', 530400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530428, '元江哈尼族彝族傣族自治县', 530400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530429, '其它区', 530400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530500, '保山市', 530000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530502, '隆阳区', 530500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530521, '施甸县', 530500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530522, '腾冲县', 530500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530523, '龙陵县', 530500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530524, '昌宁县', 530500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530525, '其它区', 530500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530600, '昭通市', 530000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530602, '昭阳区', 530600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530621, '鲁甸县', 530600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530622, '巧家县', 530600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530623, '盐津县', 530600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530624, '大关县', 530600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530625, '永善县', 530600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530626, '绥江县', 530600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530627, '镇雄县', 530600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530628, '彝良县', 530600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530629, '威信县', 530600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530630, '水富县', 530600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530631, '其它区', 530600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530700, '丽江市', 530000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530702, '古城区', 530700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530721, '玉龙纳西族自治县', 530700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530722, '永胜县', 530700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530723, '华坪县', 530700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530724, '宁蒗彝族自治县', 530700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530725, '其它区', 530700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530800, '普洱市', 530000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530802, '思茅区', 530800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530821, '宁洱哈尼族彝族自治县', 530800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530822, '墨江哈尼族自治县', 530800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530823, '景东彝族自治县', 530800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530824, '景谷傣族彝族自治县', 530800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530825, '镇沅彝族哈尼族拉祜族自治县', 530800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530826, '江城哈尼族彝族自治县', 530800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530827, '孟连傣族拉祜族佤族自治县', 530800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530828, '澜沧拉祜族自治县', 530800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530829, '西盟佤族自治县', 530800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530830, '其它区', 530800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530900, '临沧市', 530000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530902, '临翔区', 530900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530921, '凤庆县', 530900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530922, '云县', 530900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530923, '永德县', 530900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530924, '镇康县', 530900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530925, '双江拉祜族佤族布朗族傣族自治县', 530900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530926, '耿马傣族佤族自治县', 530900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530927, '沧源佤族自治县', 530900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (530928, '其它区', 530900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532300, '楚雄彝族自治州', 530000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532301, '楚雄市', 532300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532322, '双柏县', 532300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532323, '牟定县', 532300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532324, '南华县', 532300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532325, '姚安县', 532300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532326, '大姚县', 532300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532327, '永仁县', 532300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532328, '元谋县', 532300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532329, '武定县', 532300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532331, '禄丰县', 532300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532332, '其它区', 532300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532500, '红河哈尼族彝族自治州', 530000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532501, '个旧市', 532500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532502, '开远市', 532500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532522, '蒙自县', 532500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532523, '屏边苗族自治县', 532500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532524, '建水县', 532500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532525, '石屏县', 532500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532526, '弥勒县', 532500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532527, '泸西县', 532500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532528, '元阳县', 532500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532529, '红河县', 532500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532530, '金平苗族瑶族傣族自治县', 532500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532531, '绿春县', 532500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532532, '河口瑶族自治县', 532500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532533, '其它区', 532500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532600, '文山壮族苗族自治州', 530000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532621, '文山县', 532600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532622, '砚山县', 532600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532623, '西畴县', 532600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532624, '麻栗坡县', 532600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532625, '马关县', 532600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532626, '丘北县', 532600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532627, '广南县', 532600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532628, '富宁县', 532600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532629, '其它区', 532600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532800, '西双版纳傣族自治州', 530000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532801, '景洪市', 532800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532822, '勐海县', 532800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532823, '勐腊县', 532800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532824, '其它区', 532800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532900, '大理白族自治州', 530000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532901, '大理市', 532900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532922, '漾濞彝族自治县', 532900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532923, '祥云县', 532900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532924, '宾川县', 532900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532925, '弥渡县', 532900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532926, '南涧彝族自治县', 532900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532927, '巍山彝族回族自治县', 532900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532928, '永平县', 532900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532929, '云龙县', 532900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532930, '洱源县', 532900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532931, '剑川县', 532900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532932, '鹤庆县', 532900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (532933, '其它区', 532900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (533100, '德宏傣族景颇族自治州', 530000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (533102, '瑞丽市', 533100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (533103, '潞西市', 533100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (533122, '梁河县', 533100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (533123, '盈江县', 533100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (533124, '陇川县', 533100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (533125, '其它区', 533100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (533300, '怒江傈僳族自治州', 530000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (533321, '泸水县', 533300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (533323, '福贡县', 533300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (533324, '贡山独龙族怒族自治县', 533300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (533325, '兰坪白族普米族自治县', 533300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (533326, '其它区', 533300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (533400, '迪庆藏族自治州', 530000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (533421, '香格里拉县', 533400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (533422, '德钦县', 533400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (533423, '维西傈僳族自治县', 533400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (533424, '其它区', 533400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (540000, '西藏自治区', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (540100, '拉萨市', 540000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (540102, '城关区', 540100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (540121, '林周县', 540100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (540122, '当雄县', 540100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (540123, '尼木县', 540100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (540124, '曲水县', 540100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (540125, '堆龙德庆县', 540100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (540126, '达孜县', 540100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (540127, '墨竹工卡县', 540100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (540128, '其它区', 540100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542100, '昌都地区', 540000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542121, '昌都县', 542100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542122, '江达县', 542100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542123, '贡觉县', 542100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542124, '类乌齐县', 542100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542125, '丁青县', 542100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542126, '察雅县', 542100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542127, '八宿县', 542100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542128, '左贡县', 542100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542129, '芒康县', 542100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542132, '洛隆县', 542100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542133, '边坝县', 542100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542134, '其它区', 542100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542200, '山南地区', 540000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542221, '乃东县', 542200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542222, '扎囊县', 542200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542223, '贡嘎县', 542200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542224, '桑日县', 542200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542225, '琼结县', 542200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542226, '曲松县', 542200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542227, '措美县', 542200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542228, '洛扎县', 542200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542229, '加查县', 542200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542231, '隆子县', 542200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542232, '错那县', 542200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542233, '浪卡子县', 542200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542234, '其它区', 542200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542300, '日喀则地区', 540000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542301, '日喀则市', 542300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542322, '南木林县', 542300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542323, '江孜县', 542300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542324, '定日县', 542300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542325, '萨迦县', 542300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542326, '拉孜县', 542300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542327, '昂仁县', 542300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542328, '谢通门县', 542300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542329, '白朗县', 542300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542330, '仁布县', 542300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542331, '康马县', 542300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542332, '定结县', 542300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542333, '仲巴县', 542300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542334, '亚东县', 542300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542335, '吉隆县', 542300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542336, '聂拉木县', 542300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542337, '萨嘎县', 542300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542338, '岗巴县', 542300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542339, '其它区', 542300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542400, '那曲地区', 540000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542421, '那曲县', 542400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542422, '嘉黎县', 542400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542423, '比如县', 542400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542424, '聂荣县', 542400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542425, '安多县', 542400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542426, '申扎县', 542400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542427, '索县', 542400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542428, '班戈县', 542400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542429, '巴青县', 542400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542430, '尼玛县', 542400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542431, '其它区', 542400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542500, '阿里地区', 540000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542521, '普兰县', 542500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542522, '札达县', 542500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542523, '噶尔县', 542500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542524, '日土县', 542500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542525, '革吉县', 542500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542526, '改则县', 542500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542527, '措勤县', 542500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542528, '其它区', 542500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542600, '林芝地区', 540000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542621, '林芝县', 542600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542622, '工布江达县', 542600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542623, '米林县', 542600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542624, '墨脱县', 542600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542625, '波密县', 542600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542626, '察隅县', 542600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542627, '朗县', 542600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (542628, '其它区', 542600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610000, '陕西省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610100, '西安市', 610000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610102, '新城区', 610100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610103, '碑林区', 610100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610104, '莲湖区', 610100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610111, '灞桥区', 610100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610112, '未央区', 610100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610113, '雁塔区', 610100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610114, '阎良区', 610100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610115, '临潼区', 610100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610116, '长安区', 610100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610122, '蓝田县', 610100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610124, '周至县', 610100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610125, '户县', 610100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610126, '高陵县', 610100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610127, '其它区', 610100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610200, '铜川市', 610000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610202, '王益区', 610200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610203, '印台区', 610200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610204, '耀州区', 610200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610222, '宜君县', 610200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610223, '其它区', 610200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610300, '宝鸡市', 610000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610302, '渭滨区', 610300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610303, '金台区', 610300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610304, '陈仓区', 610300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610322, '凤翔县', 610300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610323, '岐山县', 610300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610324, '扶风县', 610300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610326, '眉县', 610300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610327, '陇县', 610300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610328, '千阳县', 610300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610329, '麟游县', 610300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610330, '凤县', 610300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610331, '太白县', 610300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610332, '其它区', 610300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610400, '咸阳市', 610000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610402, '秦都区', 610400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610403, '杨凌区', 610400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610404, '渭城区', 610400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610422, '三原县', 610400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610423, '泾阳县', 610400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610424, '乾县', 610400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610425, '礼泉县', 610400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610426, '永寿县', 610400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610427, '彬县', 610400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610428, '长武县', 610400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610429, '旬邑县', 610400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610430, '淳化县', 610400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610431, '武功县', 610400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610481, '兴平市', 610400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610482, '其它区', 610400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610500, '渭南市', 610000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610502, '临渭区', 610500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610521, '华县', 610500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610522, '潼关县', 610500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610523, '大荔县', 610500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610524, '合阳县', 610500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610525, '澄城县', 610500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610526, '蒲城县', 610500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610527, '白水县', 610500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610528, '富平县', 610500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610581, '韩城市', 610500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610582, '华阴市', 610500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610583, '其它区', 610500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610600, '延安市', 610000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610602, '宝塔区', 610600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610621, '延长县', 610600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610622, '延川县', 610600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610623, '子长县', 610600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610624, '安塞县', 610600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610625, '志丹县', 610600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610626, '吴起县', 610600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610627, '甘泉县', 610600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610628, '富县', 610600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610629, '洛川县', 610600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610630, '宜川县', 610600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610631, '黄龙县', 610600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610632, '黄陵县', 610600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610633, '其它区', 610600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610700, '汉中市', 610000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610702, '汉台区', 610700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610721, '南郑县', 610700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610722, '城固县', 610700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610723, '洋县', 610700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610724, '西乡县', 610700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610725, '勉县', 610700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610726, '宁强县', 610700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610727, '略阳县', 610700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610728, '镇巴县', 610700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610729, '留坝县', 610700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610730, '佛坪县', 610700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610731, '其它区', 610700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610800, '榆林市', 610000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610802, '榆阳区', 610800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610821, '神木县', 610800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610822, '府谷县', 610800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610823, '横山县', 610800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610824, '靖边县', 610800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610825, '定边县', 610800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610826, '绥德县', 610800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610827, '米脂县', 610800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610828, '佳县', 610800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610829, '吴堡县', 610800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610830, '清涧县', 610800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610831, '子洲县', 610800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610832, '其它区', 610800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610900, '安康市', 610000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610902, '汉滨区', 610900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610921, '汉阴县', 610900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610922, '石泉县', 610900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610923, '宁陕县', 610900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610924, '紫阳县', 610900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610925, '岚皋县', 610900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610926, '平利县', 610900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610927, '镇坪县', 610900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610928, '旬阳县', 610900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610929, '白河县', 610900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (610930, '其它区', 610900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (611000, '商洛市', 610000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (611002, '商州区', 611000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (611021, '洛南县', 611000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (611022, '丹凤县', 611000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (611023, '商南县', 611000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (611024, '山阳县', 611000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (611025, '镇安县', 611000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (611026, '柞水县', 611000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (611027, '其它区', 611000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620000, '甘肃省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620100, '兰州市', 620000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620102, '城关区', 620100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620103, '七里河区', 620100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620104, '西固区', 620100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620105, '安宁区', 620100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620111, '红古区', 620100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620121, '永登县', 620100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620122, '皋兰县', 620100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620123, '榆中县', 620100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620124, '其它区', 620100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620200, '嘉峪关市', 620000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620300, '金昌市', 620000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620302, '金川区', 620300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620321, '永昌县', 620300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620322, '其它区', 620300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620400, '白银市', 620000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620402, '白银区', 620400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620403, '平川区', 620400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620421, '靖远县', 620400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620422, '会宁县', 620400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620423, '景泰县', 620400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620424, '其它区', 620400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620500, '天水市', 620000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620502, '秦州区', 620500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620503, '麦积区', 620500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620521, '清水县', 620500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620522, '秦安县', 620500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620523, '甘谷县', 620500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620524, '武山县', 620500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620525, '张家川回族自治县', 620500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620526, '其它区', 620500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620600, '武威市', 620000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620602, '凉州区', 620600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620621, '民勤县', 620600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620622, '古浪县', 620600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620623, '天祝藏族自治县', 620600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620624, '其它区', 620600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620700, '张掖市', 620000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620702, '甘州区', 620700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620721, '肃南裕固族自治县', 620700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620722, '民乐县', 620700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620723, '临泽县', 620700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620724, '高台县', 620700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620725, '山丹县', 620700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620726, '其它区', 620700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620800, '平凉市', 620000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620802, '崆峒区', 620800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620821, '泾川县', 620800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620822, '灵台县', 620800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620823, '崇信县', 620800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620824, '华亭县', 620800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620825, '庄浪县', 620800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620826, '静宁县', 620800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620827, '其它区', 620800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620900, '酒泉市', 620000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620902, '肃州区', 620900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620921, '金塔县', 620900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620922, '安西县', 620900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620923, '肃北蒙古族自治县', 620900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620924, '阿克塞哈萨克族自治县', 620900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620981, '玉门市', 620900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620982, '敦煌市', 620900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (620983, '其它区', 620900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621000, '庆阳市', 620000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621002, '西峰区', 621000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621021, '庆城县', 621000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621022, '环县', 621000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621023, '华池县', 621000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621024, '合水县', 621000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621025, '正宁县', 621000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621026, '宁县', 621000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621027, '镇原县', 621000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621028, '其它区', 621000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621100, '定西市', 620000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621102, '安定区', 621100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621121, '通渭县', 621100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621122, '陇西县', 621100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621123, '渭源县', 621100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621124, '临洮县', 621100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621125, '漳县', 621100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621126, '岷县', 621100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621127, '其它区', 621100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621200, '陇南市', 620000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621202, '武都区', 621200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621221, '成县', 621200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621222, '文县', 621200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621223, '宕昌县', 621200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621224, '康县', 621200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621225, '西和县', 621200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621226, '礼县', 621200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621227, '徽县', 621200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621228, '两当县', 621200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (621229, '其它区', 621200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (622900, '临夏回族自治州', 620000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (622901, '临夏市', 622900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (622921, '临夏县', 622900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (622922, '康乐县', 622900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (622923, '永靖县', 622900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (622924, '广河县', 622900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (622925, '和政县', 622900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (622926, '东乡族自治县', 622900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (622927, '积石山保安族东乡族撒拉族自治县', 622900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (622928, '其它区', 622900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (623000, '甘南藏族自治州', 620000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (623001, '合作市', 623000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (623021, '临潭县', 623000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (623022, '卓尼县', 623000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (623023, '舟曲县', 623000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (623024, '迭部县', 623000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (623025, '玛曲县', 623000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (623026, '碌曲县', 623000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (623027, '夏河县', 623000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (623028, '其它区', 623000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (630000, '青海省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (630100, '西宁市', 630000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (630102, '城东区', 630100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (630103, '城中区', 630100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (630104, '城西区', 630100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (630105, '城北区', 630100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (630121, '大通回族土族自治县', 630100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (630122, '湟中县', 630100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (630123, '湟源县', 630100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (630124, '其它区', 630100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632100, '海东地区', 630000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632121, '平安县', 632100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632122, '民和回族土族自治县', 632100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632123, '乐都县', 632100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632126, '互助土族自治县', 632100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632127, '化隆回族自治县', 632100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632128, '循化撒拉族自治县', 632100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632129, '其它区', 632100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632200, '海北藏族自治州', 630000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632221, '门源回族自治县', 632200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632222, '祁连县', 632200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632223, '海晏县', 632200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632224, '刚察县', 632200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632225, '其它区', 632200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632300, '黄南藏族自治州', 630000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632321, '同仁县', 632300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632322, '尖扎县', 632300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632323, '泽库县', 632300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632324, '河南蒙古族自治县', 632300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632325, '其它区', 632300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632500, '海南藏族自治州', 630000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632521, '共和县', 632500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632522, '同德县', 632500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632523, '贵德县', 632500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632524, '兴海县', 632500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632525, '贵南县', 632500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632526, '其它区', 632500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632600, '果洛藏族自治州', 630000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632621, '玛沁县', 632600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632622, '班玛县', 632600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632623, '甘德县', 632600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632624, '达日县', 632600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632625, '久治县', 632600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632626, '玛多县', 632600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632627, '其它区', 632600, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632700, '玉树藏族自治州', 630000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632721, '玉树县', 632700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632722, '杂多县', 632700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632723, '称多县', 632700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632724, '治多县', 632700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632725, '囊谦县', 632700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632726, '曲麻莱县', 632700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632727, '其它区', 632700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632800, '海西蒙古族藏族自治州', 630000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632801, '格尔木市', 632800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632802, '德令哈市', 632800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632821, '乌兰县', 632800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632822, '都兰县', 632800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632823, '天峻县', 632800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (632824, '其它区', 632800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640000, '宁夏回族自治区', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640100, '银川市', 640000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640104, '兴庆区', 640100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640105, '西夏区', 640100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640106, '金凤区', 640100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640121, '永宁县', 640100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640122, '贺兰县', 640100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640181, '灵武市', 640100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640182, '其它区', 640100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640200, '石嘴山市', 640000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640202, '大武口区', 640200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640205, '惠农区', 640200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640221, '平罗县', 640200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640222, '其它区', 640200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640300, '吴忠市', 640000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640302, '利通区', 640300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640303, '红寺堡区', 640300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640323, '盐池县', 640300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640324, '同心县', 640300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640381, '青铜峡市', 640300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640382, '其它区', 640300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640400, '固原市', 640000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640402, '原州区', 640400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640422, '西吉县', 640400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640423, '隆德县', 640400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640424, '泾源县', 640400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640425, '彭阳县', 640400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640426, '其它区', 640400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640500, '中卫市', 640000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640502, '沙坡头区', 640500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640521, '中宁县', 640500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640522, '海原县', 640500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (640523, '其它区', 640500, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (650000, '新疆维吾尔自治区', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (650100, '乌鲁木齐市', 650000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (650102, '天山区', 650100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (650103, '沙依巴克区', 650100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (650104, '新市区', 650100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (650105, '水磨沟区', 650100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (650106, '头屯河区', 650100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (650107, '达坂城区', 650100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (650108, '东山区', 650100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (650109, '米东区', 650100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (650121, '乌鲁木齐县', 650100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (650122, '其它区', 650100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (650200, '克拉玛依市', 650000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (650202, '独山子区', 650200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (650203, '克拉玛依区', 650200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (650204, '白碱滩区', 650200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (650205, '乌尔禾区', 650200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (650206, '其它区', 650200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652100, '吐鲁番地区', 650000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652101, '吐鲁番市', 652100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652122, '鄯善县', 652100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652123, '托克逊县', 652100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652124, '其它区', 652100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652200, '哈密地区', 650000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652201, '哈密市', 652200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652222, '巴里坤哈萨克自治县', 652200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652223, '伊吾县', 652200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652224, '其它区', 652200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652300, '昌吉回族自治州', 650000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652301, '昌吉市', 652300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652302, '阜康市', 652300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652303, '米泉市', 652300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652323, '呼图壁县', 652300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652324, '玛纳斯县', 652300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652325, '奇台县', 652300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652327, '吉木萨尔县', 652300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652328, '木垒哈萨克自治县', 652300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652329, '其它区', 652300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652700, '博尔塔拉蒙古自治州', 650000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652701, '博乐市', 652700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652722, '精河县', 652700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652723, '温泉县', 652700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652724, '其它区', 652700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652800, '巴音郭楞蒙古自治州', 650000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652801, '库尔勒市', 652800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652822, '轮台县', 652800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652823, '尉犁县', 652800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652824, '若羌县', 652800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652825, '且末县', 652800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652826, '焉耆回族自治县', 652800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652827, '和静县', 652800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652828, '和硕县', 652800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652829, '博湖县', 652800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652830, '其它区', 652800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652900, '阿克苏地区', 650000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652901, '阿克苏市', 652900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652922, '温宿县', 652900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652923, '库车县', 652900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652924, '沙雅县', 652900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652925, '新和县', 652900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652926, '拜城县', 652900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652927, '乌什县', 652900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652928, '阿瓦提县', 652900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652929, '柯坪县', 652900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (652930, '其它区', 652900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653000, '克孜勒苏柯尔克孜自治州', 650000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653001, '阿图什市', 653000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653022, '阿克陶县', 653000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653023, '阿合奇县', 653000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653024, '乌恰县', 653000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653025, '其它区', 653000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653100, '喀什地区', 650000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653101, '喀什市', 653100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653121, '疏附县', 653100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653122, '疏勒县', 653100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653123, '英吉沙县', 653100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653124, '泽普县', 653100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653125, '莎车县', 653100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653126, '叶城县', 653100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653127, '麦盖提县', 653100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653128, '岳普湖县', 653100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653129, '伽师县', 653100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653130, '巴楚县', 653100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653131, '塔什库尔干塔吉克自治县', 653100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653132, '其它区', 653100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653200, '和田地区', 650000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653201, '和田市', 653200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653221, '和田县', 653200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653222, '墨玉县', 653200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653223, '皮山县', 653200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653224, '洛浦县', 653200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653225, '策勒县', 653200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653226, '于田县', 653200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653227, '民丰县', 653200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (653228, '其它区', 653200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654000, '伊犁哈萨克自治州', 650000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654002, '伊宁市', 654000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654003, '奎屯市', 654000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654021, '伊宁县', 654000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654022, '察布查尔锡伯自治县', 654000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654023, '霍城县', 654000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654024, '巩留县', 654000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654025, '新源县', 654000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654026, '昭苏县', 654000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654027, '特克斯县', 654000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654028, '尼勒克县', 654000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654029, '其它区', 654000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654200, '塔城地区', 650000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654201, '塔城市', 654200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654202, '乌苏市', 654200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654221, '额敏县', 654200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654223, '沙湾县', 654200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654224, '托里县', 654200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654225, '裕民县', 654200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654226, '和布克赛尔蒙古自治县', 654200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654227, '其它区', 654200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654300, '阿勒泰地区', 650000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654301, '阿勒泰市', 654300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654321, '布尔津县', 654300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654322, '富蕴县', 654300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654323, '福海县', 654300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654324, '哈巴河县', 654300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654325, '青河县', 654300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654326, '吉木乃县', 654300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (654327, '其它区', 654300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (659001, '石河子市', 650000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (659002, '阿拉尔市', 650000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (659003, '图木舒克市', 650000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (659004, '五家渠市', 650000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710000, '台湾省', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710100, '台北市', 710000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710101, '中正区', 710100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710102, '大同区', 710100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710103, '中山区', 710100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710104, '松山区', 710100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710105, '大安区', 710100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710106, '万华区', 710100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710107, '信义区', 710100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710108, '士林区', 710100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710109, '北投区', 710100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710110, '内湖区', 710100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710111, '南港区', 710100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710112, '文山区', 710100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710113, '其它区', 710100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710200, '高雄市', 710000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710201, '新兴区', 710200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710202, '前金区', 710200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710203, '芩雅区', 710200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710204, '盐埕区', 710200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710205, '鼓山区', 710200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710206, '旗津区', 710200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710207, '前镇区', 710200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710208, '三民区', 710200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710209, '左营区', 710200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710210, '楠梓区', 710200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710211, '小港区', 710200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710212, '其它区', 710200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710300, '台南市', 710000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710301, '中西区', 710300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710302, '东区', 710300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710303, '南区', 710300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710304, '北区', 710300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710305, '安平区', 710300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710306, '安南区', 710300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710307, '其它区', 710300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710400, '台中市', 710000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710401, '中区', 710400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710402, '东区', 710400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710403, '南区', 710400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710404, '西区', 710400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710405, '北区', 710400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710406, '北屯区', 710400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710407, '西屯区', 710400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710408, '南屯区', 710400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710409, '其它区', 710400, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710500, '金门县', 710000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710600, '南投县', 710000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710700, '基隆市', 710000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710701, '仁爱区', 710700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710702, '信义区', 710700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710703, '中正区', 710700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710704, '中山区', 710700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710705, '安乐区', 710700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710706, '暖暖区', 710700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710707, '七堵区', 710700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710708, '其它区', 710700, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710800, '新竹市', 710000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710801, '东区', 710800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710802, '北区', 710800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710803, '香山区', 710800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710804, '其它区', 710800, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710900, '嘉义市', 710000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710901, '东区', 710900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710902, '西区', 710900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (710903, '其它区', 710900, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (711100, '新北市', 710000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (711200, '宜兰县', 710000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (711300, '新竹县', 710000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (711400, '桃园县', 710000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (711500, '苗栗县', 710000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (711700, '彰化县', 710000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (711900, '嘉义县', 710000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (712100, '云林县', 710000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (712400, '屏东县', 710000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (712500, '台东县', 710000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (712600, '花莲县', 710000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (712700, '澎湖县', 710000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810000, '香港特别行政区', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810100, '香港岛', 810000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810101, '中西区', 810100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810102, '湾仔', 810100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810103, '东区', 810100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810104, '南区', 810100, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810200, '九龙', 810000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810201, '九龙城区', 810200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810202, '油尖旺区', 810200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810203, '深水埗区', 810200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810204, '黄大仙区', 810200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810205, '观塘区', 810200, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810300, '新界', 810000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810301, '北区', 810300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810302, '大埔区', 810300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810303, '沙田区', 810300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810304, '西贡区', 810300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810305, '元朗区', 810300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810306, '屯门区', 810300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810307, '荃湾区', 810300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810308, '葵青区', 810300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (810309, '离岛区', 810300, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (820000, '澳门特别行政区', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (820100, '澳门半岛', 820000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (820200, '离岛', 820000, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (990000, '海外', 1, 0, '2013-07-10 11:02:58');
INSERT INTO `address_info` VALUES (990100, '海外', 990000, 0, '2013-07-10 11:02:58');
COMMIT;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `role_ids` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '角色ids',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_salt` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '加密盐',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否超级管理员',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name_unique` (`name`) USING BTREE COMMENT '名字唯一索引'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of admin_info
-- ----------------------------
BEGIN;
INSERT INTO `admin_info` VALUES (1, 'zhangsan', 'e91474a50e96e9e3b0c7df489b1c0a21', '2', '2022-09-25 16:40:43', '2022-11-20 11:06:01', 'e3oHjweGEc', 0);
INSERT INTO `admin_info` VALUES (3, 'wangzhongyang', '7382e435a4eb141adeabc3792d383e1c', '2', '2022-07-19 10:50:20', '2022-11-23 14:25:10', '4f8WG1bjne', 0);
INSERT INTO `admin_info` VALUES (13, '李四', '9076805c0efa82a164f0c4f2a2818851', '1', '2022-11-20 11:03:35', '2022-11-20 11:03:35', 'Io45dMSb4e', 1);
INSERT INTO `admin_info` VALUES (15, 'zhaoliu', 'd82abc6395e1c89e7837f96407cf6d5d', '2', '2022-11-20 13:45:09', '2022-11-20 13:45:49', 'aHzOD3zI7L', 0);
COMMIT;

-- ----------------------------
-- Table structure for article_info
-- ----------------------------
DROP TABLE IF EXISTS `article_info`;
CREATE TABLE `article_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0' COMMENT '作者id',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '摘要',
  `pic_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '封面图',
  `is_admin` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1后台管理员发布 2前台用户发布',
  `praise` int NOT NULL DEFAULT '0' COMMENT '点赞数',
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '文章详情',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='文章（种草）表';

-- ----------------------------
-- Records of article_info
-- ----------------------------
BEGIN;
INSERT INTO `article_info` VALUES (1, 0, '华凌空调真不错!', '京东买的，真的种草了', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fgfs17.gomein.net.cn%2FT108VWB4W_1RCvBVdK_800.jpg%3Fv%3D1&refer=http%3A%2F%2Fgfs17.gomein.net.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1660794257&t=795ee536d5af33788a249b08d0b28b6f', 1, 0, '这里是文章正文', '2022-07-19 11:47:59', '2022-07-19 11:48:52', '2022-07-19 11:49:13');
INSERT INTO `article_info` VALUES (2, 2, '华凌空调真不错!', '京东买的，真的种草了', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fgfs17.gomein.net.cn%2FT108VWB4W_1RCvBVdK_800.jpg%3Fv%3D1&refer=http%3A%2F%2Fgfs17.gomein.net.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1660794257&t=795ee536d5af33788a249b08d0b28b6f', 0, 0, '这里是文章正文', '2022-07-19 11:49:36', '2022-07-31 15:51:06', '2022-07-31 16:08:59');
INSERT INTO `article_info` VALUES (3, 2, '华凌空调真不错a', '京东买的，真的种草了a', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fgfs17.gomein.net.cn%2FT108VWB4W_1RCvBVdK_800.jpg%3Fv%3D1&refer=http%3A%2F%2Fgfs17.gomein.net.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1660794257&t=795ee536d5af33788a249b08d0b28b6f', 0, 0, '这里是文章正文a', '2022-07-31 15:42:45', '2022-07-31 15:42:45', NULL);
INSERT INTO `article_info` VALUES (4, 1, '华凌空调真不错a', '京东买的，真的种草了a', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fgfs17.gomein.net.cn%2FT108VWB4W_1RCvBVdK_800.jpg%3Fv%3D1&refer=http%3A%2F%2Fgfs17.gomein.net.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1660794257&t=795ee536d5af33788a249b08d0b28b6f', 0, 0, '这里是文章正文a', '2022-07-31 15:44:25', '2022-07-31 15:44:25', NULL);
INSERT INTO `article_info` VALUES (5, 1, '华凌空调真不错', '京东买的，真的种草了', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fgfs17.gomein.net.cn%2FT108VWB4W_1RCvBVdK_800.jpg%3Fv%3D1&refer=http%3A%2F%2Fgfs17.gomein.net.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1660794257&t=795ee536d5af33788a249b08d0b28b6f', 1, 0, '这里是文章正文', '2022-07-31 19:06:59', '2022-07-31 19:06:59', NULL);
INSERT INTO `article_info` VALUES (6, 2, '华凌空调真不错', '京东买的，真的种草了', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fgfs17.gomein.net.cn%2FT108VWB4W_1RCvBVdK_800.jpg%3Fv%3D1&refer=http%3A%2F%2Fgfs17.gomein.net.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1660794257&t=795ee536d5af33788a249b08d0b28b6f', 1, 0, '这里是文章正文', '2022-07-31 19:07:08', '2022-07-31 19:07:08', NULL);
INSERT INTO `article_info` VALUES (7, 1, '华凌空调真不错', '京东买的，真的种草了', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fgfs17.gomein.net.cn%2FT108VWB4W_1RCvBVdK_800.jpg%3Fv%3D1&refer=http%3A%2F%2Fgfs17.gomein.net.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1660794257&t=795ee536d5af33788a249b08d0b28b6f', 1, 0, '这里是文章正文', '2022-07-31 19:08:03', '2022-07-31 19:08:03', NULL);
INSERT INTO `article_info` VALUES (8, 15, '点装求难立识至', 'nostrud velit magna esse sed', 'http://dummyimage.com/400x400', 1, 100, 'incididunt cillum eiusmod in reprehenderit', '2023-01-17 11:06:55', '2023-01-17 11:19:07', NULL);
COMMIT;

-- ----------------------------
-- Table structure for cart_info
-- ----------------------------
DROP TABLE IF EXISTS `cart_info`;
CREATE TABLE `cart_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '购物车表',
  `user_id` int NOT NULL DEFAULT '0',
  `goods_options_id` int NOT NULL DEFAULT '0' COMMENT '商品规格id',
  `count` int NOT NULL COMMENT '商品数量',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of cart_info
-- ----------------------------
BEGIN;
INSERT INTO `cart_info` VALUES (1, 1, 1, 1, '2022-07-29 13:59:10', NULL, NULL);
INSERT INTO `cart_info` VALUES (2, 1, 2, 3, '2022-07-29 14:23:31', '2022-07-29 14:32:10', '2022-08-27 19:08:41');
INSERT INTO `cart_info` VALUES (3, 1, 2, 3, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for category_info
-- ----------------------------
DROP TABLE IF EXISTS `category_info`;
CREATE TABLE `category_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL DEFAULT '0' COMMENT '父级id',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `pic_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'icon',
  `level` tinyint(1) NOT NULL DEFAULT '1' COMMENT '等级 默认1级分类',
  `sort` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='轮播图表\n';

-- ----------------------------
-- Records of category_info
-- ----------------------------
BEGIN;
INSERT INTO `category_info` VALUES (1, 0, '家用电器', '', 1, 1, NULL, NULL, NULL);
INSERT INTO `category_info` VALUES (2, 1, '电视', '', 2, 1, NULL, NULL, NULL);
INSERT INTO `category_info` VALUES (3, 2, '全面屏电视', '', 3, 1, NULL, NULL, NULL);
INSERT INTO `category_info` VALUES (4, 2, '教育电视', '', 3, 1, NULL, NULL, NULL);
INSERT INTO `category_info` VALUES (5, 1, '智慧屏电视', '', 3, 1, NULL, NULL, NULL);
INSERT INTO `category_info` VALUES (6, 0, '手机/数码', '', 1, 2, '2022-07-27 15:07:31', '2022-07-27 15:08:57', NULL);
INSERT INTO `category_info` VALUES (7, 66, '111', 'http://dummyimage.com/400x400', 62, 26, '2022-07-27 15:08:41', '2023-01-13 21:25:55', NULL);
INSERT INTO `category_info` VALUES (8, 9, '理收每从最想', 'http://dummyimage.com/400x400', 68, 99, '2023-01-13 21:17:33', '2023-01-13 21:17:33', '2023-01-13 21:19:07');
COMMIT;

-- ----------------------------
-- Table structure for collection_info
-- ----------------------------
DROP TABLE IF EXISTS `collection_info`;
CREATE TABLE `collection_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0' COMMENT '用户id',
  `object_id` int NOT NULL DEFAULT '0' COMMENT '对象id',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '收藏类型：1商品 2文章',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_index` (`user_id`,`object_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of collection_info
-- ----------------------------
BEGIN;
INSERT INTO `collection_info` VALUES (3, 1, 1, 1, '2022-07-31 15:21:38', '2022-07-31 15:21:38');
INSERT INTO `collection_info` VALUES (4, 4, 4, 1, '2023-01-18 15:23:28', '2023-01-18 15:23:28');
COMMIT;

-- ----------------------------
-- Table structure for comment_info
-- ----------------------------
DROP TABLE IF EXISTS `comment_info`;
CREATE TABLE `comment_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL DEFAULT '0' COMMENT '父级评论id',
  `user_id` int NOT NULL DEFAULT '0',
  `object_id` int NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '评论类型：1商品 2文章',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '评论内容',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_index` (`user_id`,`object_id`,`type`,`content`,`parent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of comment_info
-- ----------------------------
BEGIN;
INSERT INTO `comment_info` VALUES (4, 0, 1, 1, 2, '好评 下次还会买', '2022-07-31 17:23:48', '2022-07-31 17:23:48', NULL);
INSERT INTO `comment_info` VALUES (5, 0, 1, 1, 2, '来个评论', '2022-07-31 17:24:10', '2022-07-31 17:24:10', NULL);
INSERT INTO `comment_info` VALUES (7, 5, 1, 1, 2, '来个评论', '2022-07-31 17:24:59', '2022-07-31 17:24:59', NULL);
INSERT INTO `comment_info` VALUES (10, 1, 4, 1, 1, 'labore', '2023-01-19 14:25:24', '2023-01-19 14:25:24', NULL);
INSERT INTO `comment_info` VALUES (11, 1, 4, 1, 1, 'xxxxx', '2023-01-19 14:26:50', '2023-01-19 14:26:50', NULL);
COMMIT;

-- ----------------------------
-- Table structure for consignee_info
-- ----------------------------
DROP TABLE IF EXISTS `consignee_info`;
CREATE TABLE `consignee_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '收货地址表',
  `user_id` int NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '默认地址1  非默认0\n',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `province` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `town` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '县区',
  `street` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '街道乡镇',
  `detail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '地址详情',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of consignee_info
-- ----------------------------
BEGIN;
INSERT INTO `consignee_info` VALUES (1, 1, 1, '王先生1', '13269477632', '北京', '北京市', '房山区', '拱辰街道', '大学城西', '2022-07-31 14:42:33', '2022-07-31 14:44:50', NULL);
COMMIT;

-- ----------------------------
-- Table structure for coupon_info
-- ----------------------------
DROP TABLE IF EXISTS `coupon_info`;
CREATE TABLE `coupon_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `price` int NOT NULL DEFAULT '0' COMMENT '优惠前面值 单位分\n',
  `goods_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '关联使用的goods_ids  逗号分隔',
  `category_id` int NOT NULL DEFAULT '0' COMMENT '关联使用的分类id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='轮播图表\n';

-- ----------------------------
-- Records of coupon_info
-- ----------------------------
BEGIN;
INSERT INTO `coupon_info` VALUES (1, '满2千减5百优惠券', 50000, '1,2,3', 1, '2022-07-19 14:30:48', '2022-09-25 15:35:56', NULL);
INSERT INTO `coupon_info` VALUES (2, '满2千减5百优惠券', 50000, '0', 1, '2022-07-19 14:39:51', '2022-07-19 14:39:51', NULL);
INSERT INTO `coupon_info` VALUES (3, '满2千减5百优惠券', 50000, '1', 1, '2022-07-29 15:58:15', '2022-08-01 13:53:11', '2022-08-01 13:53:27');
INSERT INTO `coupon_info` VALUES (4, '满2千减5百优惠券', 50000, '0', 1, '2022-08-01 13:52:51', '2022-08-01 13:52:51', NULL);
INSERT INTO `coupon_info` VALUES (5, '满2千减5百优惠券', 50000, '', 1, '2022-09-23 06:31:33', '2022-09-23 06:31:33', NULL);
INSERT INTO `coupon_info` VALUES (6, '满2千减5百优惠券', 50000, '', 1, '2022-09-23 06:33:21', '2022-09-23 06:33:21', NULL);
INSERT INTO `coupon_info` VALUES (7, '满2千减5百优惠券', 50000, '', 1, '2022-09-23 06:34:56', '2022-09-23 06:34:56', NULL);
INSERT INTO `coupon_info` VALUES (8, '满2千减5百优惠券', 50000, '', 1, '2022-09-23 06:36:17', '2022-09-23 06:36:17', NULL);
INSERT INTO `coupon_info` VALUES (9, '满2千减5百优惠券', 50000, '', 1, '2022-09-23 06:38:41', '2022-09-23 06:38:41', NULL);
INSERT INTO `coupon_info` VALUES (10, '满2千减5百优惠券', 50000, '0', 1, '2022-09-25 15:32:34', '2022-09-25 15:32:34', NULL);
INSERT INTO `coupon_info` VALUES (11, '满2千减5百优惠券', 50000, '0', 1, '2022-09-25 15:32:40', '2022-09-25 15:32:40', NULL);
INSERT INTO `coupon_info` VALUES (12, '满2千减5百优惠券', 50000, '0', 1, '2022-09-25 15:33:23', '2022-09-25 15:33:23', NULL);
INSERT INTO `coupon_info` VALUES (13, '满2千减5百优惠券', 50000, '0', 1, '2022-09-25 15:33:54', '2022-09-25 15:33:54', NULL);
INSERT INTO `coupon_info` VALUES (14, '造标争级满', 82, '1,2,3', 44, '2022-09-25 15:36:12', '2023-01-16 11:43:21', NULL);
INSERT INTO `coupon_info` VALUES (15, '土切装则', 13, '', 34, '2023-01-16 11:37:06', '2023-01-16 11:37:06', '2023-01-16 11:40:52');
COMMIT;

-- ----------------------------
-- Table structure for file_info
-- ----------------------------
DROP TABLE IF EXISTS `file_info`;
CREATE TABLE `file_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图片名称',
  `src` varchar(128) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '本地文件存储路径',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'URL地址',
  `user_id` int NOT NULL DEFAULT '0' COMMENT '用户id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of file_info
-- ----------------------------
BEGIN;
INSERT INTO `file_info` VALUES (1, 'cpk2opce3094xdzlc4.png', 'upload/20230105/cpk2opce3094xdzlc4.png', '/upload/20230105/cpk2opce3094xdzlc4.png', 15, '2023-01-05 15:19:44', '2023-01-05 15:19:44');
INSERT INTO `file_info` VALUES (2, 'cpk2rynqpzowhwzsre.png', 'upload/20230105/cpk2rynqpzowhwzsre.png', '/upload/20230105/cpk2rynqpzowhwzsre.png', 15, '2023-01-05 15:23:59', '2023-01-05 15:23:59');
COMMIT;

-- ----------------------------
-- Table structure for goods_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_info`;
CREATE TABLE `goods_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pic_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `price` int NOT NULL DEFAULT '1' COMMENT '价格 单位分',
  `level1_category_id` int NOT NULL COMMENT '1级分类id',
  `level2_category_id` int NOT NULL DEFAULT '0' COMMENT '2级分类id',
  `level3_category_id` int NOT NULL DEFAULT '0' COMMENT '3级分类id',
  `brand` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '品牌',
  `stock` int NOT NULL DEFAULT '0' COMMENT '库存',
  `sale` int NOT NULL DEFAULT '0' COMMENT '销量',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标签',
  `detail_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '商品详情',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='商品表';

-- ----------------------------
-- Records of goods_info
-- ----------------------------
BEGIN;
INSERT INTO `goods_info` VALUES (1, 'https://assasda.png', '东鹏特饮1', 50000, 1, 2, 3, '东鹏2', 95, 15, '饮料，功能饮料', '东鹏 详情富文本', '2022-07-27 18:42:31', '2023-02-09 14:51:09', NULL);
INSERT INTO `goods_info` VALUES (2, 'https://assasda.png', '东鹏特饮2', 50000, 1, 2, 4, '东鹏2', 100, 0, '饮料，功能饮料', '东鹏 详情富文本', '2022-07-27 18:43:03', '2022-07-27 18:43:03', NULL);
INSERT INTO `goods_info` VALUES (3, 'http://dummyimage.com/400x400', '展交构图', 79, 70, 53, 23, 'adi', 59, 91, 'proident occaecat aliqua', 'culpa aliqua ipsum reprehenderit', '2023-01-16 17:08:19', '2023-01-16 17:34:03', NULL);
INSERT INTO `goods_info` VALUES (4, 'http://dummyimage.com/400x400', '产张成却场', 77, 65, 6, 48, 'laborum', 55, 37, 'dolore sit commodo ullamco', 'deserunt Lorem laboris', '2023-01-16 17:16:28', '2023-01-16 17:16:28', '2023-01-16 17:24:45');
COMMIT;

-- ----------------------------
-- Table structure for goods_options_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_options_info`;
CREATE TABLE `goods_options_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `goods_id` int NOT NULL COMMENT '商品id',
  `pic_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `price` int NOT NULL DEFAULT '1' COMMENT '价格 单位分',
  `stock` int NOT NULL DEFAULT '0' COMMENT '库存',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='商品规格表\n';

-- ----------------------------
-- Records of goods_options_info
-- ----------------------------
BEGIN;
INSERT INTO `goods_options_info` VALUES (5, 1, 'https://assasda.png', '东鹏特饮', 50000, 97, '2022-07-21 16:38:54', '2023-02-09 14:51:09', NULL);
INSERT INTO `goods_options_info` VALUES (6, 1, 'https://assasda.png', '东鹏特饮', 50000, 98, '2022-07-21 16:49:51', '2023-02-07 15:59:43', NULL);
INSERT INTO `goods_options_info` VALUES (7, 93, 'http://dummyimage.com/400x400', '团地下强', 14, 62, '2023-01-16 19:44:30', '2023-01-16 19:45:30', NULL);
COMMIT;

-- ----------------------------
-- Table structure for order_goods_info
-- ----------------------------
DROP TABLE IF EXISTS `order_goods_info`;
CREATE TABLE `order_goods_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '商品维度的订单表',
  `order_id` int NOT NULL DEFAULT '0' COMMENT '关联的主订单表',
  `goods_id` int NOT NULL DEFAULT '0' COMMENT '商品id',
  `goods_options_id` int DEFAULT '0' COMMENT '商品规格id sku id',
  `count` int NOT NULL COMMENT '商品数量',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `price` int NOT NULL DEFAULT '0' COMMENT '订单金额 单位分',
  `coupon_price` int NOT NULL DEFAULT '0' COMMENT '优惠券金额 单位分',
  `actual_price` int NOT NULL DEFAULT '0' COMMENT '实际支付金额 单位分',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='文章（种草）表';

-- ----------------------------
-- Records of order_goods_info
-- ----------------------------
BEGIN;
INSERT INTO `order_goods_info` VALUES (1, 1, 1, 0, 1, '', 100, 10, 90, NULL, NULL);
INSERT INTO `order_goods_info` VALUES (2, 8, 1, 0, 1, '', 0, 0, 0, '2022-08-27 20:50:50', '2022-08-27 20:50:50');
INSERT INTO `order_goods_info` VALUES (3, 8, 2, 0, 3, '', 0, 0, 0, '2022-08-27 20:50:50', '2022-08-27 20:50:50');
INSERT INTO `order_goods_info` VALUES (21, 13, 1, 5, 1, 'laboris consectetur in minim', 74, 67, 4, '2023-02-07 15:59:43', '2023-02-07 15:59:43');
INSERT INTO `order_goods_info` VALUES (22, 13, 1, 6, 2, 'ut amet laboris laborum dolore', 69, 89, 80, '2023-02-07 15:59:43', '2023-02-07 15:59:43');
INSERT INTO `order_goods_info` VALUES (23, 15, 1, 5, 1, '无', 10, 1, 9, '2023-02-09 14:15:59', '2023-02-09 14:15:59');
INSERT INTO `order_goods_info` VALUES (24, 16, 1, 5, 1, '无', 10, 1, 9, '2023-02-09 14:51:09', '2023-02-09 14:51:09');
COMMIT;

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单编号',
  `user_id` int NOT NULL DEFAULT '0' COMMENT '用户id',
  `pay_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付方式 1微信 2支付宝 3云闪付',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `pay_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '支付时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '订单状态： 1待支付 2已支付待发货 3已发货 4已收货待评价 5已评价',
  `consignee_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `consignee_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '收货人手机号',
  `consignee_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '收货人详细地址',
  `price` int NOT NULL DEFAULT '0' COMMENT '订单金额 单位分',
  `coupon_price` int NOT NULL DEFAULT '0' COMMENT '优惠券金额 单位分',
  `actual_price` int NOT NULL DEFAULT '0' COMMENT '实际支付金额 单位分',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='文章（种草）表';

-- ----------------------------
-- Records of order_info
-- ----------------------------
BEGIN;
INSERT INTO `order_info` VALUES (1, '1659231316407832000111', 1, 1, '0', NULL, 1, '王先生', '13269477432', '北京丰台汽车博物馆', 10000, 100, 9900, '2022-08-27 09:35:16', '2022-07-31 09:35:16');
INSERT INTO `order_info` VALUES (2, '1659231554317361000757', 1, 1, '0', NULL, 1, '王先生', '13269477432', '北京丰台汽车博物馆', 10000, 200, 9800, '2022-07-31 09:39:14', '2022-07-31 09:39:14');
INSERT INTO `order_info` VALUES (3, '1661603467832912000516', 1, 0, '', '2022-12-13 21:52:26', 0, '', '', '', 0, 0, 0, '2022-12-08 20:31:07', '2022-08-27 20:31:07');
INSERT INTO `order_info` VALUES (4, '1661603562656619000513', 1, 1, '放到快递柜就可以，不用打电话。', '2022-12-13 21:52:19', 0, '王先生', '13269477432', '北京丰台汽车博物馆', 0, 0, 0, '2022-12-09 20:32:42', '2022-08-27 20:32:42');
INSERT INTO `order_info` VALUES (5, '1661604424031843000546', 1, 0, '', '2022-12-13 21:52:12', 0, '', '', '', 0, 0, 0, '2022-12-10 20:47:04', '2022-08-27 20:47:04');
INSERT INTO `order_info` VALUES (6, '1661604530142913000770', 1, 1, '这是备注', '2022-12-13 21:52:05', 1, '', '', '', 100, 0, 0, '2022-12-11 20:48:50', '2022-08-27 20:48:50');
INSERT INTO `order_info` VALUES (7, '166160461284091500027', 1, 1, '这是备注', '2022-12-13 21:51:58', 1, '', '', '', 100, 0, 9800, '2022-12-12 20:50:50', '2022-08-27 20:50:12');
INSERT INTO `order_info` VALUES (8, '166160465089079000090', 1, 1, '这是备注', '2022-12-19 13:14:07', 1, '', '', '', 100, 0, 9800, '2022-12-19 20:50:50', '2022-08-27 20:50:50');
INSERT INTO `order_info` VALUES (9, '1675756215452071000340', 15, 0, 'ad sint', NULL, 1, '应便更空政于八', '18130435879', '香港特别行政区三沙市望城区', 25, 31, 97, '2023-02-07 15:50:15', '2023-02-07 15:50:15');
INSERT INTO `order_info` VALUES (10, '1675756478857950000699', 15, 0, 'ad sint', NULL, 1, '应便更空政于八', '18130435879', '香港特别行政区三沙市望城区', 25, 31, 97, '2023-02-07 15:54:38', '2023-02-07 15:54:38');
INSERT INTO `order_info` VALUES (11, '1675756573337742000600', 15, 0, 'ad sint', NULL, 1, '应便更空政于八', '18130435879', '香港特别行政区三沙市望城区', 25, 31, 97, '2023-02-07 15:56:13', '2023-02-07 15:56:13');
INSERT INTO `order_info` VALUES (13, '1675756783046217000276', 15, 0, 'consequat cupidatat in', NULL, 1, '在区三少', '18127326325', '广东省天津市安溪县', 87, 66, 92, '2023-02-07 15:59:43', '2023-02-07 15:59:43');
INSERT INTO `order_info` VALUES (14, '1675923255725252000737', 15, 0, '备注', NULL, 1, '王中阳go', '18130435879', '北京市朝阳区望京SOHO', 10, 1, 9, '2023-02-09 14:14:15', '2023-02-09 14:14:15');
INSERT INTO `order_info` VALUES (15, '1675923359070046000221', 15, 0, '备注', NULL, 1, '王中阳go', '18130435879', '北京市朝阳区望京SOHO', 10, 1, 9, '2023-02-09 14:15:59', '2023-02-09 14:15:59');
INSERT INTO `order_info` VALUES (16, '1675925468868358000350', 15, 0, '备注', NULL, 1, '王中阳go', '18130435879', '北京市朝阳区望京SOHO', 10, 1, 9, '2023-02-09 14:51:09', '2023-02-09 14:51:09');
COMMIT;

-- ----------------------------
-- Table structure for permission_info
-- ----------------------------
DROP TABLE IF EXISTS `permission_info`;
CREATE TABLE `permission_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '权限名称',
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '路径',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`) COMMENT '名称唯一索引'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of permission_info
-- ----------------------------
BEGIN;
INSERT INTO `permission_info` VALUES (1, '文章1', 'admin.article.index', '2022-09-25 15:03:01', '2022-09-25 15:03:43', NULL);
INSERT INTO `permission_info` VALUES (2, '测试2', 'admin.test.index', NULL, NULL, NULL);
INSERT INTO `permission_info` VALUES (5, '商品3', 'admin/goods', '2022-12-26 19:51:44', '2022-12-26 19:52:29', NULL);
INSERT INTO `permission_info` VALUES (6, '商品2', 'admin/goods', '2022-12-26 19:52:01', '2022-12-26 19:52:01', NULL);
COMMIT;

-- ----------------------------
-- Table structure for position_info
-- ----------------------------
DROP TABLE IF EXISTS `position_info`;
CREATE TABLE `position_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pic_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图片链接',
  `goods_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '跳转链接',
  `sort` tinyint NOT NULL DEFAULT '0' COMMENT '排序',
  `goods_id` int NOT NULL DEFAULT '0' COMMENT '商品id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of position_info
-- ----------------------------
BEGIN;
INSERT INTO `position_info` VALUES (2, 'https://images.zsxq.com/FgdL08hVmh-40_e12vh-ifbXpGxB?e=2000966400', '测试', 'https://articles.zsxq.com/id_wd15wsegvow1.html', 0, 1, '2022-11-18 17:44:07', '2022-11-18 17:44:07', '2022-11-18 17:44:59');
COMMIT;

-- ----------------------------
-- Table structure for praise_info
-- ----------------------------
DROP TABLE IF EXISTS `praise_info`;
CREATE TABLE `praise_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '点赞表',
  `user_id` int NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '点赞类型 1商品 2文章',
  `object_id` int NOT NULL DEFAULT '0' COMMENT '点赞对象id 方便后期扩展',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index` (`user_id`,`type`,`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of praise_info
-- ----------------------------
BEGIN;
INSERT INTO `praise_info` VALUES (8, 4, 1, 1, '2023-01-19 12:18:07', '2023-01-19 12:18:07');
COMMIT;

-- ----------------------------
-- Table structure for refund_info
-- ----------------------------
DROP TABLE IF EXISTS `refund_info`;
CREATE TABLE `refund_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '售后退款表',
  `number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '售后订单号',
  `order_id` int NOT NULL COMMENT '订单id',
  `goods_id` int NOT NULL DEFAULT '0' COMMENT '要售后的商品id\n',
  `reason` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '退款原因',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1待处理 2同意退款 3拒绝退款\n',
  `user_id` int NOT NULL COMMENT '用户id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of refund_info
-- ----------------------------
BEGIN;
INSERT INTO `refund_info` VALUES (1, 'refund1659247832739250000428', 1, 1, '不想要了', 1, 1, '2022-07-31 14:10:32', '2022-07-31 14:10:32', NULL);
COMMIT;

-- ----------------------------
-- Table structure for role_info
-- ----------------------------
DROP TABLE IF EXISTS `role_info`;
CREATE TABLE `role_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '描述',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index` (`name`) USING BTREE COMMENT '角色昵称唯一索引'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of role_info
-- ----------------------------
BEGIN;
INSERT INTO `role_info` VALUES (1, '运营1', '测试', '2022-09-25 10:35:52', '2022-12-24 10:51:24', NULL);
INSERT INTO `role_info` VALUES (3, '运营', '', '2022-12-21 10:43:33', '2022-12-21 10:43:33', NULL);
COMMIT;

-- ----------------------------
-- Table structure for role_permission_info
-- ----------------------------
DROP TABLE IF EXISTS `role_permission_info`;
CREATE TABLE `role_permission_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL DEFAULT '0' COMMENT '角色id',
  `permission_id` int NOT NULL COMMENT '权限id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index` (`role_id`,`permission_id`) USING BTREE COMMENT '唯一索引'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for rotation_info
-- ----------------------------
DROP TABLE IF EXISTS `rotation_info`;
CREATE TABLE `rotation_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pic_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '轮播图片',
  `link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '跳转链接',
  `sort` tinyint(1) NOT NULL DEFAULT '0' COMMENT '排序字段',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='轮播图表\n';

-- ----------------------------
-- Records of rotation_info
-- ----------------------------
BEGIN;
INSERT INTO `rotation_info` VALUES (1, '111', '11', 10, '2022-07-19 04:53:01', '2022-07-19 04:59:24', NULL);
COMMIT;

-- ----------------------------
-- Table structure for user_coupon_info
-- ----------------------------
DROP TABLE IF EXISTS `user_coupon_info`;
CREATE TABLE `user_coupon_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户优惠券表',
  `user_id` int NOT NULL DEFAULT '0',
  `coupon_id` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1可用 2已用 3过期',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of user_coupon_info
-- ----------------------------
BEGIN;
INSERT INTO `user_coupon_info` VALUES (1, 1, 1, 1, '2022-07-29 16:01:13', '2022-07-29 16:01:13', NULL);
INSERT INTO `user_coupon_info` VALUES (2, 39, 61, 72, '2022-07-29 16:16:18', '2023-01-16 15:22:28', NULL);
INSERT INTO `user_coupon_info` VALUES (3, 55, 30, 58, '2023-01-16 15:20:29', '2023-01-16 15:20:29', '2023-01-16 15:21:14');
COMMIT;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '头像',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `user_salt` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '加密盐 生成密码用',
  `sex` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1男 2女',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1正常 2拉黑冻结',
  `sign` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '个性签名',
  `secret_answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密保问题的答案',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='商品表';

-- ----------------------------
-- Records of user_info
-- ----------------------------
BEGIN;
INSERT INTO `user_info` VALUES (1, 'lida', 'https://img1.baidu.com/it/u=2029513305,2137933177&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=472', '26bebfe4cf87cc2bd7b89c237fe42df3', 'QLAFRsKG2N', 1, 1, '个性签名', '银河中学', '2022-07-28 17:19:42', '2022-07-31 19:25:01', NULL);
INSERT INTO `user_info` VALUES (2, 'wang', '', '', '', 1, 1, '', '', NULL, NULL, NULL);
INSERT INTO `user_info` VALUES (3, '作证表之有', 'http://dummyimage.com/100x100', '34929b5d84cf66ae73797d5b48297710', '6bZBjqX1Nk', 1, 92, 'incididunt Excepteur aliqua non', 'cupidatat magna', '2023-01-18 08:19:38', '2023-01-18 08:19:38', NULL);
INSERT INTO `user_info` VALUES (4, 'wzy', 'http://dummyimage.com/100x100', 'a90f083adf941cd75bde9cc371fbe00b', 'wpm0bGNBrf', 63, 52, 'Excepteur', 'voluptate in non ea ut', '2023-01-18 09:54:46', '2023-01-18 12:14:13', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
