-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016 年 05 月 26 日 01:23
-- 服务器版本: 5.5.24-log
-- PHP 版本: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `onlinetest`
--
CREATE DATABASE `onlinetest` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `onlinetest`;

-- --------------------------------------------------------

--
-- 表的结构 `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(32) NOT NULL,
  `student_id` varchar(8) NOT NULL,
  `user` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- 转存表中的数据 `account`
--

INSERT INTO `account` (`id`, `class_name`, `student_id`, `user`, `password`) VALUES
(1, '软件1509', '99999999', '99999999', '999'),
(2, '软件1509', '07150931', '林晓畅', '123456789'),
(3, '软件1509', '07150912', '韩小平', '123456'),
(4, '软件1509', '07150940', '谢永安', '456123'),
(5, '软件1509', '07150929', '林丽丽', '123'),
(6, '软件1509', '07150903', '陈俊桓', '123456'),
(7, '软件1509', '07150934', '罗伟龙', '123456'),
(8, '软件1509', '07150905', '陈少芳', '123'),
(9, '软件1509', '07150919', '黄吴丰', '08293133'),
(10, '软件1509', '07150920', '黄学', '12345'),
(11, '软件1509', '07150950', '钟毅昌', 'q348547495'),
(12, '软件1509', '07150917', '黄厚亿', '66666666'),
(13, '软件1509', '07150941', '徐佳彬', '123456'),
(14, '软件1509', '07150913', '何柏立', '321321'),
(15, '软件1509', '07150902', '陈桦沐', '482256'),
(16, '软件1509', '07150944', '叶国锋', '123456'),
(17, '软件1509', '07150921', '黄英泰', '07150921'),
(18, '软件1509', '07150945', '叶锦秀', '2282545318'),
(19, '软件1509', '07150928', '林楷漾', '123456'),
(20, '软件1509', '07150936', '谭金辉', '123456'),
(21, '软件1509', '07150942', '许锋涛', '5565245'),
(22, '软件1509', '07150901', '蔡晓冲 ', '123456'),
(23, '软件1509', '07150910', '傅锡火', '06608245859.'),
(25, '软件1509', '07150909', '方旭南', 'q101010'),
(27, '软件1509', '07150922', '赖群琳', '123456'),
(28, '软件1509', '07150925', '林佳伟', '07150925'),
(29, '软件1509', '07150923', '李家源', '123456'),
(30, '软件1509', '07150939', '伍锦辉', '07150939'),
(31, '软件1509', '07150949', '郑晓文', '123'),
(32, '软件1509', '07150926', '林俊炜', '123456'),
(33, '软件1509', '07150915', '何梓辉', '1'),
(34, '软件1509', '07150907', '陈子浩', 'sml08067'),
(35, '软件1509', '07150938', '吴锡江', '111'),
(36, '软件1509', '07150948', '郑鸿清', '12345'),
(37, '软件1509', '07150935', '马志斌', '970206'),
(38, '软件1509', '07150924', '梁家言 ', '123456'),
(39, '软件1506', '07150943', '杨壮', '07150943'),
(40, '软件1509', '07150904', '陈康锦', '123456'),
(42, '软件1509', '07150906', '陈义坤', '123123'),
(43, '软件1509', '07150930', '林鹏浩', '1'),
(44, '软件1509', '07150947', '赵家宽', '110725'),
(45, '软件1506', '07150932', '林雨明', '123456789'),
(46, '软件1509', '07150937', '屠一鸣', '123456'),
(47, '软件1509', '07150914', '何建强', '131214hjq'),
(49, '软件1509', '07150908', '邓志东', '123456'),
(53, '软件1509', '07150916', '洪保绍', '123456'),
(67, '软件1509', '07150946', '余思庆', '01183835'),
(68, '软件1509', '07150918', '黄锦龙', 'hjl1440013637'),
(70, '软件1509', '07150927', '林凯鑫', '08281692'),
(71, '软件1509', '07150933', '罗嘉豪', '123456'),
(72, '软件1509', '07150911', '郭钟材', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `scores`
--

CREATE TABLE IF NOT EXISTS `scores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` varchar(8) NOT NULL,
  `user` varchar(32) NOT NULL,
  `subject` varchar(32) NOT NULL,
  `test_time` char(22) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=122 ;

--
-- 转存表中的数据 `scores`
--

INSERT INTO `scores` (`id`, `student_id`, `user`, `subject`, `test_time`, `score`) VALUES
(64, '07150915', '何梓辉', 'php和mysql web应用开发', '2016-05-26 08:51:37', 108),
(65, '07150940', '谢永安', 'php和mysql web应用开发', '2016-05-26 08:52:40', 102),
(66, '07150922', '赖群琳', 'php和mysql web应用开发', '2016-05-26 08:52:58', 108),
(67, '07150913', '何柏立', 'php和mysql web应用开发', '2016-05-26 08:53:29', 104),
(68, '07150909', '方旭南', 'php和mysql web应用开发', '2016-05-26 08:54:55', 109),
(69, '07150930', '林鹏浩', 'php和mysql web应用开发', '2016-05-26 08:55:01', 96),
(71, '07150903', '陈俊桓', 'php和mysql web应用开发', '2016-05-26 08:55:18', 108),
(72, '07150901', '蔡晓冲 ', 'php和mysql web应用开发', '2016-05-26 08:55:44', 100),
(73, '07150928', '林楷漾', 'php和mysql web应用开发', '2016-05-26 08:55:50', 107),
(74, '07150939', '伍锦辉', 'php和mysql web应用开发', '2016-05-26 08:56:31', 99),
(75, '07150937', '屠一鸣', 'php和mysql web应用开发', '2016-05-26 08:56:44', 109),
(76, '07150942', '许锋涛', 'php和mysql web应用开发', '2016-05-26 08:56:56', 106),
(77, '07150949', '郑晓文', 'php和mysql web应用开发', '2016-05-26 08:57:09', 106),
(78, '07150907', '陈子浩', 'php和mysql web应用开发', '2016-05-26 08:57:44', 109),
(79, '07150932', '林雨明', 'php和mysql web应用开发', '2016-05-26 08:57:55', 109),
(80, '07150950', '钟毅昌', 'php和mysql web应用开发', '2016-05-26 08:58:02', 101),
(81, '07150945', '叶锦秀', 'php和mysql web应用开发', '2016-05-26 08:58:19', 110),
(83, '07150931', '林晓畅', 'php和mysql web应用开发', '2016-05-26 08:58:25', 104),
(84, '07150904', '陈康锦', 'php和mysql web应用开发', '2016-05-26 08:58:45', 104),
(85, '07150938', '吴锡江', 'php和mysql web应用开发', '2016-05-26 08:59:08', 110),
(86, '07150948', '郑鸿清', 'php和mysql web应用开发', '2016-05-26 08:59:13', 107),
(87, '07150905', '陈少芳', 'php和mysql web应用开发', '2016-05-26 08:59:24', 109),
(89, '07150911', '郭钟材', 'php和mysql web应用开发', '2016-05-26 08:59:51', 104),
(90, '07150921', '黄英泰', 'php和mysql web应用开发', '2016-05-26 09:00:33', 106),
(91, '07150914', '何建强', 'php和mysql web应用开发', '2016-05-26 09:00:56', 97),
(92, '07150929', '林丽丽', 'php和mysql web应用开发', '2016-05-26 09:00:57', 110),
(93, '07150925', '林佳伟', 'php和mysql web应用开发', '2016-05-26 09:01:09', 104),
(94, '07150934', '罗伟龙', 'php和mysql web应用开发', '2016-05-26 09:01:26', 109),
(95, '07150902', '陈桦沐', 'php和mysql web应用开发', '2016-05-26 09:01:56', 94),
(97, '07150910', '傅锡火', 'php和mysql web应用开发', '2016-05-26 09:02:03', 105),
(98, '07150935', '马志斌', 'php和mysql web应用开发', '2016-05-26 09:02:32', 106),
(99, '07150918', '黄锦龙', 'php和mysql web应用开发', '2016-05-26 09:02:34', 104),
(100, '07150926', '林俊炜', 'php和mysql web应用开发', '2016-05-26 09:03:08', 99),
(101, '07150920', '黄学', 'php和mysql web应用开发', '2016-05-26 09:04:25', 110),
(103, '07150908', '邓志东', 'php和mysql web应用开发', '2016-05-26 09:04:50', 108),
(104, '07150912', '韩小平', 'php和mysql web应用开发', '2016-05-26 09:04:54', 106),
(105, '07150923', '李家源', 'php和mysql web应用开发', '2016-05-26 09:05:48', 99),
(106, '07150936', '谭金辉', 'php和mysql web应用开发', '2016-05-26 09:06:33', 110),
(108, '07150933', '罗嘉豪', 'php和mysql web应用开发', '2016-05-26 09:07:26', 80),
(109, '07150946', '余思庆', 'php和mysql web应用开发', '2016-05-26 09:08:25', 108),
(110, '07150927', '林凯鑫', 'php和mysql web应用开发', '2016-05-26 09:08:46', 103),
(111, '07150917', '黄厚亿', 'php和mysql web应用开发', '2016-05-26 09:09:32', 95),
(112, '07150947', '赵家宽', 'php和mysql web应用开发', '2016-05-26 09:11:33', 107),
(113, '07150919', '黄吴丰', 'php和mysql web应用开发', '2016-05-26 09:14:05', 107),
(114, '07150916', '洪保绍', 'php和mysql web应用开发', '2016-05-26 09:15:32', 85),
(115, '07150916', '洪保绍', 'php和mysql web应用开发', '2016-05-26 09:15:32', 85),
(116, '07150916', '洪保绍', 'php和mysql web应用开发', '2016-05-26 09:15:34', 85),
(117, '07150916', '洪保绍', 'php和mysql web应用开发', '2016-05-26 09:15:35', 85),
(118, '07150944', '叶国锋', 'php和mysql web应用开发', '2016-05-26 09:18:14', 100),
(119, '07150941', '徐佳彬', 'php和mysql web应用开发', '2016-05-26 09:19:26', 107),
(120, '07150924', '梁家言 ', 'php和mysql web应用开发', '2016-05-26 09:20:22', 102),
(121, '07150943', '杨壮', 'php和mysql web应用开发', '2016-05-26 09:22:44', 85);

-- --------------------------------------------------------

--
-- 表的结构 `test_admin`
--

CREATE TABLE IF NOT EXISTS `test_admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `test_admin`
--

