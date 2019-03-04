/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : lianxi

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-03-04 16:03:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cart_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `buy_num` int(10) DEFAULT NULL,
  `goods_id` int(10) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `create_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('1', '2', '1', '2', '0', '1551339216');

-- ----------------------------
-- Table structure for cate
-- ----------------------------
DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cate
-- ----------------------------
INSERT INTO `cate` VALUES ('1', '女装');
INSERT INTO `cate` VALUES ('2', '男装');
INSERT INTO `cate` VALUES ('3', '婴儿');
INSERT INTO `cate` VALUES ('4', '成人用品');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(20) DEFAULT NULL,
  `cate_show` tinyint(4) DEFAULT NULL,
  `cate_navshow` tinyint(4) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '生鲜水果', '1', '1', '1', '0', '1542445107');
INSERT INTO `category` VALUES ('2', '母婴玩具', '1', '1', '1', '0', '1542445107');
INSERT INTO `category` VALUES ('3', '家居建材', '1', '1', '1', '0', '1542445107');
INSERT INTO `category` VALUES ('4', '生活电器', '1', '1', '1', '0', '1542445107');
INSERT INTO `category` VALUES ('5', '空调', '1', '2', '2', '4', '1542445107');
INSERT INTO `category` VALUES ('6', '冰箱', '1', '2', '2', '4', '1542445107');
INSERT INTO `category` VALUES ('7', '洗衣机', '1', '2', '2', '4', '1542445107');
INSERT INTO `category` VALUES ('8', '卧室家具', '1', '2', '2', '3', '1542445107');
INSERT INTO `category` VALUES ('9', '书房儿童', '1', '2', '2', '3', '1542445107');
INSERT INTO `category` VALUES ('10', '蛋类', '1', '2', '2', '1', '1542445107');
INSERT INTO `category` VALUES ('11', '肉类', '1', '2', '2', '1', '1542445107');
INSERT INTO `category` VALUES ('12', '海鲜', '1', '2', '2', '1', '1542445107');
INSERT INTO `category` VALUES ('13', '三文鱼', '1', '2', '3', '12', '1542445107');
INSERT INTO `category` VALUES ('14', '鸡蛋', '1', '2', '3', '10', '1542445107');
INSERT INTO `category` VALUES ('15', '牛肉', '1', '2', '3', '11', '1542445107');
INSERT INTO `category` VALUES ('16', '电脑桌', '1', '2', '3', '9', '1542445107');
INSERT INTO `category` VALUES ('17', '儿童床', '1', '2', '3', '9', '1542445107');
INSERT INTO `category` VALUES ('18', '衣柜', '1', '2', '3', '8', '1542445107');
INSERT INTO `category` VALUES ('19', '床', '1', '2', '3', '8', '1542445107');
INSERT INTO `category` VALUES ('20', '节能空调', '1', '2', '3', '5', '1542445107');
INSERT INTO `category` VALUES ('21', '三门冰箱', '1', '2', '3', '6', '1542445107');
INSERT INTO `category` VALUES ('22', '滚筒洗衣机', '1', '2', '3', '7', '1542445107');
INSERT INTO `category` VALUES ('23', '微波炉', '1', '2', '2', '4', '1542445107');
INSERT INTO `category` VALUES ('25', '光波炉', '1', '2', '3', '23', '1542445149');
INSERT INTO `category` VALUES ('26', '零食', '1', '1', '1', '0', '1542797910');
INSERT INTO `category` VALUES ('27', '进口食品', '1', '2', '2', '26', '1542797927');
INSERT INTO `category` VALUES ('28', '女装', '1', '1', '1', '0', '1542933209');
INSERT INTO `category` VALUES ('29', '医药保健', '1', '1', '1', '0', '1542933224');
INSERT INTO `category` VALUES ('30', '美妆', '1', '1', '1', '0', '1542933243');
INSERT INTO `category` VALUES ('31', '数码', '1', '1', '1', '0', '1542933249');
INSERT INTO `category` VALUES ('32', '儿童玩具', '1', '2', '3', '2', '1542933413');
INSERT INTO `category` VALUES ('33', '水果', '1', '2', '2', '1', '1542933528');
INSERT INTO `category` VALUES ('34', '苹果', '1', '2', '3', '33', '1542933542');
INSERT INTO `category` VALUES ('35', '香蕉', '1', '2', '3', '33', '1542933555');
INSERT INTO `category` VALUES ('36', '当季流行', '1', '2', '2', '28', '1542943509');
INSERT INTO `category` VALUES ('37', '精品上装', '1', '2', '2', '28', '1542943536');
INSERT INTO `category` VALUES ('38', '浪漫裙装', '1', '2', '2', '28', '1542943554');
INSERT INTO `category` VALUES ('39', '家居服', '1', '2', '2', '28', '1542943587');
INSERT INTO `category` VALUES ('40', '女装新品', '1', '2', '3', '36', '1542943691');
INSERT INTO `category` VALUES ('41', '商场同款', '1', '2', '3', '36', '1542943718');
INSERT INTO `category` VALUES ('42', '童装', '1', '2', '3', '2', '1542943787');
INSERT INTO `category` VALUES ('43', '童鞋', '1', '2', '3', '2', '1542943800');
INSERT INTO `category` VALUES ('44', '车床用品', '1', '2', '3', '2', '1542943821');
INSERT INTO `category` VALUES ('45', '喂养', '1', '2', '3', '2', '1542943843');
INSERT INTO `category` VALUES ('46', '洗护', '1', '2', '3', '2', '1542943856');
INSERT INTO `category` VALUES ('47', '亲子装', '1', '2', '3', '42', '1542943877');
INSERT INTO `category` VALUES ('48', '套装', '1', '2', '3', '42', '1542943904');
INSERT INTO `category` VALUES ('49', '连体衣', '1', '2', '3', '42', '1542943933');
INSERT INTO `category` VALUES ('50', '学步鞋', '1', '2', '3', '43', '1542943959');
INSERT INTO `category` VALUES ('51', '亲子鞋', '1', '2', '3', '43', '1542943973');
INSERT INTO `category` VALUES ('52', '运动鞋', '1', '2', '3', '43', '1542943984');
INSERT INTO `category` VALUES ('53', '帆布鞋', '1', '2', '3', '43', '1542944006');
INSERT INTO `category` VALUES ('54', '婴儿推车', '1', '2', '3', '44', '1542944032');
INSERT INTO `category` VALUES ('55', '学步车', '1', '2', '3', '44', '1542944048');
INSERT INTO `category` VALUES ('56', '安全座椅', '1', '2', '3', '44', '1542944078');
INSERT INTO `category` VALUES ('57', '奶瓶', '1', '2', '3', '45', '1542944097');
INSERT INTO `category` VALUES ('58', '奶嘴', '1', '2', '3', '45', '1542944110');
INSERT INTO `category` VALUES ('59', '水杯', '1', '2', '3', '45', '1542944122');
INSERT INTO `category` VALUES ('60', '洗发水', '1', '2', '3', '46', '1542944145');
INSERT INTO `category` VALUES ('61', '沐浴乳', '1', '2', '3', '46', '1542944161');
INSERT INTO `category` VALUES ('62', '湿巾', '1', '2', '3', '46', '1542944180');
INSERT INTO `category` VALUES ('63', '时髦外套', '1', '2', '3', '36', '1542944221');
INSERT INTO `category` VALUES ('64', '毛呢外套', '1', '2', '3', '37', '1542944251');
INSERT INTO `category` VALUES ('65', '棉衣', '1', '2', '3', '37', '1542944277');
INSERT INTO `category` VALUES ('66', '羽绒服', '1', '2', '3', '37', '1542944298');
INSERT INTO `category` VALUES ('67', '连衣裙', '1', '2', '3', '38', '1542944324');
INSERT INTO `category` VALUES ('68', '半身裙', '1', '2', '3', '38', '1542944343');
INSERT INTO `category` VALUES ('69', 'A子群', '1', '2', '3', '38', '1542944358');
INSERT INTO `category` VALUES ('70', '春夏家居服', '1', '2', '3', '39', '1542944388');
INSERT INTO `category` VALUES ('71', '纯棉家居服', '1', '2', '3', '39', '1542944409');
INSERT INTO `category` VALUES ('72', '真丝家居服', '1', '2', '3', '39', '1542944425');
INSERT INTO `category` VALUES ('73', '婴儿玩具', '1', '2', '3', '32', '1542944504');
INSERT INTO `category` VALUES ('74', '毛绒玩具', '1', '2', '3', '32', '1542944529');
INSERT INTO `category` VALUES ('75', '儿童自行车', '1', '2', '3', '32', '1542944565');
INSERT INTO `category` VALUES ('76', '鸭蛋', '1', '2', '3', '10', '1542944611');
INSERT INTO `category` VALUES ('77', '鹌鹑蛋', '1', '2', '3', '10', '1542944625');
INSERT INTO `category` VALUES ('78', '驴肉', '1', '2', '3', '11', '1542944640');
INSERT INTO `category` VALUES ('79', '猪肉', '1', '2', '3', '11', '1542944650');
INSERT INTO `category` VALUES ('80', '鸡肉', '1', '2', '3', '11', '1542944661');
INSERT INTO `category` VALUES ('81', '带鱼', '1', '2', '3', '12', '1542944678');
INSERT INTO `category` VALUES ('82', '鲤鱼', '1', '2', '3', '12', '1542944691');
INSERT INTO `category` VALUES ('83', '鲍鱼', '1', '2', '3', '12', '1542944705');
INSERT INTO `category` VALUES ('84', '榴莲', '1', '2', '3', '33', '1542944744');
INSERT INTO `category` VALUES ('85', '椰子', '1', '2', '3', '33', '1542944757');
INSERT INTO `category` VALUES ('86', '客厅餐厅', '1', '2', '2', '3', '1542944821');
INSERT INTO `category` VALUES ('87', '家庭主材', '1', '2', '2', '3', '1542944849');
INSERT INTO `category` VALUES ('88', '厨房卫浴', '1', '2', '2', '3', '1542944880');
INSERT INTO `category` VALUES ('89', '成套家具', '1', '2', '2', '3', '1542944903');
INSERT INTO `category` VALUES ('90', '沙发', '1', '2', '3', '86', '1542944935');
INSERT INTO `category` VALUES ('91', '酒柜', '1', '2', '3', '86', '1542944949');
INSERT INTO `category` VALUES ('92', '橱柜', '1', '2', '3', '86', '1542944964');
INSERT INTO `category` VALUES ('93', '客厅成套', '1', '2', '3', '89', '1542944987');
INSERT INTO `category` VALUES ('94', '餐厅成套', '1', '2', '3', '89', '1542945011');
INSERT INTO `category` VALUES ('95', '卧室成套', '1', '2', '3', '89', '1542945039');
INSERT INTO `category` VALUES ('96', '浴霸', '1', '2', '3', '88', '1542945082');
INSERT INTO `category` VALUES ('97', '马桶', '1', '2', '3', '88', '1542945100');
INSERT INTO `category` VALUES ('98', '花洒', '1', '2', '3', '88', '1542945118');
INSERT INTO `category` VALUES ('99', '瓷砖', '1', '2', '3', '87', '1542945177');
INSERT INTO `category` VALUES ('100', '壁纸', '1', '2', '3', '87', '1542945193');
INSERT INTO `category` VALUES ('101', '涂鸦', '1', '2', '3', '87', '1542945209');
INSERT INTO `category` VALUES ('102', '新鲜蔬菜', '1', '2', '2', '1', '1542945246');
INSERT INTO `category` VALUES ('103', '冰淇淋', '1', '2', '2', '1', '1542945257');
INSERT INTO `category` VALUES ('104', '土豆', '1', '2', '3', '102', '1542945284');
INSERT INTO `category` VALUES ('105', '山药', '1', '2', '3', '102', '1542945302');
INSERT INTO `category` VALUES ('106', '番薯', '1', '2', '3', '102', '1542945312');
INSERT INTO `category` VALUES ('107', '哈根达斯', '1', '2', '3', '103', '1542945360');
INSERT INTO `category` VALUES ('108', '本杰瑞', '1', '2', '3', '103', '1542945382');
INSERT INTO `category` VALUES ('109', '厨房大电', '1', '2', '2', '4', '1542945449');
INSERT INTO `category` VALUES ('110', '平板电视', '1', '2', '2', '4', '1542945471');
INSERT INTO `category` VALUES ('111', '全自动洗衣机', '1', '2', '3', '7', '1542945512');
INSERT INTO `category` VALUES ('112', '变频空调', '1', '2', '3', '5', '1542945527');
INSERT INTO `category` VALUES ('113', '双开门冰箱', '1', '2', '3', '6', '1542945551');
INSERT INTO `category` VALUES ('114', '国产', '1', '2', '3', '110', '1542945600');
INSERT INTO `category` VALUES ('115', '外资', '1', '2', '3', '110', '1542945614');
INSERT INTO `category` VALUES ('116', '曲面', '1', '2', '3', '110', '1542945626');
INSERT INTO `category` VALUES ('117', '烟灶套装', '1', '2', '3', '109', '1542945678');
INSERT INTO `category` VALUES ('118', '洗碗机', '1', '2', '3', '109', '1542945702');
INSERT INTO `category` VALUES ('119', '消毒柜', '1', '2', '3', '109', '1542945724');
INSERT INTO `category` VALUES ('120', '数码配件', '1', '2', '2', '31', '1542945933');
INSERT INTO `category` VALUES ('121', '热门手机', '1', '2', '2', '31', '1542945950');
INSERT INTO `category` VALUES ('122', '电脑组装', '1', '2', '2', '31', '1542945966');
INSERT INTO `category` VALUES ('123', '硬件储存', '1', '2', '2', '31', '1542946012');
INSERT INTO `category` VALUES ('124', '摄影摄像', '1', '2', '2', '31', '1542946025');
INSERT INTO `category` VALUES ('125', '小米', '1', '2', '3', '121', '1542946093');
INSERT INTO `category` VALUES ('126', '华为', '1', '2', '3', '121', '1542946105');
INSERT INTO `category` VALUES ('127', 'iPhone', '1', '2', '3', '121', '1542946141');
INSERT INTO `category` VALUES ('128', '笔记本', '1', '2', '3', '122', '1542946177');
INSERT INTO `category` VALUES ('129', '平板', '1', '2', '3', '122', '1542946191');
INSERT INTO `category` VALUES ('130', '台式', '1', '2', '3', '122', '1542946202');
INSERT INTO `category` VALUES ('131', '手机配件', '1', '2', '3', '120', '1542946230');
INSERT INTO `category` VALUES ('132', '笔记本配件', '1', '2', '3', '120', '1542946252');
INSERT INTO `category` VALUES ('133', '充电宝', '1', '2', '3', '120', '1542946290');
INSERT INTO `category` VALUES ('134', '显示器', '1', '2', '3', '123', '1542946341');
INSERT INTO `category` VALUES ('135', 'CPU', '1', '2', '3', '123', '1542946352');
INSERT INTO `category` VALUES ('136', '硬盘', '1', '2', '3', '123', '1542946364');
INSERT INTO `category` VALUES ('137', '影音娱乐', '1', '2', '2', '31', '1542946405');
INSERT INTO `category` VALUES ('138', '天猫魔盒', '1', '2', '3', '137', '1542946444');
INSERT INTO `category` VALUES ('139', '耳机', '1', '2', '3', '137', '1542946457');
INSERT INTO `category` VALUES ('140', '家庭影院', '1', '2', '3', '137', '1542946471');
INSERT INTO `category` VALUES ('141', '相机', '1', '2', '3', '124', '1542946488');
INSERT INTO `category` VALUES ('142', '单反', '1', '2', '3', '124', '1542946503');
INSERT INTO `category` VALUES ('143', '摄像机', '1', '2', '3', '124', '1542946521');
INSERT INTO `category` VALUES ('144', '护肤品', '1', '2', '2', '30', '1542946633');
INSERT INTO `category` VALUES ('145', '彩妆', '1', '2', '2', '30', '1542946650');
INSERT INTO `category` VALUES ('146', '美发护发', '1', '2', '2', '30', '1542946694');
INSERT INTO `category` VALUES ('147', '口腔护理', '1', '2', '2', '30', '1542946710');
INSERT INTO `category` VALUES ('148', '男士护肤', '1', '2', '2', '30', '1542946742');
INSERT INTO `category` VALUES ('149', '肤质推选', '1', '2', '2', '30', '1542946775');
INSERT INTO `category` VALUES ('150', '面膜', '1', '2', '3', '144', '1542946799');
INSERT INTO `category` VALUES ('151', '身体乳', '1', '2', '3', '144', '1542946822');
INSERT INTO `category` VALUES ('152', '卸妆', '1', '2', '3', '144', '1542946836');
INSERT INTO `category` VALUES ('153', '香水', '1', '2', '3', '145', '1542946852');
INSERT INTO `category` VALUES ('154', 'BB霜', '1', '2', '3', '145', '1542946872');
INSERT INTO `category` VALUES ('155', '洁面', '1', '2', '3', '148', '1542946910');
INSERT INTO `category` VALUES ('156', '爽肤水', '1', '2', '3', '148', '1542946973');
INSERT INTO `category` VALUES ('157', '控油', '1', '2', '3', '148', '1542947007');
INSERT INTO `category` VALUES ('158', '干性', '1', '2', '3', '149', '1542947034');
INSERT INTO `category` VALUES ('159', '敏感性', '1', '2', '3', '149', '1542947053');
INSERT INTO `category` VALUES ('160', '护发素', '1', '2', '3', '146', '1542947100');
INSERT INTO `category` VALUES ('161', '发膜', '1', '2', '3', '146', '1542947120');
INSERT INTO `category` VALUES ('162', '牙膏', '1', '2', '3', '147', '1542947161');
INSERT INTO `category` VALUES ('163', '牙刷', '1', '2', '3', '147', '1542947190');
INSERT INTO `category` VALUES ('164', '保健品', '1', '2', '2', '29', '1542947470');
INSERT INTO `category` VALUES ('165', '滋补品', '1', '2', '2', '29', '1542947505');
INSERT INTO `category` VALUES ('166', '医药', '1', '2', '2', '29', '1542947526');
INSERT INTO `category` VALUES ('167', '隐形眼睛', '1', '2', '2', '29', '1542947561');
INSERT INTO `category` VALUES ('168', '医疗器械', '1', '2', '2', '29', '1542947583');
INSERT INTO `category` VALUES ('169', '医疗服务', '1', '2', '2', '29', '1542947598');
INSERT INTO `category` VALUES ('170', '芦荟', '1', '2', '3', '164', '1542947614');
INSERT INTO `category` VALUES ('171', '玛卡', '1', '2', '3', '164', '1542947629');
INSERT INTO `category` VALUES ('172', '蜂蜜', '1', '2', '3', '165', '1542947651');
INSERT INTO `category` VALUES ('173', '阿胶', '1', '2', '3', '165', '1542948990');
INSERT INTO `category` VALUES ('174', '感冒咳嗽', '1', '2', '3', '166', '1542949037');
INSERT INTO `category` VALUES ('175', '成人用品', '1', '2', '3', '166', '1542949065');
INSERT INTO `category` VALUES ('176', '制氧机', '1', '2', '3', '168', '1542949103');
INSERT INTO `category` VALUES ('177', '体温计', '1', '2', '3', '168', '1542949123');
INSERT INTO `category` VALUES ('178', '强生美瞳', '1', '2', '3', '167', '1542949155');
INSERT INTO `category` VALUES ('179', '博士伦', '1', '2', '3', '167', '1542949175');
INSERT INTO `category` VALUES ('180', '爱康国宾', '1', '2', '3', '169', '1542949210');
INSERT INTO `category` VALUES ('181', '月子中心', '1', '2', '3', '169', '1542949231');
INSERT INTO `category` VALUES ('182', '女士下装', '1', '2', '2', '28', '1542949352');
INSERT INTO `category` VALUES ('183', '特色女装', '1', '2', '2', '28', '1542949370');
INSERT INTO `category` VALUES ('184', '休闲裤', '1', '2', '3', '182', '1542949390');
INSERT INTO `category` VALUES ('185', '阔腿裤', '1', '2', '3', '182', '1542949408');
INSERT INTO `category` VALUES ('186', '时尚套装', '1', '2', '3', '183', '1542949432');
INSERT INTO `category` VALUES ('187', '休闲套装', '1', '2', '3', '183', '1542949454');
INSERT INTO `category` VALUES ('188', '休闲零食', '1', '2', '2', '26', '1542949632');
INSERT INTO `category` VALUES ('189', '酒类', '1', '2', '2', '26', '1542949654');
INSERT INTO `category` VALUES ('190', '茶叶', '1', '2', '2', '26', '1542949686');
INSERT INTO `category` VALUES ('191', '乳品冲饮', '1', '2', '2', '26', '1542949713');
INSERT INTO `category` VALUES ('192', '粮油速食', '1', '2', '2', '26', '1542949736');
INSERT INTO `category` VALUES ('193', '进口巧克力', '1', '2', '3', '27', '1542949776');
INSERT INTO `category` VALUES ('194', '进口饼干', '1', '2', '3', '27', '1542949799');
INSERT INTO `category` VALUES ('195', '坚果', '1', '2', '3', '188', '1542949822');
INSERT INTO `category` VALUES ('196', '饼干', '1', '2', '3', '188', '1542949838');
INSERT INTO `category` VALUES ('197', '白酒', '1', '2', '3', '189', '1542949857');
INSERT INTO `category` VALUES ('198', '红酒', '1', '2', '3', '189', '1542949875');
INSERT INTO `category` VALUES ('199', '西湖龙井', '1', '2', '3', '190', '1542949907');
INSERT INTO `category` VALUES ('200', '绿茶', '1', '2', '3', '190', '1542949928');
INSERT INTO `category` VALUES ('201', '牛奶', '1', '2', '3', '191', '1542949949');
INSERT INTO `category` VALUES ('202', '酸奶', '1', '2', '3', '191', '1542949964');
INSERT INTO `category` VALUES ('203', '橄榄油', '1', '2', '3', '192', '1542949983');
INSERT INTO `category` VALUES ('204', '大米', '1', '2', '3', '192', '1542950001');
INSERT INTO `category` VALUES ('205', '首饰', '1', '2', '1', '0', '1543480550');
INSERT INTO `category` VALUES ('206', '鱿鱼', '1', '2', '3', '12', '1543481830');
INSERT INTO `category` VALUES ('207', '黄金首饰', '1', '2', '2', '205', '1543481873');
INSERT INTO `category` VALUES ('208', '钻石彩宝', '1', '2', '2', '205', '1543481907');
INSERT INTO `category` VALUES ('209', '珍珠玉翠', '1', '2', '2', '205', '1543481967');
INSERT INTO `category` VALUES ('210', '腕表', '1', '2', '2', '205', '1543481991');
INSERT INTO `category` VALUES ('211', '潮流饰品', '1', '2', '2', '205', '1543482022');
INSERT INTO `category` VALUES ('212', '眼镜', '1', '2', '2', '205', '1543482082');
INSERT INTO `category` VALUES ('213', '足金饰品', '1', '2', '3', '207', '1543482262');
INSERT INTO `category` VALUES ('214', '婚嫁套饰', '1', '2', '3', '207', '1543482312');
INSERT INTO `category` VALUES ('215', '钻石吊坠', '1', '2', '3', '208', '1543486587');
INSERT INTO `category` VALUES ('216', '红蓝宝石', '1', '2', '3', '208', '1543486605');
INSERT INTO `category` VALUES ('218', '海水珍珠', '1', '2', '3', '209', '1543486708');
INSERT INTO `category` VALUES ('219', '和田玉', '1', '2', '3', '209', '1543486805');
INSERT INTO `category` VALUES ('220', '传统银饰', '1', '2', '3', '211', '1543486842');
INSERT INTO `category` VALUES ('221', '手链', '1', '2', '3', '211', '1543486862');
INSERT INTO `category` VALUES ('222', '瑞士名表', '1', '2', '3', '210', '1543486890');
INSERT INTO `category` VALUES ('223', '经典国表', '1', '2', '3', '210', '1543486931');
INSERT INTO `category` VALUES ('224', '墨镜', '1', '2', '3', '212', '1543486973');
INSERT INTO `category` VALUES ('225', '暴龙', '1', '2', '3', '212', '1543486996');
INSERT INTO `category` VALUES ('226', '烤箱', '1', '2', '3', '23', '1543487111');

-- ----------------------------
-- Table structure for code
-- ----------------------------
DROP TABLE IF EXISTS `code`;
CREATE TABLE `code` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `timeout` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of code
-- ----------------------------
INSERT INTO `code` VALUES ('4', '7789', '13834942938', '1550806061', '0');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(45) DEFAULT NULL,
  `goods_price` float DEFAULT NULL,
  `goods_marketprice` float DEFAULT NULL,
  `goods_show` tinyint(4) DEFAULT NULL,
  `goods_hot` tinyint(4) DEFAULT '2',
  `goods_new` tinyint(4) DEFAULT NULL,
  `goods_desc` varchar(255) DEFAULT NULL,
  `goods_score` int(11) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `goods_imgs` varchar(255) DEFAULT NULL,
  `cate_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `goods_pnum` int(11) DEFAULT NULL,
  `sale_num` int(11) DEFAULT NULL,
  `is_tell` tinyint(4) DEFAULT NULL COMMENT '0是非推荐，1是推荐',
  `is_like` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`goods_id`),
  KEY `fk_shop_goods_shop_category_idx` (`cate_id`),
  KEY `fk_shop_goods_shop_brand1_idx` (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '亨奇 摇表器 机械手表德国进口全自动', '468', '700', '1', '1', '1', '99', '500', '20190107/5c32a52f7848d.gif', '', '223', '28', '10000', '11111', '1', '2');
