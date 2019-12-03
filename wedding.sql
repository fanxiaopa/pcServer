/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.0.18-nt : Database - wedding
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wedding` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wedding`;

/*Table structure for table `articles` */

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `aid` int(11) NOT NULL,
  `art_head` varchar(128) default NULL,
  `art_author` varchar(128) default NULL,
  `phase1` varchar(128) default NULL,
  `phase2` varchar(128) default NULL,
  `phase3` varchar(128) default NULL,
  `phase4` varchar(128) default NULL,
  `artImg1` varchar(128) default NULL,
  `artImg2` varchar(128) default NULL,
  `artImg3` varchar(128) default NULL,
  `artImg4` varchar(128) default NULL,
  `artImg5` varchar(128) default NULL,
  `artImg6` varchar(128) default NULL,
  `artImg7` varchar(128) default NULL,
  `artImg8` varchar(128) default NULL,
  `artImg9` varchar(128) default NULL,
  `artImg10` varchar(128) default NULL,
  PRIMARY KEY  (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `articles` */

insert  into `articles`(`aid`,`art_head`,`art_author`,`phase1`,`phase2`,`phase3`,`phase4`,`artImg1`,`artImg2`,`artImg3`,`artImg4`,`artImg5`,`artImg6`,`artImg7`,`artImg8`,`artImg9`,`artImg10`) values (1,'关于婚礼的所有期待，它都帮我实现了!','2019-11-01 文/W 图片提供/VIA唯然婚礼机构','海边，是我对婚礼最开始的期待','Orange，期望给你明亮的心情','我们来拉勾勾，大人不许骗小孩呦','氛围感、体验感兼具的晚宴','articlesImg/a1.jpg','articlesImg/a2.jpg','articlesImg/a3.jpg','articlesImg/a4.jpg','articlesImg/a5.jpg','articlesImg/a6.jpg','articlesImg/a7.jpg','articlesImg/a8.jpg','articlesImg/a9.jpg','articlesImg/a10.jpg'),(2,'2019亚洲婚礼风尚盛典 | 于优雅奢华中体现设计感！看爱享如何为瑰丽量身定制……','2019-10-31 文/Adam 图片提供/三亚保利瑰丽酒店、LoveShare爱享',' LoveShare爱享','三亚保利瑰丽酒店',' 设计理念','LoveShare爱享的slogan','articlesImg/a2_1.jpg','articlesImg/a2_2.jpg','articlesImg/a2_3.jpg','articlesImg/a2_4.jpg','articlesImg/a2_5.jpg','articlesImg/a2_6.jpg','articlesImg/a2_7.jpg','articlesImg/a2_8.jpg',NULL,NULL),(3,'她们做的中式嫁衣有多美，引得电视台来采访……','2019-10-28 文/Adam 图/真水无香',NULL,NULL,NULL,NULL,'articlesImg/a3_1.jpg','articlesImg/a3_2.jpg','','','','','',NULL,NULL,NULL),(4,'放飞自我的好方式莫过遨游于海洋，回归于自然','2019-10-29 文/百百 图片提供/T-Photo_Studios',NULL,NULL,NULL,NULL,'articlesImg/a4_1.gif','articlesImg/a4_2.gif','articlesImg/a4_3.jpg','articlesImg/a4_4.jpg','articlesImg/a4_5.jpg','articlesImg/a4_6.gif','articlesImg/a4_7.jpg','articlesImg/a4_8.jpg',NULL,NULL);

/*Table structure for table `courselimg` */

DROP TABLE IF EXISTS `courselimg`;

CREATE TABLE `courselimg` (
  `id` int(11) NOT NULL,
  `imgUrl` varchar(128) default NULL,
  `title` varchar(64) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `courselimg` */

insert  into `courselimg`(`id`,`imgUrl`,`title`) values (0,'courselImg/c1Top1.jpg','轮播图1'),(1,'courselImg/c1Top2.jpg','轮播图1'),(2,'courselImg/c1Top3.jpg','轮播图1'),(3,'courselImg/c1Top4.jpg','轮播图1'),(4,'courselImg/c1Top5.jpg','轮播图1'),(5,'courselImg/c1Top6.jpg','轮播图1'),(6,'courselImg/c1Thumb1.jpg','轮播图1下的缩略图'),(7,'courselImg/c1Thumb2.jpg','轮播图1下的缩略图'),(8,'courselImg/c1Thumb3.jpg','轮播图1下的缩略图'),(9,'courselImg/c1Thumb4.jpg','轮播图1下的缩略图'),(10,'courselImg/c1Thumb5.jpg','轮播图1下的缩略图'),(11,'courselImg/c1Thumb6.jpg','轮播图1下的缩略图'),(12,'courselImg/c2_1.jpg','轮播图2'),(13,'courselImg/c2_2.jpg','轮播图2'),(14,'courselImg/c2_3.jpg','轮播图2'),(15,'courselImg/info1.jpg','information页面下的轮播'),(16,'courselImg/info2.jpg','information页面下的轮播'),(17,'courselImg/info3.jpg','information页面下的轮播'),(18,'courselImg/info4.jpg','information页面下的轮播');

/*Table structure for table `otherimg` */

DROP TABLE IF EXISTS `otherimg`;

CREATE TABLE `otherimg` (
  `id` int(11) NOT NULL,
  `imgUrl` varchar(128) default NULL,
  `title` varchar(64) default NULL,
  `info_head` varchar(128) default NULL,
  `info_author` varchar(128) default NULL,
  `info_content` varchar(128) default NULL,
  `a` varchar(128) default NULL,
  `fengmian` varchar(128) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `otherimg` */

insert  into `otherimg`(`id`,`imgUrl`,`title`,`info_head`,`info_author`,`info_content`,`a`,`fengmian`) values (0,'navBarImg/navBar1.jpg','首页导航栏右侧图片',NULL,NULL,NULL,NULL,NULL),(1,'navBarImg/navBar2.jpg','婚礼图片导航栏右侧图片',NULL,NULL,NULL,NULL,NULL),(2,'navBarImg/navBar3.jpg','婚礼视频导航栏右侧图片',NULL,NULL,NULL,NULL,NULL),(3,'navBarImg/navBar4.jpg','婚礼人导航栏右侧图片',NULL,NULL,NULL,NULL,NULL),(4,'infoImg/banner1.jpg','information板块Banner大图',NULL,NULL,NULL,NULL,NULL),(5,'infoImg/banner2.jpg','information板块Banner大图',NULL,NULL,NULL,NULL,NULL),(6,'infoImg/article1.jpg','information板块文章图','真实婚礼|看完别人家的求婚，我变成了柠檬精，开启暴风哭泣','文/小爬 图片提供/皇后婚礼策划','L小姐和W先生的婚礼主题是《落日沙漠》，光看名字就很有画面感了。在看了他们的婚礼故事之后，小编变成了柠檬精（酸了），嘤嘤嘤 ……',NULL,NULL),(7,'infoImg/article2.jpg','information板块文章图','真实婚礼|一支舞在吉隆坡，爱始于伦敦的FIRST DANCE','文/Val 图片提供/千百合婚礼顾问','FIRST DANCE，两位新人执起对方的手，绕圈、拥抱、起舞，眼中只有彼此，笑着迎来崭新的开始。',NULL,NULL),(8,'infoImg/article3.jpg','information板块文章图','真实婚礼|驯龙高手的爱情，莫名惹人心动','文/Sheri 图片提供/Lomo岚茉婚礼','如果说人生是一个圆，那么他们的爱情是人生的一组内切圆，一个人生包围着另一个人的人生，却再无多余的交集。其中的回忆，没有伤害，只有美丽。',NULL,NULL),(9,'infoImg/article4.jpg','information板块文章图','真实婚礼|于天气变化时瞬间完成一场婚礼搭建，此时我们带爱他和她','文/百百 图片提供/伯妮婚礼策划机构','从杭州到曼谷，是一场蓄谋已久的惊喜婚礼。从“他俩”的小家到我们“大家”，是一次关于爱的热忱体验。',NULL,NULL),(10,'infoImg/article5.jpg','information板块文章图','行业快报|[神说，要有光]这场满目橙意的婚礼秀，带你体验爱的未来式','图文提供/品诚创意婚礼','在这满目橙意的秋日里，当经典融合跳跃，繁复邂逅纯粹，一场时尚复古的诚之盛宴就此拉开帷幕',NULL,NULL),(11,'infoImg/article6.jpg','information板块文章图','真实婚礼 | 于天气变幻时瞬间完成一场婚礼搭建，彼时我们都爱他和他',' 文/百百 图片提供/伯妮婚礼策划机构','从杭州到曼谷，是一场蓄谋已久的惊喜婚礼。从“他俩”的小家到我们“大家”，是一次关于爱的热忱体验。',NULL,NULL),(12,'weddingPhoto/banner1.jpg','weddingPhoto板块Banner大图','Glorious Moment',NULL,'Wonderful Days婚礼定制',NULL,NULL),(13,'weddingPhoto/banner2.jpg','weddingPhoto板块Banner大图','与君赋',NULL,'牵手婚礼',NULL,NULL),(14,'weddingPhoto/banner3.jpg','weddingPhoto板块Banner大图','为爱加冕',NULL,'CHOCO-婚礼（四川）',NULL,NULL),(15,'weddingPhoto/photo1.jpg','weddingPhoto板块小图','Gravition',NULL,'伯尼婚礼策划',NULL,NULL),(16,'weddingPhoto/photo3.jpg','weddingPhoto板块小图','画中影',NULL,'LoveShare爱享',NULL,NULL),(17,'weddingPhoto/photo4.jpg','weddingPhoto板块小图','简洁北欧风',NULL,'也地婚商',NULL,NULL),(18,'weddingPhoto/photo5.jpg','weddingPhoto板块小图','蝴蝶的时间',NULL,'CHOCO-婚礼',NULL,NULL),(19,'weddingPhoto/photo6.jpg','weddingPhoto板块小图','酒厂的神雕侠侣',NULL,'未来式婚礼',NULL,NULL),(20,'weddingPhoto/photo7.jpg','weddingPhoto板块小图','爱旅',NULL,'婚礼记',NULL,NULL),(21,'weddingPhoto/photo8.jpg','weddingPhoto板块小图','爱之原动力',NULL,'品创原婚礼',NULL,NULL),(22,'weddingPhoto/photo9.jpg','weddingPhoto板块小图','环游世界',NULL,'Nice喜庆婚礼',NULL,NULL),(23,'weddingVideo/photo1.jpg','weddingVideo板块轮播图','海南雅居乐莱佛士酒店',NULL,NULL,'https://cdn-oa-qcloud.jiahewushe.com/video-output/%E5%96%BB%E9%9C%96%20%E7%BC%96%E8%88%9E%20Best%20Part_720.mp4','weddingVideo/v1.jpg'),(24,'weddingVideo/photo2.jpg','weddingVideo板块轮播图','致吾爱 | 境',NULL,NULL,'https://cdn-oa-qcloud.jiahewushe.com/video/%E6%A1%82%E8%95%BE%20%E9%92%B0%E6%B5%A0%20%E8%80%B3%E6%9C%B5.mp4','weddingVideo/v2.jpg'),(25,'weddingVideo/photo3.jpg','weddingVideo板块轮播图','2019亚洲婚礼风尚盛典SAY HELLO',NULL,NULL,'https://cdn-oa-qcloud.jiahewushe.com/video-output/音之 Move_720.mp4','weddingVideo/v3.jpg'),(26,'weddingVideo/photo4.jpg','weddingVideo板块轮播图','2009-2019婚礼风尚',NULL,NULL,'https://cdn-oa-qcloud.jiahewushe.com/video/%E5%96%BB%E9%9C%96%20%E7%BB%B5%E7%BB%B5%20%E7%BC%96%E8%88%9EBoyfriend.mp4','weddingVideo/v4.jpg'),(27,'weddingVideo/photo5.jpg','weddingVideo板块轮播图','2019亚洲婚礼风尚盛典| 开幕式',NULL,NULL,'https://cdn-oa-qcloud.jiahewushe.com/video/%E9%95%81%E9%95%81%20Suffer%201018.mp4','weddingVideo/v5.jpg'),(28,'infoPhoto/info1.jpg','infomation子网页图片列表','真实婚礼|看完别人家的求婚，我变成了柠檬精，开启暴风哭泣','文/小爬 图片提供/皇后婚礼策划','未来式婚礼',NULL,NULL),(29,'infoPhoto/info2.jpg','infomation子网页图片列表','真实婚礼|一支舞在吉隆坡，爱始于伦敦的FIRST DANCE',' 文/百百 图片提供/伯妮婚礼策划机构','品创原婚礼',NULL,NULL),(30,'infoPhoto/info3.jpg','infomation子网页图片列表','行业快报|[神说，要有光]这场满目橙意的婚礼秀，带你体验爱的未来式','文/Sheri 图片提供/Lomo岚茉婚礼','CHOCO-婚礼',NULL,NULL),(31,'infoPhoto/info4.jpg','infomation子网页图片列表','行业快报|[神说，要有光]这场满目橙意的婚礼秀，带你体验爱的未来式','文/Val 图片提供/千百合婚礼顾问','婚礼记',NULL,NULL),(32,'infoPhoto/event1.jpg','Weddingvogue Event板块','风尚大片|放飞自我的好方式莫过于遨游于海洋，回归于自然','文/Val 图片提供/千百合婚礼顾问','婚礼记',NULL,NULL),(33,'infoPhoto/event2.jpg','Weddingvogue Event板块','风尚大片|《界》：打破边界，探索内心','文/小爬 图片提供/皇后婚礼策划','品创原婚礼',NULL,NULL),(34,'infoPhoto/event3.jpg','Weddingvogue Event板块','风尚活动|【2019婚礼风尚影像节】巨幕之下 映像未来',' 文/百百 图片提供/伯妮婚礼策划机构','品创原婚礼',NULL,NULL),(35,'infoPhoto/eventBanner.jpg','Weddingvogue Event板块大图',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `uname` varchar(32) NOT NULL,
  `upwd` varchar(32) NOT NULL,
  `uphone` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`uname`,`upwd`,`uphone`) values (1,'范小爬','66780c4d55c3c8816860c826aeb1211f','13036592025'),(11,'cheney','e10adc3949ba59abbe56e057f20f883e','13036592026'),(13,'李静','c33367701511b4f6020ec61ded352059','13036591234'),(14,'你好静李','827ccb0eea8a706c4c34a16891f84e7b','1437660887');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