INSERT INTO `test_admin` (`adminid`, `adminname`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- 表的结构 `test_choice`
--

CREATE TABLE IF NOT EXISTS `test_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `choice` varchar(100) NOT NULL DEFAULT '',
  `extends` int(11) DEFAULT '0',
  `IsDefault` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `choice` (`choice`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4213 ;

--
-- 转存表中的数据 `test_choice`
--

INSERT INTO `test_choice` (`id`, `choice`, `extends`, `IsDefault`) VALUES
(3685, '[break]语句可以没有', 923, NULL),
(3686, '[default]语句可以没有', 923, NULL),
(3687, '[break]语句不可以没有', 923, NULL),
(3688, '[default]语句不可以没有', 923, NULL),
(3689, '$inta=$inta+3', 924, NULL),
(3690, '$inta+=3', 924, NULL),
(3691, '$inta=$inta-(-3)', 924, NULL),
(3692, '$inta--3\r\n', 924, NULL),
(3693, 'describe表名可以简写为desc表名', 925, NULL),
(3694, 'mysql也可以从dos窗口启动', 925, NULL),
(3695, 'mysql默认安装的数据库有三个', 925, NULL),
(3696, 'mysql最重要的数据库是test数据库\r\n', 925, NULL),
(3697, '[string]', 926, NULL),
(3698, '[int]', 926, NULL),
(3699, '[boolean]', 926, NULL),
(3700, '[object]', 926, NULL),
(3701, 'drop可以删除数据库', 927, NULL),
(3702, 'drop可以删除表', 927, NULL),
(3703, 'drop可以删除表中的某条数据', 927, NULL),
(3704, '以上说法都正确\r\n', 927, NULL),
(3705, 'fopen()', 928, NULL),
(3706, 'opendir()', 928, NULL),
(3707, 'fclose()', 928, NULL),
(3708, 'closedir()\r\n', 928, NULL),
(3709, '类要用class关键字声明后面跟类名', 929, NULL),
(3710, '类体要用一对{}括起来', 929, NULL),
(3711, '类体要用一对()括起来', 929, NULL),
(3712, '类体要用一对[]括起来\r\n', 929, NULL),
(3713, '[0-9]', 930, NULL),
(3714, '[0123456789]', 930, NULL),
(3715, 'd{1}', 930, NULL),
(3716, 'w{1}\r\n', 930, NULL),
(3717, 'mysql在安装时默认端口号为3306', 931, NULL),
(3718, 'mysql在安装时默认字符集为latin1', 931, NULL),
(3719, 'mysql在安装成功以后启动mysql要输入密码', 931, NULL),
(3720, 'mysql在安装成功以后启动mysql不需要输入密码\r\n', 931, NULL),
(3721, '输出PHP变量包括字符串', 932, NULL),
(3722, '相当于JavaScript语言中的document.write()函数', 932, NULL),
(3723, '相当于JavaScript语言中的window.alert()函数', 932, NULL),
(3724, '可以在网页上弹出一个警告框\r\n', 932, NULL),
(3725, 'mysql', 933, NULL),
(3726, 'test', 933, NULL),
(3727, 'information_schema', 933, NULL),
(3728, 'sanguo\r\n', 933, NULL),
(3729, '===', 934, NULL),
(3730, '!=', 934, NULL),
(3731, '&lt;&gt;', 934, NULL),
(3732, '&lt;&lt;&lt;\r\n', 934, NULL),
(3733, '[text]', 935, NULL),
(3734, '[password]', 935, NULL),
(3735, '[radio]', 935, NULL),
(3736, '[textarea]', 935, NULL),
(3737, 'fgets()', 936, NULL),
(3738, 'fgetss()', 936, NULL),
(3739, 'fopen()', 936, NULL),
(3740, 'fclose()\r\n', 936, NULL),
(3741, 'date', 937, NULL),
(3742, 'datetime', 937, NULL),
(3743, 'timestamp', 937, NULL),
(3744, 'time\r\n', 937, NULL),
(3745, '如果变量不存在返回false', 938, NULL),
(3746, '如果变量存在且值为null返回false', 938, NULL),
(3747, '如果变量存在且值不为null返回false', 938, NULL),
(3748, '以上说法都正确\r\n', 938, NULL),
(3749, '[and]', 939, NULL),
(3750, '&&', 939, NULL),
(3751, '[or]', 939, NULL),
(3752, '||\r\n', 939, NULL),
(3753, '主机名', 940, NULL),
(3754, '数据库密码', 940, NULL),
(3755, '数据库用户名', 940, NULL),
(3756, '连接报错信息\r\n', 940, NULL),
(3757, '在客户端保存并不在服务器端保存', 941, NULL),
(3758, '用来识别不同的用户', 941, NULL),
(3759, 'cookie的数据信息非常可靠', 941, NULL),
(3760, '客户不能拒绝cookie\r\n', 941, NULL),
(3761, 'create', 942, NULL),
(3762, 'drop', 942, NULL),
(3763, 'use', 942, NULL),
(3764, 'select\r\n', 942, NULL),
(3765, '正数', 943, NULL),
(3766, '负数', 943, NULL),
(3767, '零', 943, NULL),
(3768, '小数点\r\n', 943, NULL),
(3769, '记录总数', 944, NULL),
(3770, '_limit子句的第一个参数', 944, NULL),
(3771, '_limit子句的第二个参数', 944, NULL),
(3772, '以上都无关', 944, NULL),
(3773, '“name”', 945, NULL),
(3774, '“type”', 945, NULL),
(3775, '“size”', 945, NULL),
(3776, '“tmp_name”', 945, NULL),
(3777, '“float”', 946, NULL),
(3778, '“smallint”', 946, NULL),
(3779, '“decimal”', 946, NULL),
(3780, '“bigint”', 946, NULL),
(3781, '“do...while”', 947, NULL),
(3782, '“while”', 947, NULL),
(3783, '“for”', 947, NULL),
(3784, '“foreach”', 947, NULL),
(3785, 'session_start()', 948, NULL),
(3786, 'session_destroy()', 948, NULL),
(3787, '$_SESSION[参数名]', 948, NULL),
(3788, 'setcookie()\r\n', 948, NULL),
(3789, '[continue]语句则是中断循环过程不再判断执行循环的条件是否成立', 949, NULL),
(3790, '[break]语句则是中断循环过程不再判断执行循环的条件是否成立', 949, NULL),
(3791, '[continue]语句只是结束本次循环并不是中断整个循环的执行', 949, NULL),
(3792, '[break]语句只是结束本次循环并不是中断整个循环的执行\r\n', 949, NULL),
(3793, '“if”语句可以没有', 950, NULL),
(3794, '“else”语句可以没有', 950, NULL),
(3795, '“if”语句后面可以有多个“else”语句', 950, NULL),
(3796, '“else”语句里面可以嵌套“if”', 950, NULL),
(3797, '[$$_POST]', 951, NULL),
(3798, '[$$_GET]', 951, NULL),
(3799, '[$$_SERVER]', 951, NULL),
(3800, '[$$_SESSION]', 951, NULL),
(3801, '变量名必须以字母或下划线_开头', 952, NULL),
(3802, '变量名只能包含字母数字字符以及下划线', 952, NULL),
(3803, '变量名不能包含空格', 952, NULL),
(3804, '如果变量名由多个单词组成那么应该使用下划线进行分隔（比如[$my_string]）或者以大写字母开头', 952, NULL),
(3805, '“none”', 953, NULL),
(3806, '“underline”', 953, NULL),
(3807, '“overline”', 953, NULL),
(3808, '“blink”', 953, NULL),
(3809, 'HTML', 954, NULL),
(3810, 'MIME', 954, NULL),
(3811, 'SGML', 954, NULL),
(3812, 'CGI\r\n', 954, NULL),
(3813, 'html与/html', 955, NULL),
(3814, 'head与/head', 955, NULL),
(3815, 'body与/body', 955, NULL),
(3816, 'head与/body\r\n', 955, NULL),
(3817, 'href', 956, NULL),
(3818, 'src', 956, NULL),
(3819, 'type', 956, NULL),
(3820, 'align\r\n', 956, NULL),
(3821, 'html', 957, NULL),
(3822, 'css', 957, NULL),
(3823, 'xml', 957, NULL),
(3824, 'dib\r\n', 957, NULL),
(3825, '标题标记', 958, NULL),
(3826, '预排版标记', 958, NULL),
(3827, '转行标记', 958, NULL),
(3828, '文字效果标记\r\n', 958, NULL),
(3829, 'html', 959, NULL),
(3830, 'br', 959, NULL),
(3831, 'title', 959, NULL),
(3832, 'p\r\n', 959, NULL),
(3833, '4', 960, NULL),
(3834, '5', 960, NULL),
(3835, '6', 960, NULL),
(3836, '1\r\n', 960, NULL),
(3837, 'select', 961, NULL),
(3838, 'create', 961, NULL),
(3839, 'drop', 961, NULL),
(3840, 'alter\r\n', 961, NULL),
(3841, '成功开启返回1，失败返回0', 962, NULL),
(3842, '成功开启返回一个连接标识，失败返回false', 962, NULL),
(3843, '成功开启返回True,失败返回False', 962, NULL),
(3844, '成轼开启返回True,失败返回一个错误号\r\n', 962, NULL),
(3845, '$link1', 963, NULL),
(3846, '$link2', 963, NULL),
(3847, '全部关闭', 963, NULL),
(3848, '报错\r\n', 963, NULL),
(3849, 'select', 964, NULL),
(3850, 'delete', 964, NULL),
(3851, 'update', 964, NULL),
(3852, 'insert\r\n', 964, NULL),
(3853, 'mysql_fetch_row', 965, NULL),
(3854, 'mysql_rowid', 965, NULL),
(3855, 'mysql_num_rows', 965, NULL),
(3856, 'mysql_fetch_array\r\n', 965, NULL),
(3857, '“与数据库进行多连”', 966, NULL),
(3858, '“与mysql_connect功能相同”', 966, NULL),
(3859, '“与＠mysql_connect功能相同”', 966, NULL),
(3860, '“与数据库建立持久连接”', 966, NULL),
(3861, 'mysql_ping', 967, NULL),
(3862, 'mysql_status', 967, NULL),
(3863, 'mysql_stat', 967, NULL),
(3864, 'mysql_info\r\n', 967, NULL),
(3865, '查看下一次插入记录时的ID号', 968, NULL),
(3866, '查看刚刚插入过的自动增长ID值', 968, NULL),
(3867, '查看一共做过多少次insert操作', 968, NULL),
(3868, '查看一共有多少条记录\r\n', 968, NULL),
(3869, '检查数据库系统的状态返回整型数值', 969, NULL),
(3870, '检查数据库系统的状态返回值为布尔型', 969, NULL),
(3871, '检查到服务器的连接是否正常返回整型数值', 969, NULL),
(3872, '检查到服务器的连接是否正常返回值为布尔型', 969, NULL),
(3873, '报错', 970, NULL),
(3874, '只打印第一条记录', 970, NULL),
(3875, '循环换行打印全部记录', 970, NULL),
(3876, '无任何结果\r\n', 970, NULL),
(3877, '@mysql_connect()不会忽略错误,将错误显示到客户端', 971, NULL),
(3878, 'mysql_connect()不会忽略错误,将错误显示到客户端', 971, NULL),
(3879, '没有区别', 971, NULL),
(3880, '功能不同的两个函数\r\n', 971, NULL),
(3881, '无限和0', 972, NULL),
(3882, '0和无限', 972, NULL),
(3883, '都是无限', 972, NULL),
(3884, '都是0\r\n', 972, NULL),
(3885, '$_post[&quot;名称&quot;]', 973, NULL),
(3886, '$_POST[&quot;名称&quot;]', 973, NULL),
(3887, '$post[&quot;名称&quot;]', 973, NULL),
(3888, '$POST[&quot;名称&quot;]\r\n', 973, NULL),
(3889, '关系运算符-逻辑运算符-算术运算符', 974, NULL),
(3890, '算术运算符-关系运算符-逻辑运算符', 974, NULL),
(3891, '逻辑运算符-算术运算符-关系运算符', 974, NULL),
(3892, '关系运算符-算术运算符-逻辑运算符', 974, NULL),
(3893, '硬盘中', 975, NULL),
(3894, '程序中', 975, NULL),
(3895, '客户端', 975, NULL),
(3896, '服务器端\r\n', 975, NULL),
(3897, 'type()', 976, NULL),
(3898, 'gettype()', 976, NULL),
(3899, 'getType()', 976, NULL),
(3900, 'Type()\r\n', 976, NULL),
(3901, '拼音顺序', 977, NULL),
(3902, 'ASCII码值', 977, NULL),
(3903, '随机', 977, NULL),
(3904, '先后顺序\r\n', 977, NULL),
(3905, 'checkbox', 978, NULL),
(3906, 'radio', 978, NULL),
(3907, 'select', 978, NULL),
(3908, 'check\r\n', 978, NULL),
(3909, '硬盘上', 979, NULL),
(3910, '网页中', 979, NULL),
(3911, '客户端', 979, NULL),
(3912, '“服务器端”', 979, NULL),
(3913, 'Print()', 980, NULL),
(3914, 'print()', 980, NULL),
(3915, 'Print_r()', 980, NULL),
(3916, 'print_r()\r\n', 980, NULL),
(3917, '$_COOKIE', 981, NULL),
(3918, '$_COOKIES', 981, NULL),
(3919, '$_GETCOOKIE', 981, NULL),
(3920, '$_GETCOOKIES\r\n', 981, NULL),
(3921, 'gettype()是查看数据类型的', 982, NULL),
(3922, '没有被赋值的变量是0', 982, NULL),
(3923, 'unset()是被认为NULL', 982, NULL),
(3924, '双引号字符串最重要的一点是其中的变量名会被变量值替代\r\n', 982, NULL),
(3925, '将给定的字符串全部转换为小写字母', 983, NULL),
(3926, '将给定的字符串全部转换为大写字母', 983, NULL),
(3927, '将给定的字符串首字母转换为小写字母', 983, NULL),
(3928, '将给定的字符串首字母转换为大写字母\r\n', 983, NULL),
(3929, '&lt;body&gt;', 984, NULL),
(3930, '&lt;td&gt;', 984, NULL),
(3931, '&lt;tr&gt;', 984, NULL),
(3932, '&lt;table&gt;\r\n', 984, NULL),
(3933, 'intval()', 985, NULL),
(3934, 'strval()', 985, NULL),
(3935, 'str', 985, NULL),
(3936, 'valint()\r\n', 985, NULL),
(3937, '“-”', 986, NULL),
(3938, '“+”', 986, NULL),
(3939, '“&”', 986, NULL),
(3940, '“.”', 986, NULL),
(3941, '可变的参数个数', 987, NULL),
(3942, '通过引用传递参数', 987, NULL),
(3943, '通过指针传递参数', 987, NULL),
(3944, '实现递归函数\r\n', 987, NULL),
(3945, 'text', 988, NULL),
(3946, 'hidden', 988, NULL),
(3947, 'textarea', 988, NULL),
(3948, 'checkbox\r\n', 988, NULL),
(3949, '无效', 989, NULL),
(3950, '乘方', 989, NULL),
(3951, '位非', 989, NULL),
(3952, '位异或\r\n', 989, NULL),
(3953, 'returns', 990, NULL),
(3954, 'close', 990, NULL),
(3955, 'return', 990, NULL),
(3956, 'back\r\n', 990, NULL),
(3957, 'defined()', 991, NULL),
(3958, 'isdefin()', 991, NULL),
(3959, 'isdefined()', 991, NULL),
(3960, '无\r\n', 991, NULL),
(3961, '“连接数据库”', 992, NULL),
(3962, '“连接并选取数据库”', 992, NULL),
(3963, '“连接并打开数据库”', 992, NULL),
(3964, '“选取数据库”', 992, NULL),
(3965, 'body标签里', 993, NULL),
(3966, 'head标签里', 993, NULL),
(3967, 'script标签里', 993, NULL),
(3968, 'table标签里\r\n', 993, NULL),
(3969, 'count()', 994, NULL),
(3970, 'length()', 994, NULL),
(3971, '$_COUNT[&quot;名称&quot;]', 994, NULL),
(3972, '$_CONUT[&quot;名称&quot;]\r\n', 994, NULL),
(3973, '〈script language=“javascript”〉', 995, NULL),
(3974, '〈head>〈/head〉', 995, NULL),
(3975, '〈body>〈/body〉', 995, NULL),
(3976, '〈!--....//..〉', 995, NULL),
(3977, '“Monday”', 996, NULL),
(3978, '“Tuesday”', 996, NULL),
(3979, '“Wednesday”', 996, NULL),
(3980, '“没有显示”', 996, NULL),
(3981, 'array', 997, NULL),
(3982, 'next', 997, NULL),
(3983, 'count', 997, NULL),
(3984, 'reset\r\n', 997, NULL),
(3985, '$_test', 998, NULL),
(3986, '$2abc', 998, NULL),
(3987, '$Var', 998, NULL),
(3988, '$printr\r\n', 998, NULL),
(3989, '$_GET[“名称”]', 999, NULL),
(3990, '$get[“名称”]', 999, NULL),
(3991, '$GEG[“名称”]', 999, NULL),
(3992, '$_get[“名称”]', 999, NULL),
(3993, '定义数组', 1000, NULL),
(3994, '遍历数组', 1000, NULL),
(3995, '输出变量的相关信息', 1000, NULL),
(3996, '递归数组', 1000, NULL),
(3997, '将给定字符串全部转换为大写字母', 1001, NULL),
(3998, '将给定字符串全部转换为小写字母', 1001, NULL),
(3999, '将给定字符串首字母转换为大写字母', 1001, NULL),
(4000, '将给定字符串首字母转换为小写字母', 1001, NULL),
(4001, '输出a', 1002, NULL),
(4002, '输出b', 1002, NULL),
(4003, '条件不足,无法确定', 1002, NULL),
(4004, '运行出错\r\n', 1002, NULL),
(4005, 'title', 1003, NULL),
(4006, 'table', 1003, NULL),
(4007, 'body', 1003, NULL),
(4008, 'head\r\n', 1003, NULL),
(4009, '无效', 1004, NULL),
(4010, '取整', 1004, NULL),
(4011, '取余', 1004, NULL),
(4012, '除\r\n', 1004, NULL),
(4013, '=&gt;', 1005, NULL),
(4014, '-&gt;', 1005, NULL),
(4015, '..', 1005, NULL),
(4016, '.~\r\n', 1005, NULL),
(4017, '4', 1006, NULL),
(4018, '5', 1006, NULL),
(4019, '6', 1006, NULL),
(4020, '0\r\n', 1006, NULL),
(4021, '分段命令', 1007, NULL),
(4022, '换行命令', 1007, NULL),
(4023, '.结束命令', 1007, NULL),
(4024, '打印命令\r\n', 1007, NULL),
(4025, '5', 1008, NULL),
(4026, '6', 1008, NULL),
(4027, '7', 1008, NULL),
(4028, '8\r\n', 1008, NULL),
(4029, 'MYSQL是真正支持多平台的', 1009, NULL),
(4030, 'MYSQL是真正多线程、单用户的数据库系统', 1009, NULL),
(4031, 'MYSQL完全支持ODBC', 1009, NULL),
(4032, 'MYSQL可以在一次操作中从不同的数据库中混合表格\r\n', 1009, NULL),
(4033, '!', 1010, NULL),
(4034, '==', 1010, NULL),
(4035, '=', 1010, NULL),
(4036, '&\r\n', 1010, NULL),
(4037, 'mysql_fetch_row', 1011, NULL),
(4038, 'mysql_fetch_object', 1011, NULL),
(4039, 'mysql_select_db', 1011, NULL),
(4040, 'mysql_result\r\n', 1011, NULL),
(4041, 'NAME', 1012, NULL),
(4042, 'EXPIRES', 1012, NULL),
(4043, 'PATH', 1012, NULL),
(4044, 'DOMAIN\r\n', 1012, NULL),
(4045, '1bob3', 1013, NULL),
(4046, '1b', 1013, NULL),
(4047, '1', 1013, NULL),
(4048, '92\r\n', 1013, NULL),
(4049, '“&”', 1014, NULL),
(4050, '“|”', 1014, NULL),
(4051, '“~”', 1014, NULL),
(4052, '“!”', 1014, NULL),
(4053, 'PHP是一种强类型语言', 1015, NULL),
(4054, 'PHP变量声明时需要指定其变量的类型', 1015, NULL),
(4055, 'PHP变量声明时在变量名前面使用的字符是”&”', 1015, NULL),
(4056, 'PHP变量使用时上下文会自动确定其变量的类型', 1015, NULL),
(4057, '“&lt;?PHP”开始，到”?&gt;”结束', 1016, NULL),
(4058, '以”&lt;?--“开始，到”--?&gt;”结束', 1016, NULL),
(4059, '以”&lt;%--“开始，到”--%&gt;”结束', 1016, NULL),
(4060, '以”&lt;cgi”开始，到”cgi?&gt;”结束\r\n', 1016, NULL),
(4061, '$a+$b', 1017, NULL),
(4062, '$a.$b', 1017, NULL),
(4063, '$a-$b', 1017, NULL),
(4064, '$a+=$b\r\n', 1017, NULL),
(4065, 'php.ini', 1018, NULL),
(4066, 'http.conf', 1018, NULL),
(4067, 'php.sys', 1018, NULL),
(4068, 'php.exe\r\n', 1018, NULL),
(4069, '“echo”', 1019, NULL),
(4070, '“printf()”', 1019, NULL),
(4071, '“print”', 1019, NULL),
(4072, '“write”', 1019, NULL),
(4073, 'VAR', 1020, NULL),
(4074, 'define()', 1020, NULL),
(4075, 'dim', 1020, NULL),
(4076, 'undefined()\r\n', 1020, NULL),
(4077, '10', 1021, NULL),
(4078, '-3', 1021, NULL),
(4079, 'TRUE', 1021, NULL),
(4080, '“0”', 1021, NULL),
(4081, '$h=$g=24', 1022, NULL),
(4082, '$h=10,$g=24', 1022, NULL),
(4083, '$h=10.$g=14', 1022, NULL),
(4084, '$h=24,$g=10\r\n', 1022, NULL),
(4085, 'strrev', 1023, NULL),
(4086, 'substr', 1023, NULL),
(4087, 'strlen', 1023, NULL),
(4088, 'strchr\r\n', 1023, NULL),
(4089, 'information_schema', 1024, NULL),
(4090, 'sanguo', 1024, NULL),
(4091, 'tempdb', 1024, NULL),
(4092, 'master\r\n', 1024, NULL),
(4093, 'foreach语句用于循环遍历数组', 1025, NULL),
(4094, 'do...while是先判断再运行循环', 1025, NULL),
(4095, 'while是先循环再判断条件', 1025, NULL),
(4096, 'for循环是条件判断型的循环,跟while相似\r\n', 1025, NULL),
(4097, 'Cookie', 1026, NULL),
(4098, 'Session', 1026, NULL),
(4099, 'Application', 1026, NULL),
(4100, 'Server\r\n', 1026, NULL),
(4101, '“insert”---用来修改数据', 1027, NULL),
(4102, '“update”---用来删除数据', 1027, NULL),
(4103, '“delete”---用来添加数据', 1027, NULL),
(4104, '“select”---用来查看数据', 1027, NULL),
(4105, 'showtables;', 1028, NULL),
(4106, 'describe表名', 1028, NULL),
(4107, 'createtable表名', 1028, NULL),
(4108, 'select*from表名\r\n', 1028, NULL),
(4109, 'showdatabases', 1029, NULL),
(4110, 'usedatabase数据库名', 1029, NULL),
(4111, 'use数据库名', 1029, NULL),
(4112, 'user数据库名\r\n', 1029, NULL),
(4113, '“and”', 1030, NULL),
(4114, '“or”', 1030, NULL),
(4115, '“&&”', 1030, NULL),
(4116, '“not”', 1030, NULL),
(4117, 'mysql_select_db', 1031, NULL),
(4118, 'mysql_connect', 1031, NULL),
(4119, 'mysql_query', 1031, NULL),
(4120, 'mysql_fetch_field\r\n', 1031, NULL),
(4121, 'mysql_fetch_row', 1032, NULL),
(4122, 'mysql_select_db', 1032, NULL),
(4123, 'mysql_query', 1032, NULL),
(4124, 'mysql_connect\r\n', 1032, NULL),
(4125, '从数据表中返回记录之前', 1033, NULL),
(4126, '从数据表中返回记录中间', 1033, NULL),
(4127, '从数据表中返回记录之后', 1033, NULL),
(4128, '写在哪里也无所谓\r\n', 1033, NULL),
(4129, '断开PHP与mysql数据库的连接', 1034, NULL),
(4130, '重新启动PHP与mysql数据库的连接', 1034, NULL),
(4131, '释放变量result以节约服务器资源', 1034, NULL),
(4132, '占用服务器运行进程\r\n', 1034, NULL),
(4133, 'insert', 1035, NULL),
(4134, 'select', 1035, NULL),
(4135, 'delete', 1035, NULL),
(4136, 'update\r\n', 1035, NULL),
(4137, '向sanguo中查看记录', 1036, NULL),
(4138, '向sanguo中删除记录', 1036, NULL),
(4139, '向sanguo中添加记录', 1036, NULL),
(4140, '向sanguo中修改记录\r\n', 1036, NULL),
(4141, '“fgetss()”', 1037, NULL),
(4142, '“fgets()”', 1037, NULL),
(4143, '“fread()”', 1037, NULL),
(4144, '“readfile()”', 1037, NULL),
(4145, 'file_exists', 1038, NULL),
(4146, 'is_dir', 1038, NULL),
(4147, 'fopen', 1038, NULL),
(4148, 'fclose\r\n', 1038, NULL),
(4149, '[]中只能匹配一个字符', 1039, NULL),
(4150, '[]中可以匹配多个字符', 1039, NULL),
(4151, '[a-c]表示可以匹配a,c两个字母', 1039, NULL),
(4152, '以上说法都正确\r\n', 1039, NULL),
(4153, '主机名', 1040, NULL),
(4154, '数据库密码', 1040, NULL),
(4155, '数据库要用户名', 1040, NULL),
(4156, '报错信息\r\n', 1040, NULL),
(4157, '$', 1041, NULL),
(4158, 'class', 1041, NULL),
(4159, 'public', 1041, NULL),
(4160, 'echo\r\n', 1041, NULL),
(4161, 'fclose()', 1042, NULL),
(4162, 'fwrite()', 1042, NULL),
(4163, 'fopen()', 1042, NULL),
(4164, 'file()\r\n', 1042, NULL),
(4165, 'final', 1043, NULL),
(4166, 'private', 1043, NULL),
(4167, 'extends', 1043, NULL),
(4168, 'interface\r\n', 1043, NULL),
(4169, '接收URL传递过来的参数', 1044, NULL),
(4170, '接收用POST方式发送过来的参数', 1044, NULL),
(4171, '发送参数给其它页面', 1044, NULL),
(4172, '以上说法都不正确\r\n', 1044, NULL),
(4173, 'class_exists', 1045, NULL),
(4174, 'file_exists', 1045, NULL),
(4175, 'is_dir', 1045, NULL),
(4176, 'interface_existd\r\n', 1045, NULL),
(4177, '把字母d转义', 1046, NULL),
(4178, '任意一个十进制数字', 1046, NULL),
(4179, '没有实际含义', 1046, NULL),
(4180, '换行符\r\n', 1046, NULL),
(4181, '主键', 1047, NULL),
(4182, '自动增长', 1047, NULL),
(4183, '非空约束', 1047, NULL),
(4184, '批量导入\r\n', 1047, NULL),
(4185, 'class_exists', 1048, NULL),
(4186, 'file_exists', 1048, NULL),
(4187, 'is_dir', 1048, NULL),
(4188, 'get_class\r\n', 1048, NULL),
(4189, 'order', 1049, NULL),
(4190, 'having', 1049, NULL),
(4191, 'limit', 1049, NULL),
(4192, 'using\r\n', 1049, NULL),
(4193, 'f_getc', 1050, NULL),
(4194, 'file_exists', 1050, NULL),
(4195, 'fopen', 1050, NULL),
(4196, 'fclose\r\n', 1050, NULL),
(4197, '排序', 1051, NULL),
(4198, '模糊查询', 1051, NULL),
(4199, '分组', 1051, NULL),
(4200, '批量导入\r\n', 1051, NULL),
(4201, '类的属性实质就是类中的变量', 1052, NULL),
(4202, '类的属性实质就是类中的方法', 1052, NULL),
(4203, '类的属性实质就是类的子类', 1052, NULL),
(4204, '类的属性实质就是名\r\n', 1052, NULL),
(4205, '6', 1053, NULL),
(4206, '1', 1053, NULL),
(4207, '0', 1053, NULL),
(4208, '0.5\r\n', 1053, NULL),
(4209, 'smallint', 1054, NULL),
(4210, 'bigint', 1054, NULL),
(4211, 'tinyint', 1054, NULL),
(4212, 'int\r\n', 1054, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `test_setmark`
--

CREATE TABLE IF NOT EXISTS `test_setmark` (
  `radio` float NOT NULL DEFAULT '2',
  `checkbox` float NOT NULL DEFAULT '4'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `test_setmark`
--

INSERT INTO `test_setmark` (`radio`, `checkbox`) VALUES
(0.5, 2);

-- --------------------------------------------------------

--
-- 表的结构 `test_thread`
--

CREATE TABLE IF NOT EXISTS `test_thread` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `date` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `test_thread`
--

INSERT INTO `test_thread` (`id`, `name`, `date`) VALUES
(1, 'php期中考试', 1351441415);

-- --------------------------------------------------------

--
-- 表的结构 `test_title`
--

CREATE TABLE IF NOT EXISTS `test_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `threadid` int(10) NOT NULL DEFAULT '0',
  `title` varchar(400) NOT NULL DEFAULT '',
  `choicetype` enum('radio','checkbox','text','textarea') DEFAULT NULL,
  `answer` varchar(300) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `themeid` (`threadid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1055 ;

--
-- 转存表中的数据 `test_title`
--

INSERT INTO `test_title` (`id`, `threadid`, `title`, `choicetype`, `answer`) VALUES
(923, 1, '关于PHP的[switch]语句说法正确的有:', 'checkbox', '[break]语句可以没有,[default]语句可以没有'),
(924, 1, '下列哪些表达式可以实现加3的操作?', 'checkbox', '$inta=$inta+3,$inta+=3,$inta=$inta-(-3)'),
(925, 1, '关于mysql的正确说法有:', 'checkbox', 'describe表名可以简写为desc表名,mysql也可以从dos窗口启动,mysql默认安装的数据库有三个'),
(926, 1, '下列哪些属于PHP中的数据类型:', 'checkbox', '[string],[int],[boolean],[object]'),
(927, 1, '关于drop关键字的说法正确的有:', 'checkbox', 'drop可以删除数据库,drop可以删除表'),
(928, 1, '以下哪些操作具有打开的功能?', 'checkbox', 'fopen(),opendir()'),
(929, 1, 'PHP中关于类体范围的说法正确的有:', 'checkbox', '类要用class关键字声明后面跟类名,类体要用一对{}括起来'),
(930, 1, '正则表达式中,以下哪些可以表示1位整数?', 'checkbox', '[0-9],[0123456789],d{1}'),
(931, 1, 'mysql在安装过程中,以下哪些说法是正确的?', 'checkbox', 'mysql在安装时默认端口号为3306,mysql在安装时默认字符集为latin1,mysql在安装成功以后启动mysql要输入密码'),
(932, 1, '关于echo的说法正确的是:', 'checkbox', '输出PHP变量包括字符串,相当于JavaScript语言中的document.write()函数'),
(933, 1, 'MySQL自带的哪三个数据库?', 'checkbox', 'mysql,test,information_schema'),
(934, 1, 'PHP的比较运算符不等于哪两种符号?', 'checkbox', '!=,<>'),
(935, 1, 'PHP的$_POST可以用来取得以下哪些表单数据?', 'checkbox', '[text],[password],[radio],[textarea]'),
(936, 1, '以下哪些函数可以取得文件中的一行数据内容?', 'checkbox', 'fgets(),fgetss()'),
(937, 1, 'mysql的混合日期时间类型有:', 'checkbox', 'datetime,timestamp'),
(938, 1, 'isset()函数的返回值说法正确的有:', 'checkbox', '如果变量不存在返回false,如果变量存在且值为null返回false'),
(939, 1, 'PHP的逻辑与运算有哪两种符号表示?', 'checkbox', '[and],&&'),
(940, 1, 'PHP连接mysql数据库需要用到的三个参数分别是:(采用的是mysql_connect函数连接)', 'checkbox', '主机名,数据库密码,数据库用户名'),
(941, 1, '属于cookie的正确说法有:', 'checkbox', '在客户端保存并不在服务器端保存,用来识别不同的用户'),
(942, 1, '以下哪些关键字可以操作数据库?', 'checkbox', 'create,drop,use'),
(943, 1, 'PHP中整数常指没有小数的自然数，其中还包括:', 'checkbox', '正数,负数,零'),
(944, 1, 'PHP的网站信息翻页功能跟mysql数据表哪些参数有关?', 'checkbox', '记录总数,_limit子句的第一个参数,_limit子句的第二个参数'),
(945, 1, 'PHP的文件上传函数move_uploads_file包括哪些属性?', 'checkbox', '“name”,“type”,“size”,“tmp_name”'),
(946, 1, '下列数据类型,哪些属于整数类型?', 'checkbox', '“smallint”,“bigint”'),
(947, 1, 'PHP中包含哪些循环方式?', 'checkbox', '“do...while”,“while”,“for”,“foreach”'),
(948, 1, '跟PHP会话控制有关的方法有:', 'checkbox', 'session_start(),session_destroy(),$_SESSION[参数名]'),
(949, 1, '[continue]和[break]语句说法正确的有?', 'checkbox', '[break]语句则是中断循环过程不再判断执行循环的条件是否成立,[continue]语句只是结束本次循环并不是中断整个循环的执行'),
(950, 1, '关于PHP的[if...else]说法正确的有:', 'checkbox', '“else”语句可以没有,“else”语句里面可以嵌套“if”'),
(951, 1, '以下哪些属于PHP自带的预定义变量?', 'checkbox', '[$$_POST],[$$_GET],[$$_SERVER],[$$_SESSION]'),
(952, 1, '以下哪些是PHP变量的命名规则?', 'checkbox', '变量名必须以字母或下划线_开头,变量名只能包含字母数字字符以及下划线,变量名不能包含空格,如果变量名由多个单词组成那么应该使用下划线进行分隔（比如[$my_string]）或者以大写字母开头'),
(953, 1, '使用CSS对文本进行修饰，若使文本闪烁，text-decoration的取值为', 'radio', '“blink”'),
(954, 1, 'XML基于的标准是', 'radio', 'SGML'),
(955, 1, '标记符title是放在标记符什么之间的', 'radio', 'head与/head'),
(956, 1, '＜img＞标记符中连接图片的参数是：', 'radio', 'src'),
(957, 1, '级联样式表文件的扩展名是：', 'radio', 'css'),
(958, 1, '在HTML中，标记&lt;pre&gt;的作用是', 'radio', '预排版标记'),
(959, 1, 'HTML语言中的转行标记是', 'radio', 'br'),
(960, 1, '在HTML中，标题字体标记&lt;hx&gt;中x的最大取值是', 'radio', '6'),
(961, 1, '下列哪个不属于数据定义语言：', 'radio', 'select'),
(962, 1, '关于mysql_select_db返回值正确的是：', 'radio', '成功开启返回True,失败返回False'),
(963, 1, '请看代码，数据库关闭指令将关闭哪个连接标识？&lt;?$link1=mysql_connect(&quot;localhost&quot;,&quot;root&quot;,&quot;&quot;);$link2=mysql_connect(&quot;localhost&quot;,&quot;root&quot;,&quot;&quot;);mysql_close();?&gt;', 'radio', '$link2'),
(964, 1, 'mysql_affected_rows()对哪个操作没有影响？', 'radio', 'select'),
(965, 1, '取得搜索语句的结果集中的记录总数的函数是：', 'radio', 'mysql_num_rows'),
(966, 1, '关于mysql_pconnect说法正确的是：', 'radio', '“与数据库建立持久连接”'),
(967, 1, '如果想取得mysql数据库系统的运行状态，应该用什么函数？', 'radio', 'mysql_stat'),
(968, 1, 'mysql_insert_id()函数的作用是：', 'radio', '查看刚刚插入过的自动增长ID值'),
(969, 1, 'mysql_ping()函数的作用以及返回值的类型正确的是：', 'radio', '检查到服务器的连接是否正常返回值为布尔型'),
(970, 1, '以下代码执行结果&lt;?php&nbsp;mysql_connect(&quot;localhost&quot;,&quot;root&quot;,&quot;&quot;)&nbsp;$result&nbsp;=&nbsp;mysql_query(&quot;select&nbsp;id,name&nbsp;from&nbsp;tb1&quot;);&nbsp;while($row=mysql_fetch_array($result,MYSQL_ASSOC))&nbsp;{echo&nbsp;&quot;ID:&quot;&nbsp;.&nbsp;$row[0]&nbsp;.&quot;Name:&quot;&nbsp;.&nbsp;$row[];}?&gt;&nbsp;', 'radio', '报错'),
(971, 1, 'mysql_connect()与@mysql_connect()的区别是()', 'radio', 'mysql_connect()不会忽略错误,将错误显示到客户端'),
(972, 1, '语句for($k=0;$k=1;$k++);和语句for($k=0;$k==1;$k++);执行的次数分别是:', 'radio', '无限和0'),
(973, 1, '读取post方法传递的表单元素值的方法是:', 'radio', '$_POST["名称"]'),
(974, 1, 'php运算符中，优先级从高到低分别是（）', 'radio', '算术运算符-关系运算符-逻辑运算符'),
(975, 1, 'cookie的值存储在（)', 'radio', '客户端'),
(976, 1, '要查看一个变量的数据类型,可使用函数()', 'radio', 'gettype()'),
(977, 1, '字符串的比较，是按什么进行比较。', 'radio', 'ASCII码值'),
(978, 1, '复选框的type属性值是()', 'radio', 'checkbox'),
(979, 1, 'SESSION会话的值存储在', 'radio', '“服务器端”'),
(980, 1, '要查看一个结构类型变量的值,可以使用函数()', 'radio', 'print_r()'),
(981, 1, '在PHP中哪个变量数组总是包含所有总客户端发出的cookies数据()', 'radio', '$_COOKIE'),
(982, 1, '下列哪个说法是错误的()', 'radio', '没有被赋值的变量是0'),
(983, 1, 'strtolower()函数的功能是', 'radio', '将给定的字符串全部转换为小写字母'),
(984, 1, 'HTML中,表格单元格的&quot;值&quot;是存储在()标签里', 'radio', '<td>'),
(985, 1, '将一个值或变量转换为字符类型的函数是()', 'radio', 'strval()'),
(986, 1, 'php中字符串的连接运算符是（）', 'radio', '“.”'),
(987, 1, 'php函数不支持的功能有:', 'radio', '通过指针传递参数'),
(988, 1, '文本框的type属性值是()', 'radio', 'text'),
(989, 1, '运算符“^”的作用是：', 'radio', '位异或'),
(990, 1, '自定义函数中，返回函数值的关键字是（）', 'radio', 'return'),
(991, 1, '要检查一个常量是否定义,可以使用函数()', 'radio', 'defined()'),
(992, 1, '关于mysql_select_db的作用描述正确的是:', 'radio', '“选取数据库”'),
(993, 1, 'HTML中,title标签放在什么位置', 'radio', 'head标签里'),
(994, 1, '使用什么函数可以求得数组的大小', 'radio', 'count()'),
(995, 1, '在html中嵌入javaScript,应该使用的标记是', 'radio', '〈script language=“javascript”〉'),
(996, 1, '以下代码运行结果$A=array(&quot;Monday&quot;,&quot;Tuesday&quot;,3=&gt;&quot;Wednesday&quot;);echo$A[2];', 'radio', '“没有显示”'),
(997, 1, '新建一个数组的函数是:', 'radio', 'array'),
(998, 1, '下列不正确的变量名是:', 'radio', '$2abc'),
(999, 1, '读取get方法传递的表单元素值的方法是:', 'radio', '$_GET[“名称”]'),
(1000, 1, '函数vat_dump的意义是(&nbsp;)&nbsp;', 'radio', '输出变量的相关信息'),
(1001, 1, 'strtoupper(&nbsp;)函数的功能是：', 'radio', '将给定字符串全部转换为大写字母'),
(1002, 1, '以下代码的运行结果是(&nbsp;)&nbsp;if($i=&quot;&quot;){echo&nbsp;&quot;a&quot;;}else{echo&nbsp;&quot;b&quot;;}?&gt;&nbsp;', 'radio', '输出b'),
(1003, 1, '浏览网页时,看到的内容是HTML的哪一部分?', 'radio', 'body'),
(1004, 1, '运算符&quot;%&quot;的作用是()', 'radio', '取余'),
(1005, 1, 'PHP中调用某一个对象的方法或属性使用的运算符是', 'radio', '->'),
(1006, 1, '假设$a=5,有$b=($a--),则$b是', 'radio', '5'),
(1007, 1, '标记&lt;BR&gt;的用途是', 'radio', '换行命令'),
(1008, 1, '假设$a=5,有$a+=2,则$a的值为', 'radio', '7'),
(1009, 1, '以下关于MYSQL叙述中，错误的是', 'radio', 'MYSQL是真正多线程、单用户的数据库系统'),
(1010, 1, '在PHP中属于比较运算符的是', 'radio', '=='),
(1011, 1, '在PHP函数中，属于选择数据库函数的是', 'radio', 'mysql_select_db'),
(1012, 1, 'COOKIE的属性中，用来确定COOKIE有效日期的属性是', 'radio', 'EXPIRES'),
(1013, 1, 'PHP表达式$foo=1+&quot;bob3&quot;,则$foo的值是', 'radio', '1'),
(1014, 1, 'PHP的位运算符不包括', 'radio', '“!”'),
(1015, 1, '关于PHP变量的说法正确的是', 'radio', 'PHP变量使用时上下文会自动确定其变量的类型'),
(1016, 1, '在HTML文档嵌入PHP使用的定界符号是', 'radio', '“<?PHP”开始，到”?>”结束'),
(1017, 1, 'PHP语法中，假设已知$a=”hello”,$b=”china”,则要得到”hellochina”的字符串，应该如何操作', 'radio', '$a.$b'),
(1018, 1, '要配置PHP环境，只需修改', 'radio', 'php.ini'),
(1019, 1, '下列命令中不是PHP的输出命令的是', 'radio', '“write”'),
(1020, 1, 'PHP中定义常量的方法是', 'radio', 'define()'),
(1021, 1, '有下列PHP语句段，&lt;?php&nbsp;if($a)print&quot;true&quot;;else&nbsp;print&quot;false&quot;;?&gt;若要输出”false”，$a应该是', 'radio', '“0”'),
(1022, 1, '已知$g=14,则PHP表达式$h=$g+=10,运算后的结果是', 'radio', '$h=$g=24'),
(1023, 1, 'PHP哪个函数能取得字符串长度?', 'radio', 'strlen'),
(1024, 1, '哪些是MySQL自带的数据库?', 'radio', 'information_schema'),
(1025, 1, '关于PHP中的各种循环,说法正确的是:', 'radio', 'foreach语句用于循环遍历数组'),
(1026, 1, '以下哪些是PHP的会话控制技术?', 'radio', 'Session'),
(1027, 1, '以下哪些是单词的说法是正确的?', 'radio', '“select”---用来查看数据'),
(1028, 1, '以下哪个mysql命令可以查看数据表的结构信息?', 'radio', 'describe表名'),
(1029, 1, 'mysql哪些命令可以用于切换数据库?', 'radio', 'use数据库名'),
(1030, 1, 'mysql的非(取反)运算符是:', 'radio', '“not”'),
(1031, 1, 'php哪个函数用于向mysql数据库发送指令?', 'radio', 'mysql_query'),
(1032, 1, 'php连接上mysql之后采用哪个函数配置循环可以得到指定表中的记录?', 'radio', 'mysql_fetch_row'),
(1033, 1, 'mysql_query(“setnames&nbsp;gb2312”);该行代码一般要写在哪里最合适?', 'radio', '从数据表中返回记录之前'),
(1034, 1, 'mysql_free_result($result);本行代码的含义是:', 'radio', '释放变量result以节约服务器资源'),
(1035, 1, 'PHP的mysql_query()函数处理以下哪些指令成功就可以返回查询后的结果集?', 'radio', 'select'),
(1036, 1, '&lt;?php&nbsp;include(&quot;conn.php&quot;);mysql_query(&quot;setnames&nbsp;gb2312&quot;);mysql_select_db(&quot;test&quot;);$sqlstr=&quot;delete&nbsp;from&nbsp;sanguo&quot;;$result=mysql_query($sqlstr,$conn);?&gt;阅读以上代码,请问该代码的功能是:', 'radio', '向sanguo中删除记录'),
(1037, 1, 'php中哪个函数用于读取整个文件?', 'radio', '“fread()”'),
(1038, 1, 'PHP对目录进行操作时,先用哪个函数对操作目录进行是否存在的判断?', 'radio', 'is_dir'),
(1039, 1, '在正则表达式当中[]表示的含义正确的是:', 'radio', '[]中只能匹配一个字符'),
(1040, 1, 'PHP连接mysql的连接函数mysql_connect的第三个参数是:', 'radio', '数据库密码'),
(1041, 1, 'PHP中声明一个类,用以下关键字来进行声明？', 'radio', 'class'),
(1042, 1, 'php向文本文件写入内容,应该采用哪个文件操作函数?', 'radio', 'fwrite()'),
(1043, 1, 'PHP中类的继承是通过哪个关键字来实现的?', 'radio', 'extends'),
(1044, 1, 'PHP中的$_GET[参数名],表示什么含义?', 'radio', '接收URL传递过来的参数'),
(1045, 1, '判断某个类是否存在的函数为:', 'radio', 'class_exists'),
(1046, 1, '正则表达式当中的d表示的含义为:', 'radio', '任意一个十进制数字'),
(1047, 1, 'mysql中auto_increment单词表示什么含义?', 'radio', '自动增长'),
(1048, 1, 'PHP中检测某文件是否存在的函数为:', 'radio', 'file_exists'),
(1049, 1, 'PHP如果要实现网站常见的翻页功能,mysql中的哪个子句是必不可少的?', 'radio', 'limit'),
(1050, 1, 'PHP对文件进行操作是先用哪个函数对操作文件进行是否存在的判断?', 'radio', 'file_exists'),
(1051, 1, 'mysql中的groupby语句的功能是:', 'radio', '分组'),
(1052, 1, 'PHP中类的属性含义正确的是:', 'radio', '类的属性实质就是类中的变量'),
(1053, 1, 'echoceil(0.60);返回值为:', 'radio', '1'),
(1054, 1, 'mysqlint数据类型当中所占用字节数最小的为:', 'radio', 'tinyint');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