INSERT INTO `goods` VALUES ('2', '弘艺堂首饰盒木质公主欧式韩国 实木多', '398', '536', '1', '1', '1', '188', '666', '20190107/5c32a52f7848d.gif', '', '222', '29', '5546', '11111', '1', '1');
INSERT INTO `goods` VALUES ('3', '锦贝传说螺钿漆器结婚礼物首饰盒木质', '599', '999', '1', '1', '1', '1313', '10000', '20190107/5c32a52f7848d.gif', '', '220', '32', '8978', '11111', '1', '1');
INSERT INTO `goods` VALUES ('4', '法缇雅摇表器自动机械手表盒子上弦器', '198', '229', '1', '1', '1', '9000', '3123', '20190107/5c32a52f7848d.gif', '', '222', '33', '1321', '11111', '1', '1');
INSERT INTO `goods` VALUES ('5', '摇表器 自动机械表上链器 手表盒收纳', '299', '499', '1', '1', '1', '8888', '100', '20190107/5c32a52f7848d.gif', '', '223', '32', '342', '11111', '1', '1');
INSERT INTO `goods` VALUES ('6', '乡康佬五香卤蛋乡巴佬卤蛋土鸡蛋喜蛋', '37.3', '42', '1', '1', '1', '999', '20', '20190107/5c32a52f7848d.gif', '', '14', '28', '654', '115676', '1', '1');
INSERT INTO `goods` VALUES ('7', '摇表器 德国品质进口马达转表器晃表器 ', '200', '399', '1', '1', '1', '700', '6768', '20190107/5c32a52f7848d.gif', '', '222', '27', '1414', '4666', '1', '1');
INSERT INTO `goods` VALUES ('8', '新品】施华洛世奇2018MAGIC雪花', '1190', '1599', '1', '1', '1', '1190', '14343', '20190107/5c32a52f7848d.gif', '', '221', '32', '132', '1454', '1', '1');
INSERT INTO `goods` VALUES ('9', '明牌珠宝黄金手镯 足金匠心简约心跳呆口女款手镯AFI0056 工费300', '8983.65', '10000', '1', '1', '1', '127', '6000', '20190107/5c32a52f7848d.gif', '', '221', '31', '5435', '11111', '1', '1');
INSERT INTO `goods` VALUES ('10', 'Apple/苹果 iPhone 8 Plus', '5999', '6199', '1', '1', '1', '50', '500', '20190107/5c32a52f7848d.gif', '', '127', '36', '34534', '11111', '1', '1');
INSERT INTO `goods` VALUES ('11', 'honor/荣耀 荣耀magic 2', '4299', '4599', '1', '1', '1', '47', '400', '20190107/5c32a52f7848d.gif', '', '126', '37', '132214', '11111', '1', '1');
INSERT INTO `goods` VALUES ('12', 'Haier/海尔 BCD-206STPA 三门式 206升三门 中门软冷冻 0解冻时间', '1499', '1599', '1', '1', '1', '66', '1314', '20190107/5c32a52f7848d.gif', '', '113', '1', '42423', '11111', '1', '1');
INSERT INTO `goods` VALUES ('13', 'Haier/海尔 BCD-258WDPM 三门式 风冷无霜 杀菌技术 瞬时断电记忆', '2299', '2599', '1', '1', '1', '32423', '4564', '20190107/5c32a52f7848d.gif', '', '21', '1', '4242', '11111', '1', '1');
INSERT INTO `goods` VALUES ('14', '科智 20000', '59', '80', '1', '1', '1', '85', '25', '20190107/5c32a52f7848d.gif', '', '133', '41', '23424', '11111', '1', '1');
INSERT INTO `goods` VALUES ('15', 'Dell/戴尔 G7 GTX1060MQ 6G独显游', '7399', '7599', '1', '1', '1', '34', '740', '20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '128', '44', '54353', '11111', '1', '1');
INSERT INTO `goods` VALUES ('16', 'Haier/海尔 BCD-572WDENU1 对开双门式', '3499', '4999', '1', '1', '1', '1314', '1314', '20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '113', '1', '13131', '11111', '1', '1');
INSERT INTO `goods` VALUES ('17', 'Midea/美的 BCD-521WKM(E) 对开双门式 风冷无霜 纤薄机身 电脑控温', '2899', '2999', '1', '1', '1', '435', '1334', '20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '113', '3', '23424', '11111', '1', '1');
INSERT INTO `goods` VALUES ('18', 'Asus/华硕 飞行堡垒5代FX80GE游戏本', '6599', '6798', '1', '1', '1', '22', '650', '20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '128', '43', '1314', '11111', '1', '1');
INSERT INTO `goods` VALUES ('19', 'Midea/美的 KFR-35GW/WCBD3@', '2299', '3000', '1', '1', '1', '9999', '3123', '20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '20', '3', '5435', '11111', '1', '1');
INSERT INTO `goods` VALUES ('20', 'Midea/美的 KFR-35GW/WCBD3@', '2299', '3000', '1', '1', '1', '9999', '3123', '20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '20', '3', '6546', '11111', '1', '1');
INSERT INTO `goods` VALUES ('21', 'Audio Technica/铁三角 ATH-CLR100IS  铁三角官方旗舰店   等', '138', '150', '1', '1', '1', '150', '30', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '139', '26', '4234', '11111', '1', '1');
INSERT INTO `goods` VALUES ('22', 'Canon/佳能 EOS 5D Mark IV机身 36', '15999', '17499', '1', '1', '1', '10', '1599', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '141', '38', '5546', '11111', '1', '1');
INSERT INTO `goods` VALUES ('23', '¥2849.00 Gree/格力 KFR-35GW/NhBaD3', '2849.9', '2999', '1', '1', '1', '3550', '355', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '112', '3', '35453', '11111', '1', '1');
INSERT INTO `goods` VALUES ('24', '¥3599.00 Haier/海尔 KFR-50GW/13NHA13', '3599', '3799', '1', '1', '1', '3134', '988', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '112', '1', '3123', '11111', '1', '1');
INSERT INTO `goods` VALUES ('25', 'Kingston/金士顿 SA400S37/120G 固', '186', '198', '1', '1', '1', '200', '15', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '136', '42', '4322', '11111', '1', '1');
INSERT INTO `goods` VALUES ('26', 'Haier/海尔 EG10014B39GU1 10公斤大容量、BLDC变频、消毒洗', '2699', '2999', '1', '1', '1', '7777', '21312', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '22', '1', '4353', '11111', '1', '1');
INSERT INTO `goods` VALUES ('27', 'Midea/美的 MB75-eco11W 美居智能 ', '949', '1000', '1', '1', '1', '432', '1232', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '111', '3', '12313', '11111', '1', '1');
INSERT INTO `goods` VALUES ('28', 'Leader/统帅 @G7012B16W', '1499', '1799', '1', '1', '1', '231', '188', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '111', '3', '21313', '11111', '1', '1');
INSERT INTO `goods` VALUES ('29', '哥弟秋冬修身显瘦女士裤子 ', '299', '349', '1', '1', '1', '78', '50', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '184', '34', '4241', '11111', '1', '1');
INSERT INTO `goods` VALUES ('30', '波司登大毛领宽松保暖粉色少女羽绒服', '539', '599', '1', '1', '1', '47', '100', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '66', '54', '32423', '11111', '1', '1');
INSERT INTO `goods` VALUES ('31', '【现摘现发】陕西红富士苹果5斤新鲜', '29.9', '33', '1', '1', '1', '9999', '30', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '34', '62', '23432', '11111', '1', '1');
INSERT INTO `goods` VALUES ('33', '女士加厚加绒秋冬款法兰绒妈妈套装', '138', '169', '1', '1', '1', '26', '56', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '71', '40', '5645', '11111', '1', '1');
INSERT INTO `goods` VALUES ('34', '半身裙女高腰冬装2018新款丝绒中长款', '279', '319', '1', '1', '1', '20', '110', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '68', '49', '8888', '11111', '1', '1');
INSERT INTO `goods` VALUES ('35', '果滋岛泰国猫山王榴莲新鲜3-13斤水果', '208', '245', '1', '1', '1', '5000', '300', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '84', '67', '5675', '11111', '1', '1');
INSERT INTO `goods` VALUES ('36', '春秋时尚金丝绒大码加绒休闲两件套 ', '188', '219', '1', '1', '1', '21', '39', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '186', '68', '34545', '11111', '1', '1');
INSERT INTO `goods` VALUES ('37', '苏洪鲜食泰国椰青椰子9个装原箱大号', '82', '100', '1', '1', '1', '900', '4324', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '85', '76', '31234', '11111', '1', '1');
INSERT INTO `goods` VALUES ('38', '唐狮高腰九分韩版显瘦直筒毛边阔腿裤 ', '119', '149', '1', '1', '1', '111', '32', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '185', '38', '42441', '11111', '1', '1');
INSERT INTO `goods` VALUES ('39', '现摘海南椰青9个装新鲜包邮当季水果', '76.8', '88.8', '1', '1', '1', '313', '3141', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '85', '61', '4234', '11111', '1', '1');
INSERT INTO `goods` VALUES ('40', '舒绸坊真丝蚕丝性感春秋家居服 ', '598', '669', '1', '1', '1', '22', '100', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '72', '64', '6464', '11111', '1', '1');
INSERT INTO `goods` VALUES ('41', '毛绒玩具', '29', '33', '1', '1', '1', '89', '27', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '74', '33', '7474', '11111', '1', '1');
INSERT INTO `goods` VALUES ('42', '4斤虾鲜活海鲜水产非青岛超大虾基围虾活虾青虾鲜虾白虾海虾冻虾', '129', '155', '1', '1', '1', '1333', '666', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '13', '60', '6456', '11111', '1', '1');
INSERT INTO `goods` VALUES ('43', '三顿饭冰鲜三文鱼腩刺身中段拼盘新鲜', '74.88', '88.8', '1', '1', '1', '8888', '765', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '13', '63', '76867', '11111', '1', '1');
INSERT INTO `goods` VALUES ('44', '优贝儿童自行车14/16/18寸男女孩童车', '1298', '1488', '1', '1', '1', '21', '200', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '75', '45', '75675', '11111', '1', '1');
INSERT INTO `goods` VALUES ('45', '德瑞鱼食锦鲤鱼饲料金鱼上浮育成小颗', '31', '39', '2', '1', '1', '999', '575', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '82', '62', '109991', '11111', '1', '1');
INSERT INTO `goods` VALUES ('46', '亲子装冬装2018新款潮全家装秋装一家', '75', '90', '1', '1', '1', '29', '19', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '47', '39', '131333', '11111', '1', '1');
INSERT INTO `goods` VALUES ('47', 'MIKIHOUSE日本制获奖款一二段学步', '729', '759', '1', '1', '1', '23', '50', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '50', '46', '14123', '11111', '1', '1');
INSERT INTO `goods` VALUES ('48', '蔬洋 小黄瓜圣女果新鲜包邮组合5斤水', '29.8', '39', '1', '1', '1', '88', '20', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '106', '62', '42341', '11111', '1', '1');
INSERT INTO `goods` VALUES ('49', 'belecoo贝丽可高景观婴儿推车可坐躺', '419', '459', '1', '1', '1', '21', '180', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '54', '55', '32423', '11111', '1', '1');
INSERT INTO `goods` VALUES ('50', 'bestborn宝宝保温奶瓶正品婴儿不锈钢', '79', '88', '1', '1', '1', '54', '22', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '57', '52', '43242', '11111', '1', '1');
INSERT INTO `goods` VALUES ('51', '德国海蒂诗气撑榻榻米橱柜上翻门液压', '19.9', '25', '1', '1', '1', '600', '66', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '93', '83', '43242', '11111', '1', '1');
INSERT INTO `goods` VALUES ('52', 'gb好孩子婴儿棉柔巾干湿两用宝宝湿纸', '198', '219', '1', '1', '1', '28', '50', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '62', '51', '12313', '11111', '1', '1');
INSERT INTO `goods` VALUES ('53', '全友家居沙发皮布沙发小户型经济型沙发组合现代简约沙发73018', '2499', '3999', '1', '1', '1', '300', '2000', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '90', '75', '12313', '11111', '1', '1');
INSERT INTO `goods` VALUES ('54', '宝贝第一太空城堡0-4-6岁可躺可坐宝', '1480', '1500', '1', '1', '1', '16', '150', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '56', '67', '13134', '11111', '1', '1');
INSERT INTO `goods` VALUES ('55', '德芙巧克力碗装纯黑牛奶礼盒装送女友', '23.9', '25', '1', '1', '1', '121', '32', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '193', '35', '131341', '11111', '1', '1');
INSERT INTO `goods` VALUES ('56', 'Aji酵母减盐味苏打饼干咸味饼干整箱批', '40.9', '43', '1', '1', '1', '20', '40', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '194', '64', '16546', '11111', '1', '1');
INSERT INTO `goods` VALUES ('57', '芝华仕头等舱功能沙发 单人沙发布艺 沙发客厅家具k106', '1499', '1699', '1', '1', '1', '700', '31231', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '90', '68', '1345', '11111', '1', '1');
INSERT INTO `goods` VALUES ('58', '满减【三只松鼠_夏威夷果185g】零食', '35.9', '38', '1', '1', '1', '57', '25', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '195', '56', '13145', '11111', '1', '1');
INSERT INTO `goods` VALUES ('59', '诺斯清生理盐水洗鼻水生理性海水鼻腔喷雾儿童喷雾海盐水洗鼻器', '59', '67', '1', '1', '1', '54', '14', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '170', '96', '43255', '11111', '1', '1');
INSERT INTO `goods` VALUES ('60', '拉菲红酒 拉菲官方正品原装瓶进口巴斯', '528', '528', '1', '1', '1', '200', '189', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '198', '73', '13134', '11111', '1', '1');
INSERT INTO `goods` VALUES ('61', '蔺酷雅后现代简约轻奢不锈钢茶几电视', '2500', '3233', '1', '1', '1', '470', '43232', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '93', '73', '114234', '11111', '1', '1');
INSERT INTO `goods` VALUES ('62', '清承堂绿茶2018新茶叶毛尖茶日照高山', '55', '67', '1', '1', '1', '204', '12', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '200', '62', '31213', '11111', '1', '1');
INSERT INTO `goods` VALUES ('63', '卧室成套家具套装组合简约现代小户型', '9900', '9999', '1', '1', '1', '666', '1888', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '95', '76', '14231', '11111', '1', '1');
INSERT INTO `goods` VALUES ('64', ' 美国进口dermatix倍舒痕胶祛疤膏贴去疤痕修复凝胶淡化伤疤澳洲', '105', '203', '1', '1', '1', '46', '16', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '171', '95', '131334', '11111', '1', '1');
INSERT INTO `goods` VALUES ('65', '10月伊利安慕希风味酸奶高端原味畅饮', '56', '89', '1', '1', '1', '121', '34', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '202', '54', '1314', '11111', '1', '1');
INSERT INTO `goods` VALUES ('66', '周林频谱仪ws-301家用理疗仪旗舰店多功能烤电烤灯保健治疗仪医用', '152', '204', '1', '1', '1', '54', '49', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '173', '50', '4141', '11111', '1', '1');
INSERT INTO `goods` VALUES ('67', '逸致钢化玻璃电视柜现代简约地柜小户', '2706', '2890', '1', '1', '1', '5353', '2500', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '94', '44', '11414', '11111', '1', '1');
INSERT INTO `goods` VALUES ('68', '买4省60元 蓓琳娜新货原装进口PDO特', '179', '199', '1', '1', '1', '54', '56', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '203', '55', '14114', '11111', '1', '1');
INSERT INTO `goods` VALUES ('69', '邦列安高效单体银抗菌凝胶慢性前列腺炎治疗男科尿频尿急尿不尽男', '402', '504', '1', '1', '1', '42', '46', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '175', '99', '13134', '11111', '1', '1');
INSERT INTO `goods` VALUES ('70', '雪龙瑞斯 五常稻花香米5KG 五常大米', '55', '69', '1', '1', '1', '34', '24', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '204', '68', '22421', '11111', '1', '1');
INSERT INTO `goods` VALUES ('71', '倍舒痕硅凝胶15g去疤痕进口疤痕手术修复凝胶膏祛疤膏淡化医用', '203', '304', '1', '1', '1', '82', '15', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '174', '97', '12432', '11111', '1', '1');
INSERT INTO `goods` VALUES ('72', '雅兰卧室套餐 舒伯特真皮床+深睡1200', '6599', '7000', '1', '1', '1', '4900', '3123', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '95', '43', '13145', '11111', '1', '1');
INSERT INTO `goods` VALUES ('73', '舒痕倍舒痕硅凝胶美国进口Dermatix疤痕修复淡疤伤疤膏淡化医用', '505', '664', '1', '1', '1', '56', '52', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '181', '98', '43534', '11111', '1', '1');
INSERT INTO `goods` VALUES ('74', '聚法丽莎欧式电视柜大理石茶几组合小户型客厅成套家具套装地柜G2', '2180', '2200', '1', '1', '1', '1333', '1314', '20190108\\6e07ebeafc58c8d811e7ca9903ca0010.jpg', '', '19', '34', '900', '11111', '1', '1');
INSERT INTO `goods` VALUES ('75', '进口丝芙康去疤痕贴剖腹产手术修复硅凝胶凹凸伤疤祛疤膏医用正品', '509', '769', '1', '1', '1', '15', '89', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '180', '96', '13423', '11111', '1', '1');
INSERT INTO `goods` VALUES ('76', 'One Leaf/一叶子 清颜净肤炭黑面膜 补', '129', '138', '1', '1', '1', '22', '31', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '150', '43', '13134', '11111', '1', '1');
INSERT INTO `goods` VALUES ('77', 'Dermatix倍舒痕美国进口祛疤膏医用去疤痕修复硅凝胶贴澳洲舒痕YM', '907', '1109', '1', '1', '1', '9', '48', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '173', '95', '32432', '11111', '1', '1');
INSERT INTO `goods` VALUES ('78', 'Nivea/妮维雅 男士净油精华抗痘洁面炭', '39.9', '42.9', '1', '1', '1', '79', '90', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '157', '52', '21312', '11111', '1', '1');
INSERT INTO `goods` VALUES ('79', '云南白药牙膏 去口臭美白口气清新缓解口腔 健齿护龈3+2套装535G  云南白药牙膏官方旗', '77', '79', '1', '1', '1', '332', '53', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '162', '34', '12312', '11111', '1', '1');
INSERT INTO `goods` VALUES ('80', '¥18.80 日本原装进口LION狮王儿童宝宝婴儿小', '17', '19.8', '1', '1', '1', '23', '22', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '163', '40', '43243', '11111', '1', '1');
INSERT INTO `goods` VALUES ('81', 'GIORGIO ARMANI/阿玛尼 寄情男士', '820', '850', '1', '1', '1', '21', '314', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '153', '59', '13124', '11111', '1', '1');
INSERT INTO `goods` VALUES ('82', 'LA MER/海蓝之谜 精萃液 高机能精华', '1100', '1199', '1', '1', '1', '23', '433', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '156', '61', '12313', '11111', '1', '1');
INSERT INTO `goods` VALUES ('83', 'Shiseido/资生堂 丝蓓绮发膜 ', '99', '199', '1', '1', '1', '222', '42', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '161', '54', '131233', '11111', '1', '1');
INSERT INTO `goods` VALUES ('84', '阿道夫 轻柔丝滑洗发乳液系列 ', '88', '89', '1', '1', '1', '889', '33', 'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg', '', '160', '76', '12343', '11111', '1', '1');
INSERT INTO `goods` VALUES ('140', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('141', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('142', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('143', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('144', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('145', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('146', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('147', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('148', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('149', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('150', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('151', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('152', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('153', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('154', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('155', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('156', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('157', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('158', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('159', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('160', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('161', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('162', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('163', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('164', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('165', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('166', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('167', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('168', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('169', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('170', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('171', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('172', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('173', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('174', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('175', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('176', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('177', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('178', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('179', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('180', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('181', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '1', null, '1', '1');
INSERT INTO `goods` VALUES ('182', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('183', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '76', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('184', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '0', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('185', '诺', '3010', '3612', null, '2', '1', null, null, null, null, '160', '32', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('186', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '0', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('187', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '0', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('188', 'sssss', '3010', '3612', null, '2', '1', null, null, null, null, '160', '31', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('189', 'bbbbb', '3010', '3612', null, '2', '1', null, null, null, null, '160', '0', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('190', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '0', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('191', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, '20190108\\6e07ebeafc58c8d811e7ca9903ca0010.jpg', null, '160', '0', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('192', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '160', '0', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('193', '为就得', '3010', '3612', null, '2', '1', null, null, null, null, '160', '29', '4', null, '1', '1');
INSERT INTO `goods` VALUES ('194', '诺基亚N85', '3010', '3612', null, '2', '1', null, null, null, null, '34', '32', '4', null, '1', '1');

-- ----------------------------
-- Table structure for order_goods
-- ----------------------------
DROP TABLE IF EXISTS `order_goods`;
CREATE TABLE `order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) DEFAULT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `order_sn` varchar(60) NOT NULL DEFAULT '',
  `buy_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `shop_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_goods
-- ----------------------------
INSERT INTO `order_goods` VALUES ('1', '1', '2', '2', '弘艺堂首饰盒木质公主欧式韩国 实木多', '201902280733507458', '1', '398.00');

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `order_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_status` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `order_pay_type` tinyint(2) DEFAULT NULL,
  `pay_status` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address_id` int(11) DEFAULT NULL,
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `postscript` varchar(255) NOT NULL DEFAULT '' COMMENT '订单附言',
  `shipping_id` tinyint(3) NOT NULL DEFAULT '0',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `pay_id` tinyint(3) NOT NULL DEFAULT '0',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `goods_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `money_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('1', '201902280733507458', '2', '1', '0', '1', '1', '', '0', '0', '0', '0', '1', '', '', '', '', '', '', '', '0', '', '1', '', '0.00', '0.00', '398.00', '1551339230', '0', '0', '0');

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `is_hot` tinyint(4) DEFAULT NULL,
  `is_show` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('14', 'zhan', '1', '3333', '2', '1');
INSERT INTO `shop` VALUES ('2', '1222', '1', '2222', '2', '1');
INSERT INTO `shop` VALUES ('3', '1222', '1', '2222', '1', '1');
INSERT INTO `shop` VALUES ('4', '5551222', '1', '2222', '2', '1');
INSERT INTO `shop` VALUES ('5', '1222', '1', '2222', '2', '1');
INSERT INTO `shop` VALUES ('7', '444w122277777', '1', '2222', '1', '1');
INSERT INTO `shop` VALUES ('8', '441222', '1', '2222', '1', '1');
INSERT INTO `shop` VALUES ('9', '777771222', '1', '2222', '2', '1');
INSERT INTO `shop` VALUES ('10', '6663333', '1', '4444', '1', '1');
INSERT INTO `shop` VALUES ('11', '3333', '1', '4444', '1', '1');
INSERT INTO `shop` VALUES ('12', '3ss22222', '1', '2222', '1', '1');
INSERT INTO `shop` VALUES ('13', '222444444', '1', '2222', '1', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `pwd` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', '13834942938', '1c63129ae9db9c60c3e8aa94d3e00495');

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `address_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `address_name` varchar(50) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_id` int(11) DEFAULT NULL,
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) NOT NULL DEFAULT '0',
  `province` smallint(5) NOT NULL DEFAULT '0',
  `city` smallint(5) NOT NULL DEFAULT '0',
  `district` smallint(5) NOT NULL DEFAULT '0',
  `address` varchar(120) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `is_del` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_address
-- ----------------------------
INSERT INTO `user_address` VALUES ('1', '1111', '2', '1', '', '', '0', '0', '0', '0', '1111', '', '', '1111', '1211', '', '1', '0');
INSERT INTO `user_address` VALUES ('2', '22222', '2', null, '', '', '0', '0', '0', '0', '2222', '', '', '22222', '22222', '', '0', '0');
