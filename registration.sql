-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: registration
-- ------------------------------------------------------
-- Server version	5.7.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `name` varchar(10) NOT NULL,
  `department` varchar(20) NOT NULL,
  `direction` varchar(200) NOT NULL,
  `volume` tinyint(4) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES ('丁文惠','内科','冠心病、心绞痛、心肌梗塞、心脏瓣膜病及各种原因导致的心力衰竭',0),('严园','妇产科','妇科炎症，肿瘤，不孕不育，宫颈炎，妇科内分泌等，产科常见病，多发病等',0),('何岚','代谢病科','糖尿病，甲状腺，肥胖及高血压等内分泌代谢病的临床和研究工作',0),('冀秋娣','代谢病科','擅长心律失常，高血压病，血脂异常的诊治；心室重构的防治和心功能的保护；以及心血管病急症的救治和疑难危重医学病症的诊治。',0),('华桂茹','康复医学科','物理治疗康复，以光因子治疗急性软组织感染，颈椎病',0),('单希征','五官科','头颈重大手术，尤其擅长头颈部重大手术和眩晕病的诊断治疗',0),('卢军','妇产科','围产医学；高危妊娠，妊娠期并发症',0),('吴沪生','康复医学科','小儿癫痫，小儿神经常见病，神经肌肉病，发作性睡病，急性多发性神经根炎',0),('周庆华','外科','胸部肿瘤外科治疗；肺癌多学科综合治疗；肺癌分子生物学',0),('庄启超','内科','妊娠合并普内科疾病的诊治，心血管疾病的诊治及内科危重症的抢救',0),('张榕','五官科','耳聋、眩晕、鼻变态反应以及人工耳蜗植入',0),('张秋月','儿科','擅长儿科急危病症的抢救及儿科常见病与多发病的诊治',0),('方青','中医科','脾胃病、肿瘤及月经不调病见长',0),('曹华','五官科','呼吸系统肿瘤、慢性支气管炎、阻塞性肺气肿及慢性肺心病的诊断与治疗帕金森氏病',0),('朱丽萍','精神心理科','精神分裂症、心理障碍和神经症的治疗以及各种心理问题的咨询',0),('李任','整形美容科','韩式眼、鼻综合整形；乳房综合整形；吸脂塑形；非手术注射美容；自体脂肪移植；下巴立体整形；激光美容',0),('李民','内科','心脑血管疾病，特别是呼吸系统、慢性阻塞性肺病、肺心病、支气管哮喘、痛风、肾炎、肾病综合症、冠心病、高血压、糖尿病、各种神经性头痛、神经衰弱、精神疾病的诊断与治疗。',0),('李秀英','中医科','脾胃病，中医治疗老年病，中风后遗症等慢性内科杂症',0),('李芙蓉','妇产科','治疗女性输卵管阻塞、子宫腔粘连、无排卵、卵巢囊肿、子宫肌瘤、免疫性不孕不育',0),('李茂旭','皮肤性病科','常见皮肤病及性传播疾病、急慢性前列腺炎皮肤科是我院开展的特色专科',0),('杜立中','儿科','儿内科尤其是新生儿疾病诊治及危重病人的抢救和监护',0),('杨玉华','外科','普通外科、肝胆外科方面，腹腔镜系列手术',0),('杨睿','精神心理科','抑郁症、焦虑症、神经症、精神分裂症、躯体疾病伴发的精神障碍、睡眠障碍、精神活性物质导致的精神障碍等',0),('梁季鸿','男科','不孕不育、性功能障碍、性病及生殖器官感染、性教育。性咨询',0),('江建宁','传染科','肝脏病。床染病、寄生虫病的诊治以及腹部B超的诊断、B超引导肝穿刺技术',0),('沈周俊','男科','泌尿、肾上腹腔镜治疗，男科疾病，尿失禁',0),('牛京育','精神心理科','成人及儿童心理问题与各种神竞争性心理障碍、各种事硬障碍、慢性疲劳综合征、关注精神疾病的心理康复',0),('王俊卿','康复医学科','颈椎病、头疼、头晕',0),('王家怀','皮肤性病科','国内率先从白癜风致病源头“血液”和根本“脏腑”同步整体、个性化治疗，取得了突出成就',0),('王春崎','男科','治疗肾、输尿管、膀胱结石、肿瘤、畸形等，尤其对男科疾病的诊断及治疗',0),('白莉','皮肤性病科','皮肤病及性病的临床诊断及治疗',0),('程庆书','外科','食管、肺、气管外科',0),('肖新民','男科','泌尿外科常见疾病',0),('舒琦瑾','肿瘤科','肺癌、肝癌等肿瘤的微创诊断和治疗，在胃癌、肠癌、乳腺癌等常见肿瘤中西医结合治疗',0),('范先群','五官科','眼部整形、眼部美容、眼眶外伤、眼底病',0),('范学工','传染科','病毒性肝炎、颅内感染、发热待查等传染病的诊治',0),('詹锋','中医科','胃肠病及老年虚症',0),('赵俊伟','整形美容科','手外伤修复、断指再值、各种创伤的皮瓣修复整形术；熟练掌握四肢畸形矫正、功能重建及四肢骨、神经、血管',0),('邱晓兰','精神心理科','情感性精神障碍、性心理障碍、酒依赖以及各种精神障碍',0),('郭凤婵','妇产科','子宫肌瘤、卵巢肿瘤、宫颈癌、子宫内膜癌、葡萄胎、绒癌、不孕不育手术',0),('金武男','肿瘤科','擅长各种肿瘤的微创诊断和治疗恶性肿瘤个体化治疗',0),('陈亦乐','肿瘤科','擅长妇科恶性肿瘤的各种手术、化疗、放疗，主攻微创治疗',0),('陈振相','中医科','心脑血管病及疑难杂症的诊治，在中医养生保健方面极具特色，积累了丰富的经验',0),('陈新月','传染科','慢性肝炎抗病毒治疗临床处理及机制研究，尤其对于难治性慢性乙肝、丙性肝炎的诊断治疗',0),('陈新瑜','传染科','心脑血管疾病、肺系疾病、消化系统、肝系疾病',0),('陈春红','康复医学科','小儿癫痫病。脑电图分析',0),('陈谦学','外科','脑创伤外科、肿瘤外科、脊髓外科、脑血管病外科和癫痫外科，颅内动脉瘤',0),('雷安萍','皮肤性病科','擅长针对白癜风的源头血液和根本脏腑进行同步整体、个性化治疗',0),('韩明华','内科','重症、疑难杂症及心律失常的诊治',0),('马京琪','儿科','小儿呼吸道疾病、反复呼吸道感染的防治',0),('马越波','整形美容科','面部轮廓整形、眼、鼻、下颚美容、个性化隆胸、自体脂肪移植隆胸、微创吸脂塑形、会阴部整形修复、先天性缺陷的修复',0),('鲍一笑','儿科','儿童哮喘及呼吸系统疾病',0),('黄丽萍','肿瘤科','在临床实践中对肿瘤放射治疗及乳腺癌的综合治疗具有丰富经验',0),('黄渭清','整形美容科','面瘫、除皱、眼、鼻、耳、颌整形、隆胸、垂乳及腹壁松弛整形、乳房再造；吸脂；唇腭裂，外阴、手整形；体表肿瘤斑痣，顽固疤痕、软组织扩张',0);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `id` varchar(18) NOT NULL,
  `name` varchar(15) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `age` tinyint(3) unsigned NOT NULL,
  `tel` varchar(13) NOT NULL,
  `description` varchar(200) NOT NULL,
  `urdoctor` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-05 22:21:23
