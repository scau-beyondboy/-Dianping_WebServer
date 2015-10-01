-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2015-10-01 09:17:43
-- 服务器版本： 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `android`
--

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(100) NOT NULL,
  `category_name` char(200) NOT NULL,
  `category_parent` char(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_parent`) VALUES
(1, '全部分类', NULL),
(2, '今日新单', NULL),
(3, '美食', NULL),
(4, '休闲娱乐', NULL),
(5, '电影', NULL),
(6, '生活服务', NULL),
(7, '写真生活', NULL),
(8, '酒店', NULL),
(9, '旅游', NULL),
(10, '都市丽人', NULL),
(11, '教育培训', NULL),
(12, '购物', NULL),
(13, '丽人', NULL),
(14, '食品茶酒', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `id` int(20) NOT NULL,
  `city_name` char(20) NOT NULL,
  `city_sortkey` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `city`
--

INSERT INTO `city` (`id`, `city_name`, `city_sortkey`) VALUES
(1, '深圳', 'S'),
(2, '北京', 'B'),
(3, '湛江', 'Z'),
(4, '香港', 'X'),
(5, '广州', 'G'),
(6, '新疆', 'X'),
(7, '郑州', 'Z'),
(8, '云南', 'Y'),
(9, '江苏', 'J'),
(10, '福建', 'F'),
(11, '琼州', 'Q'),
(12, '黑龙江', 'H'),
(13, '安庆', 'A'),
(14, '铜陵', 'T');

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(200) NOT NULL DEFAULT '100005',
  `category_id` int(200) NOT NULL,
  `shop_id` int(20) DEFAULT '10001',
  `sub_category_id` int(20) DEFAULT NULL,
  `city_id` int(20) DEFAULT '7894',
  `product_title` varchar(400) DEFAULT NULL,
  `product_sort_title` varchar(400) DEFAULT NULL,
  `product_image` varchar(400) DEFAULT NULL,
  `product_start_time` varchar(400) NOT NULL DEFAULT '08：30',
  `product_value` varchar(400) DEFAULT NULL,
  `product_price` varchar(400) DEFAULT NULL,
  `product_ribat` varchar(400) NOT NULL DEFAULT '0.8',
  `product_bought` varchar(400) DEFAULT NULL,
  `product_minquota` int(20) NOT NULL DEFAULT '2',
  `product_maxquota` int(20) NOT NULL DEFAULT '20',
  `product_post` varchar(400) NOT NULL DEFAULT 'no',
  `product_soldout` varchar(400) NOT NULL DEFAULT 'no',
  `product_tip` text,
  `product_end_time` varchar(400) NOT NULL DEFAULT '1398787199',
  `product_detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `shop_id`, `sub_category_id`, `city_id`, `product_title`, `product_sort_title`, `product_image`, `product_start_time`, `product_value`, `product_price`, `product_ribat`, `product_bought`, `product_minquota`, `product_maxquota`, `product_post`, `product_soldout`, `product_tip`, `product_end_time`, `product_detail`) VALUES
(100005, 11, 10001, NULL, 7894, '对于抹茶控来说，尤其在炎炎夏日，那最清凉的一撇抹茶绿，完全是零抵抗力啊……', '抹茶诱惑 夏日最爱的那一撇绿', 'http://i1.s2.dpfile.com/pc/6ep_DBsNe8-I0LV4Z-HYKobYY7PWNgdFdFer0M2Vy-hRRvpqyxDXfkCP46XqlFLti-ksEVC2bnVZoKoi1_PHQQ.jpg', '08：30', '22', '25', '0.8', '10', 1, 20, 'no', 'no', NULL, '1398787199', '<div class="prodetail-sp"><h4 style="background:#ff6600">【本单详情】</h4><p class="ti">凭拉手券享受西萨蛋糕一款，10寸约2.5磅精品水果蛋糕任选1款/8寸月饼蛋糕一份，市场价238元，现在团购仅售<strong class="f18" style="color:#ff6600;">98</strong>元。</p><p>注：1磅≈453.59237克</p><p style="text-align:center"><a <div class="prodetail-sp"><h4 style="background:#ff6600">【本单详情】</h4><p class="ti">凭拉手券享受西萨蛋糕一款，10寸约2.5磅精品水果蛋糕任选1款/8寸月饼蛋糕一份，市场价238元，现在团购仅售<strong class="f18" style="color:#ff6600;">98</strong>元。</p><p>注：1磅≈453.59237克</p><p style="text-align:center"><a style="color:#00ccff" href="http://beijing.lashou.com/deal/7260985.html" target="_new"><img src="http://img.lashou.com/wg/beijing/201209/21/7260985.jpg" border="0" /></a></p><h4 style="background:#ff6600">【温馨提示】</h4><ul><li><p>本次团购仅限配送地址为北京市五环内地区的用户购买，免费配送； &nbsp; &nbsp; </p></li><li><p>拉手券于2012年9月25日（周二）生效； &nbsp; &nbsp; </p></li><li><p>拉手券有效期截止至延期至2014年07月31日，2013年2月9-15号 不可以使用； &nbsp; &nbsp; </p></li><li><p>营业时间见地址栏； &nbsp; &nbsp; </p></li><li><p><span style="color:#ff6600;">请您至少提前1天预约订购，商家于9月25日开始接受预约，电话见地址栏，预定时请告知您订购的蛋糕名称，并提供拉手券号和密码； </span> &nbsp; &nbsp;</p></li><li><p><span style="color:#ff6600;">请您在预定时详细说明收货人的联系方式及收货地址，服务人员将在配送时会提前与您联系，希望您能保持送货当日手机畅通，如超过约定时间无法联系，服务人员将放弃配送，由此产生的责任由收货人自行承担； &nbsp;</span> &nbsp; &nbsp; </p></li><li><p>蛋糕均为送货当日制作，建议1天内食用完，本产品0-10℃可保藏24小时，5℃食用最佳； &nbsp; &nbsp; </p></li><li><p>每张拉手券仅限享用一个蛋糕，每个蛋糕附送刀叉盘5套； &nbsp; &nbsp; </p></li><li><p>由于产品的特殊性，蛋糕一经订购非质量问题不予退换； &nbsp; &nbsp; </p></li><li><p>拉手券不兑现、不找零，不与店内其他优惠同时享用。 </p></li></ul><h4 style="background:#ff6600">【精品展示】</h4><p><strong>阿雅客</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/21/ayk1.jpg" /></p><p><strong>粉色佳人</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/fsjr1.jpg" /></p><p><strong>黄桃经典</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/htjd1.jpg" /></p><p><strong>极品诱惑</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/jpyh1.jpg" /></p><p><strong>科西嘉</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/kxj1.jpg" /></p><p><strong>秘与密</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/mym1.jpg" /></p><p><strong>盛之情</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/szq1.jpg" /></p><p><strong>意浓</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/yn1.jpg" /></p><p><strong>月饼蛋糕 </strong>密豆/蓝莓/草莓/黄桃馅</p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24//ybdg1.jpg" /></p><h4 style="background:#ff6600">西萨西饼屋</h4><p class="ti">西萨西饼屋主要以经营西式面包、西式糕点为主。面包品种繁多，主要有花色面包和夹心面包类。店内还可根据顾客需要订做生日蛋糕，样式美观新颖、价格合理！公司成立以来一直坚持以“高效率、高标准、高品质”为企业服务宗旨，力争能为广大消费者提供最完美的产品与服务！</p></div>\n'),
(100008, 8, 10009, NULL, 7895, '便宜美味，实惠好吃', '任性台式料理(体育西店)', 'http://i1.s2.dpfile.com/pc/6ep_DBsNe8-I0LV4Z-HYKobYY7PWNgdFdFer0M2Vy-hRRvpqyxDXfkCP46XqlFLti-ksEVC2bnVZoKoi1_PHQQ.jpg', '', '20', '30', '0.7', '10', 0, 0, '', '', NULL, '1398787199', '欢迎来到beyondboy高仿的大众点评购买商品'),
(288899, 12, 10009, NULL, 7894, '便宜美味，实惠好吃', '寿司', 'http://i1.s2.dpfile.com/pc/6ep_DBsNe8-I0LV4Z-HYKobYY7PWNgdFdFer0M2Vy-hRRvpqyxDXfkCP46XqlFLti-ksEVC2bnVZoKoi1_PHQQ.jpg', '', '88', '100', '1.3', '10', 0, 0, '', '', NULL, '1398787199', '欢迎来到beyondboy高仿的大众点评购买商品'),
(412546, 14, 10002, NULL, 7895, '香，浓，甜', '茶咖', 'http://i1.s1.dpfile.com/pc/r9yljOtMyxJNd5ngAcVlBMitItyaRZYDVwaCqqsfet9RRvpqyxDXfkCP46XqlFLti-ksEVC2bnVZoKoi1_PHQQ.jpg', '', '88', '78', '0.8', '2', 0, 0, '', '', NULL, '1398787199', '欢迎来到beyondboy高仿的大众点评购买商品'),
(421535, 1, 100011, NULL, 7896, '好吃，真好吃', '汉堡', 'http://i1.s2.dpfile.com/pc/6ep_DBsNe8-I0LV4Z-HYKobYY7PWNgdFdFer0M2Vy-hRRvpqyxDXfkCP46XqlFLti-ksEVC2bnVZoKoi1_PHQQ.jpg', '', '50', '45', '0.9', '45', 0, 0, '', '', NULL, '1398787199', '欢迎来到beyondboy高仿的大众点评购买商品'),
(454241, 3, 10001, NULL, 7894, '来，来，一切99元，只要你下单，服务马上上门！', '鸡腿', 'http://i1.s2.dpfile.com/pc/6ep_DBsNe8-I0LV4Z-HYKobYY7PWNgdFdFer0M2Vy-hRRvpqyxDXfkCP46XqlFLti-ksEVC2bnVZoKoi1_PHQQ.jpg', '', '78', '55', '0.5', '4', 0, 0, '', '', NULL, '1398787199', '欢迎来到beyondboy高仿的大众点评购买商品'),
(454645, 14, 10005, NULL, 7897, '来，来，这里能满足你的口味。', '日式料理', 'http://i1.s2.dpfile.com/pc/6ep_DBsNe8-I0LV4Z-HYKobYY7PWNgdFdFer0M2Vy-hRRvpqyxDXfkCP46XqlFLti-ksEVC2bnVZoKoi1_PHQQ.jpg', '', '100', '80', '0.8', '5', 0, 0, '', '', NULL, '1398787199', '欢迎来到beyondboy高仿的大众点评购买商品'),
(545864, 7, 10002, NULL, 7894, '美味真美味。', '韩国铁板', 'http://i1.s2.dpfile.com/pc/6ep_DBsNe8-I0LV4Z-HYKobYY7PWNgdFdFer0M2Vy-hRRvpqyxDXfkCP46XqlFLti-ksEVC2bnVZoKoi1_PHQQ.jpg', '', '45', '40', '0.8', '5', 0, 0, '', '', NULL, '1398787199', '<div class="prodetail-sp"><h4 style="background:#ff6600">【本单详情】</h4><p class="ti">凭拉手券享受西萨蛋糕一款，10寸约2.5磅精品水果蛋糕任选1款/8寸月饼蛋糕一份，市场价238元，现在团购仅售<strong class="f18" style="color:#ff6600;">98</strong>元。</p><p>注：1磅≈453.59237克</p><p style="text-align:center"><a style="color:#00ccff" href="http://beijing.lashou.com/deal/7260985.html" target="_new"><img src="http://img.lashou.com/wg/beijing/201209/21/7260985.jpg" border="0" /></a></p><h4 style="background:#ff6600">【温馨提示】</h4><ul><li><p>本次团购仅限配送地址为北京市五环内地区的用户购买，免费配送； &nbsp; &nbsp; </p></li><li><p>拉手券于2012年9月25日（周二）生效； &nbsp; &nbsp; </p></li><li><p>拉手券有效期截止至延期至2014年07月31日，2013年2月9-15号 不可以使用； &nbsp; &nbsp; </p></li><li><p>营业时间见地址栏； &nbsp; &nbsp; </p></li><li><p><span style="color:#ff6600;">请您至少提前1天预约订购，商家于9月25日开始接受预约，电话见地址栏，预定时请告知您订购的蛋糕名称，并提供拉手券号和密码； </span> &nbsp; &nbsp;</p></li><li><p><span style="color:#ff6600;">请您在预定时详细说明收货人的联系方式及收货地址，服务人员将在配送时会提前与您联系，希望您能保持送货当日手机畅通，如超过约定时间无法联系，服务人员将放弃配送，由此产生的责任由收货人自行承担； &nbsp;</span> &nbsp; &nbsp; </p></li><li><p>蛋糕均为送货当日制作，建议1天内食用完，本产品0-10℃可保藏24小时，5℃食用最佳； &nbsp; &nbsp; </p></li><li><p>每张拉手券仅限享用一个蛋糕，每个蛋糕附送刀叉盘5套； &nbsp; &nbsp; </p></li><li><p>由于产品的特殊性，蛋糕一经订购非质量问题不予退换； &nbsp; &nbsp; </p></li><li><p>拉手券不兑现、不找零，不与店内其他优惠同时享用。 </p></li></ul><h4 style="background:#ff6600">【精品展示】</h4><p><strong>阿雅客</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/21/ayk1.jpg" /></p><p><strong>粉色佳人</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/fsjr1.jpg" /></p><p><strong>黄桃经典</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/htjd1.jpg" /></p><p><strong>极品诱惑</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/jpyh1.jpg" /></p><p><strong>科西嘉</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/kxj1.jpg" /></p><p><strong>秘与密</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/mym1.jpg" /></p><p><strong>盛之情</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/szq1.jpg" /></p><p><strong>意浓</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/yn1.jpg" /></p><p><strong>月饼蛋糕 </strong>密豆/蓝莓/草莓/黄桃馅</p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24//ybdg1.jpg" /></p><h4 style="background:#ff6600">西萨西饼屋</h4><p class="ti">西萨西饼屋主要以经营西式面包、西式糕点为主。面包品种繁多，主要有花色面包和夹心面包类。店内还可根据顾客需要订做生日蛋糕，样式美观新颖、价格合理！公司成立以来一直坚持以“高效率、高标准、高品质”为企业服务宗旨，力争能为广大消费者提供最完美的产品与服务！</p></div>\n'),
(545866, 6, 10008, NULL, 7895, '满足不了你的口味，来这里就对了，什么都别谈，轻轻一按就行了。', '意大利面', 'http://i1.s2.dpfile.com/pc/6ep_DBsNe8-I0LV4Z-HYKobYY7PWNgdFdFer0M2Vy-hRRvpqyxDXfkCP46XqlFLti-ksEVC2bnVZoKoi1_PHQQ.jpg', '', '88', '78', '0.5', '5', 0, 0, '', '', NULL, '1398787199', '<div class="prodetail-sp"><h4 style="background:#ff6600">【本单详情】</h4><p class="ti">凭拉手券享受西萨蛋糕一款，10寸约2.5磅精品水果蛋糕任选1款/8寸月饼蛋糕一份，市场价238元，现在团购仅售<strong class="f18" style="color:#ff6600;">98</strong>元。</p><p>注：1磅≈453.59237克</p><p style="text-align:center"><a style="color:#00ccff" href="http://beijing.lashou.com/deal/7260985.html" target="_new"><img src="http://img.lashou.com/wg/beijing/201209/21/7260985.jpg" border="0" /></a></p><h4 style="background:#ff6600">【温馨提示】</h4><ul><li><p>本次团购仅限配送地址为北京市五环内地区的用户购买，免费配送； &nbsp; &nbsp; </p></li><li><p>拉手券于2012年9月25日（周二）生效； &nbsp; &nbsp; </p></li><li><p>拉手券有效期截止至延期至2014年07月31日，2013年2月9-15号 不可以使用； &nbsp; &nbsp; </p></li><li><p>营业时间见地址栏； &nbsp; &nbsp; </p></li><li><p><span style="color:#ff6600;">请您至少提前1天预约订购，商家于9月25日开始接受预约，电话见地址栏，预定时请告知您订购的蛋糕名称，并提供拉手券号和密码； </span> &nbsp; &nbsp;</p></li><li><p><span style="color:#ff6600;">请您在预定时详细说明收货人的联系方式及收货地址，服务人员将在配送时会提前与您联系，希望您能保持送货当日手机畅通，如超过约定时间无法联系，服务人员将放弃配送，由此产生的责任由收货人自行承担； &nbsp;</span> &nbsp; &nbsp; </p></li><li><p>蛋糕均为送货当日制作，建议1天内食用完，本产品0-10℃可保藏24小时，5℃食用最佳； &nbsp; &nbsp; </p></li><li><p>每张拉手券仅限享用一个蛋糕，每个蛋糕附送刀叉盘5套； &nbsp; &nbsp; </p></li><li><p>由于产品的特殊性，蛋糕一经订购非质量问题不予退换； &nbsp; &nbsp; </p></li><li><p>拉手券不兑现、不找零，不与店内其他优惠同时享用。 </p></li></ul><h4 style="background:#ff6600">【精品展示】</h4><p><strong>阿雅客</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/21/ayk1.jpg" /></p><p><strong>粉色佳人</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/fsjr1.jpg" /></p><p><strong>黄桃经典</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/htjd1.jpg" /></p><p><strong>极品诱惑</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/jpyh1.jpg" /></p><p><strong>科西嘉</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/kxj1.jpg" /></p><p><strong>秘与密</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/mym1.jpg" /></p><p><strong>盛之情</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/szq1.jpg" /></p><p><strong>意浓</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/yn1.jpg" /></p><p><strong>月饼蛋糕 </strong>密豆/蓝莓/草莓/黄桃馅</p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24//ybdg1.jpg" /></p><h4 style="background:#ff6600">西萨西饼屋</h4><p class="ti">西萨西饼屋主要以经营西式面包、西式糕点为主。面包品种繁多，主要有花色面包和夹心面包类。店内还可根据顾客需要订做生日蛋糕，样式美观新颖、价格合理！公司成立以来一直坚持以“高效率、高标准、高品质”为企业服务宗旨，力争能为广大消费者提供最完美的产品与服务！</p></div>\n'),
(1254558, 11, 10003, NULL, 7896, '来这里保证让你嘴慚。', '冰激凌', 'http://i1.s2.dpfile.com/pc/6ep_DBsNe8-I0LV4Z-HYKobYY7PWNgdFdFer0M2Vy-hRRvpqyxDXfkCP46XqlFLti-ksEVC2bnVZoKoi1_PHQQ.jpg', '', '45', '45', '1.0', '10', 0, 0, '', '', NULL, '1398787199', '欢迎来到beyondboy高仿的大众点评购买商品'),
(1254669, 8, 10004, NULL, 7894, '好吃真好吃!', '南亚老爹', 'http://i1.s2.dpfile.com/pc/6ep_DBsNe8-I0LV4Z-HYKobYY7PWNgdFdFer0M2Vy-hRRvpqyxDXfkCP46XqlFLti-ksEVC2bnVZoKoi1_PHQQ.jpg', '', '100', '89', '0.9', '10', 0, 0, '', '', NULL, '1398787199', '<div class="prodetail-sp"><h4 style="background:#ff6600">【本单详情】</h4><p class="ti">凭拉手券享受西萨蛋糕一款，10寸约2.5磅精品水果蛋糕任选1款/8寸月饼蛋糕一份，市场价238元，现在团购仅售<strong class="f18" style="color:#ff6600;">98</strong>元。</p><p>注：1磅≈453.59237克</p><p style="text-align:center"><a style="color:#00ccff" href="http://beijing.lashou.com/deal/7260985.html" target="_new"><img src="http://img.lashou.com/wg/beijing/201209/21/7260985.jpg" border="0" /></a></p><h4 style="background:#ff6600">【温馨提示】</h4><ul><li><p>本次团购仅限配送地址为北京市五环内地区的用户购买，免费配送； &nbsp; &nbsp; </p></li><li><p>拉手券于2012年9月25日（周二）生效； &nbsp; &nbsp; </p></li><li><p>拉手券有效期截止至延期至2014年07月31日，2013年2月9-15号 不可以使用； &nbsp; &nbsp; </p></li><li><p>营业时间见地址栏； &nbsp; &nbsp; </p></li><li><p><span style="color:#ff6600;">请您至少提前1天预约订购，商家于9月25日开始接受预约，电话见地址栏，预定时请告知您订购的蛋糕名称，并提供拉手券号和密码； </span> &nbsp; &nbsp;</p></li><li><p><span style="color:#ff6600;">请您在预定时详细说明收货人的联系方式及收货地址，服务人员将在配送时会提前与您联系，希望您能保持送货当日手机畅通，如超过约定时间无法联系，服务人员将放弃配送，由此产生的责任由收货人自行承担； &nbsp;</span> &nbsp; &nbsp; </p></li><li><p>蛋糕均为送货当日制作，建议1天内食用完，本产品0-10℃可保藏24小时，5℃食用最佳； &nbsp; &nbsp; </p></li><li><p>每张拉手券仅限享用一个蛋糕，每个蛋糕附送刀叉盘5套； &nbsp; &nbsp; </p></li><li><p>由于产品的特殊性，蛋糕一经订购非质量问题不予退换； &nbsp; &nbsp; </p></li><li><p>拉手券不兑现、不找零，不与店内其他优惠同时享用。 </p></li></ul><h4 style="background:#ff6600">【精品展示】</h4><p><strong>阿雅客</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/21/ayk1.jpg" /></p><p><strong>粉色佳人</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/fsjr1.jpg" /></p><p><strong>黄桃经典</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/htjd1.jpg" /></p><p><strong>极品诱惑</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/jpyh1.jpg" /></p><p><strong>科西嘉</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/kxj1.jpg" /></p><p><strong>秘与密</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/mym1.jpg" /></p><p><strong>盛之情</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/szq1.jpg" /></p><p><strong>意浓</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/yn1.jpg" /></p><p><strong>月饼蛋糕 </strong>密豆/蓝莓/草莓/黄桃馅</p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24//ybdg1.jpg" /></p><h4 style="background:#ff6600">西萨西饼屋</h4><p class="ti">西萨西饼屋主要以经营西式面包、西式糕点为主。面包品种繁多，主要有花色面包和夹心面包类。店内还可根据顾客需要订做生日蛋糕，样式美观新颖、价格合理！公司成立以来一直坚持以“高效率、高标准、高品质”为企业服务宗旨，力争能为广大消费者提供最完美的产品与服务！</p></div>\n'),
(1454158, 1, 10005, NULL, 7897, '不来你会后悔的！', '芭蕉亚洲', 'http://i1.s2.dpfile.com/pc/6ep_DBsNe8-I0LV4Z-HYKobYY7PWNgdFdFer0M2Vy-hRRvpqyxDXfkCP46XqlFLti-ksEVC2bnVZoKoi1_PHQQ.jpg', '', '10', '8', '0.8', '45', 0, 0, '', '', NULL, '1398787199', '<div class="prodetail-sp"><h4 style="background:#ff6600">【本单详情】</h4><p class="ti">凭拉手券享受西萨蛋糕一款，10寸约2.5磅精品水果蛋糕任选1款/8寸月饼蛋糕一份，市场价238元，现在团购仅售<strong class="f18" style="color:#ff6600;">98</strong>元。</p><p>注：1磅≈453.59237克</p><p style="text-align:center"><a style="color:#00ccff" href="http://beijing.lashou.com/deal/7260985.html" target="_new"><img src="http://img.lashou.com/wg/beijing/201209/21/7260985.jpg" border="0" /></a></p><h4 style="background:#ff6600">【温馨提示】</h4><ul><li><p>本次团购仅限配送地址为北京市五环内地区的用户购买，免费配送； &nbsp; &nbsp; </p></li><li><p>拉手券于2012年9月25日（周二）生效； &nbsp; &nbsp; </p></li><li><p>拉手券有效期截止至延期至2014年07月31日，2013年2月9-15号 不可以使用； &nbsp; &nbsp; </p></li><li><p>营业时间见地址栏； &nbsp; &nbsp; </p></li><li><p><span style="color:#ff6600;">请您至少提前1天预约订购，商家于9月25日开始接受预约，电话见地址栏，预定时请告知您订购的蛋糕名称，并提供拉手券号和密码； </span> &nbsp; &nbsp;</p></li><li><p><span style="color:#ff6600;">请您在预定时详细说明收货人的联系方式及收货地址，服务人员将在配送时会提前与您联系，希望您能保持送货当日手机畅通，如超过约定时间无法联系，服务人员将放弃配送，由此产生的责任由收货人自行承担； &nbsp;</span> &nbsp; &nbsp; </p></li><li><p>蛋糕均为送货当日制作，建议1天内食用完，本产品0-10℃可保藏24小时，5℃食用最佳； &nbsp; &nbsp; </p></li><li><p>每张拉手券仅限享用一个蛋糕，每个蛋糕附送刀叉盘5套； &nbsp; &nbsp; </p></li><li><p>由于产品的特殊性，蛋糕一经订购非质量问题不予退换； &nbsp; &nbsp; </p></li><li><p>拉手券不兑现、不找零，不与店内其他优惠同时享用。 </p></li></ul><h4 style="background:#ff6600">【精品展示】</h4><p><strong>阿雅客</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/21/ayk1.jpg" /></p><p><strong>粉色佳人</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/fsjr1.jpg" /></p><p><strong>黄桃经典</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/htjd1.jpg" /></p><p><strong>极品诱惑</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/jpyh1.jpg" /></p><p><strong>科西嘉</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/kxj1.jpg" /></p><p><strong>秘与密</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/mym1.jpg" /></p><p><strong>盛之情</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/szq1.jpg" /></p><p><strong>意浓</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/yn1.jpg" /></p><p><strong>月饼蛋糕 </strong>密豆/蓝莓/草莓/黄桃馅</p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24//ybdg1.jpg" /></p><h4 style="background:#ff6600">西萨西饼屋</h4><p class="ti">西萨西饼屋主要以经营西式面包、西式糕点为主。面包品种繁多，主要有花色面包和夹心面包类。店内还可根据顾客需要订做生日蛋糕，样式美观新颖、价格合理！公司成立以来一直坚持以“高效率、高标准、高品质”为企业服务宗旨，力争能为广大消费者提供最完美的产品与服务！</p></div>\n'),
(1458741, 13, 10003, NULL, 7895, '额，额，没有吃过就来这里吧！', '牛肉粉', 'http://i1.s2.dpfile.com/pc/6ep_DBsNe8-I0LV4Z-HYKobYY7PWNgdFdFer0M2Vy-hRRvpqyxDXfkCP46XqlFLti-ksEVC2bnVZoKoi1_PHQQ.jpg', '', '88', '87', '0.98', '54', 0, 0, '', '', NULL, '1398787199', '<div class="prodetail-sp"><h4 style="background:#ff6600">【本单详情】</h4><p class="ti">凭拉手券享受西萨蛋糕一款，10寸约2.5磅精品水果蛋糕任选1款/8寸月饼蛋糕一份，市场价238元，现在团购仅售<strong class="f18" style="color:#ff6600;">98</strong>元。</p><p>注：1磅≈453.59237克</p><p style="text-align:center"><a style="color:#00ccff" href="http://beijing.lashou.com/deal/7260985.html" target="_new"><img src="http://img.lashou.com/wg/beijing/201209/21/7260985.jpg" border="0" /></a></p><h4 style="background:#ff6600">【温馨提示】</h4><ul><li><p>本次团购仅限配送地址为北京市五环内地区的用户购买，免费配送； &nbsp; &nbsp; </p></li><li><p>拉手券于2012年9月25日（周二）生效； &nbsp; &nbsp; </p></li><li><p>拉手券有效期截止至延期至2014年07月31日，2013年2月9-15号 不可以使用； &nbsp; &nbsp; </p></li><li><p>营业时间见地址栏； &nbsp; &nbsp; </p></li><li><p><span style="color:#ff6600;">请您至少提前1天预约订购，商家于9月25日开始接受预约，电话见地址栏，预定时请告知您订购的蛋糕名称，并提供拉手券号和密码； </span> &nbsp; &nbsp;</p></li><li><p><span style="color:#ff6600;">请您在预定时详细说明收货人的联系方式及收货地址，服务人员将在配送时会提前与您联系，希望您能保持送货当日手机畅通，如超过约定时间无法联系，服务人员将放弃配送，由此产生的责任由收货人自行承担； &nbsp;</span> &nbsp; &nbsp; </p></li><li><p>蛋糕均为送货当日制作，建议1天内食用完，本产品0-10℃可保藏24小时，5℃食用最佳； &nbsp; &nbsp; </p></li><li><p>每张拉手券仅限享用一个蛋糕，每个蛋糕附送刀叉盘5套； &nbsp; &nbsp; </p></li><li><p>由于产品的特殊性，蛋糕一经订购非质量问题不予退换； &nbsp; &nbsp; </p></li><li><p>拉手券不兑现、不找零，不与店内其他优惠同时享用。 </p></li></ul><h4 style="background:#ff6600">【精品展示】</h4><p><strong>阿雅客</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/21/ayk1.jpg" /></p><p><strong>粉色佳人</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/fsjr1.jpg" /></p><p><strong>黄桃经典</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/htjd1.jpg" /></p><p><strong>极品诱惑</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/jpyh1.jpg" /></p><p><strong>科西嘉</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/kxj1.jpg" /></p><p><strong>秘与密</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/mym1.jpg" /></p><p><strong>盛之情</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/szq1.jpg" /></p><p><strong>意浓</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/yn1.jpg" /></p><p><strong>月饼蛋糕 </strong>密豆/蓝莓/草莓/黄桃馅</p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24//ybdg1.jpg" /></p><h4 style="background:#ff6600">西萨西饼屋</h4><p class="ti">西萨西饼屋主要以经营西式面包、西式糕点为主。面包品种繁多，主要有花色面包和夹心面包类。店内还可根据顾客需要订做生日蛋糕，样式美观新颖、价格合理！公司成立以来一直坚持以“高效率、高标准、高品质”为企业服务宗旨，力争能为广大消费者提供最完美的产品与服务！</p></div>\n'),
(1475417, 13, 10004, NULL, 7897, '哈哈，快来，快来，beyondboy店欢迎你！', '封地道', 'http://i1.s2.dpfile.com/pc/6ep_DBsNe8-I0LV4Z-HYKobYY7PWNgdFdFer0M2Vy-hRRvpqyxDXfkCP46XqlFLti-ksEVC2bnVZoKoi1_PHQQ.jpg', '', '54', '50', '0.8', '8', 0, 0, '', '', NULL, '1398787199', '欢迎来到beyondboy高仿的大众点评购买商品'),
(1478774, 1, 10008, NULL, 7896, '来来开心这里吃吧！', '香港咖啡', 'http://i1.s2.dpfile.com/pc/6ep_DBsNe8-I0LV4Z-HYKobYY7PWNgdFdFer0M2Vy-hRRvpqyxDXfkCP46XqlFLti-ksEVC2bnVZoKoi1_PHQQ.jpg', '', '88', '78', '0.8', '15', 0, 0, '', '', NULL, '1398787199', '欢迎来到beyondboy高仿的大众点评购买商品'),
(1545516, 13, 10006, NULL, 7896, '来来，这里不错，是你的吃货天堂！', '泰国料理', 'http://i1.s2.dpfile.com/pc/6ep_DBsNe8-I0LV4Z-HYKobYY7PWNgdFdFer0M2Vy-hRRvpqyxDXfkCP46XqlFLti-ksEVC2bnVZoKoi1_PHQQ.jpg', '', '88', '78', '0.9', '14', 0, 0, '', '', NULL, '1398787199', '<div class="prodetail-sp"><h4 style="background:#ff6600">【本单详情】</h4><p class="ti">凭拉手券享受西萨蛋糕一款，10寸约2.5磅精品水果蛋糕任选1款/8寸月饼蛋糕一份，市场价238元，现在团购仅售<strong class="f18" style="color:#ff6600;">98</strong>元。</p><p>注：1磅≈453.59237克</p><p style="text-align:center"><a style="color:#00ccff" href="http://beijing.lashou.com/deal/7260985.html" target="_new"><img src="http://img.lashou.com/wg/beijing/201209/21/7260985.jpg" border="0" /></a></p><h4 style="background:#ff6600">【温馨提示】</h4><ul><li><p>本次团购仅限配送地址为北京市五环内地区的用户购买，免费配送； &nbsp; &nbsp; </p></li><li><p>拉手券于2012年9月25日（周二）生效； &nbsp; &nbsp; </p></li><li><p>拉手券有效期截止至延期至2014年07月31日，2013年2月9-15号 不可以使用； &nbsp; &nbsp; </p></li><li><p>营业时间见地址栏； &nbsp; &nbsp; </p></li><li><p><span style="color:#ff6600;">请您至少提前1天预约订购，商家于9月25日开始接受预约，电话见地址栏，预定时请告知您订购的蛋糕名称，并提供拉手券号和密码； </span> &nbsp; &nbsp;</p></li><li><p><span style="color:#ff6600;">请您在预定时详细说明收货人的联系方式及收货地址，服务人员将在配送时会提前与您联系，希望您能保持送货当日手机畅通，如超过约定时间无法联系，服务人员将放弃配送，由此产生的责任由收货人自行承担； &nbsp;</span> &nbsp; &nbsp; </p></li><li><p>蛋糕均为送货当日制作，建议1天内食用完，本产品0-10℃可保藏24小时，5℃食用最佳； &nbsp; &nbsp; </p></li><li><p>每张拉手券仅限享用一个蛋糕，每个蛋糕附送刀叉盘5套； &nbsp; &nbsp; </p></li><li><p>由于产品的特殊性，蛋糕一经订购非质量问题不予退换； &nbsp; &nbsp; </p></li><li><p>拉手券不兑现、不找零，不与店内其他优惠同时享用。 </p></li></ul><h4 style="background:#ff6600">【精品展示】</h4><p><strong>阿雅客</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/21/ayk1.jpg" /></p><p><strong>粉色佳人</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/fsjr1.jpg" /></p><p><strong>黄桃经典</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/htjd1.jpg" /></p><p><strong>极品诱惑</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/jpyh1.jpg" /></p><p><strong>科西嘉</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/kxj1.jpg" /></p><p><strong>秘与密</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/mym1.jpg" /></p><p><strong>盛之情</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/szq1.jpg" /></p><p><strong>意浓</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/yn1.jpg" /></p><p><strong>月饼蛋糕 </strong>密豆/蓝莓/草莓/黄桃馅</p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24//ybdg1.jpg" /></p><h4 style="background:#ff6600">西萨西饼屋</h4><p class="ti">西萨西饼屋主要以经营西式面包、西式糕点为主。面包品种繁多，主要有花色面包和夹心面包类。店内还可根据顾客需要订做生日蛋糕，样式美观新颖、价格合理！公司成立以来一直坚持以“高效率、高标准、高品质”为企业服务宗旨，力争能为广大消费者提供最完美的产品与服务！</p></div>\n'),
(1545641, 1, 10007, NULL, 7897, '真的要来，这里妹子等你！', '牛百叶', 'http://i1.s2.dpfile.com/pc/6ep_DBsNe8-I0LV4Z-HYKobYY7PWNgdFdFer0M2Vy-hRRvpqyxDXfkCP46XqlFLti-ksEVC2bnVZoKoi1_PHQQ.jpg', '', '80', '47', '0.6', '45', 0, 0, '', '', NULL, '1398787199', '欢迎来到beyondboy高仿的大众点评购买商品'),
(1554888, 10, 10008, NULL, 7896, '不错的，就等你们来！', '豆腐', 'http://i1.s2.dpfile.com/pc/6ep_DBsNe8-I0LV4Z-HYKobYY7PWNgdFdFer0M2Vy-hRRvpqyxDXfkCP46XqlFLti-ksEVC2bnVZoKoi1_PHQQ.jpg', '', '45', '41', '0.9', '14', 0, 0, '', '', NULL, '1398787199', '欢迎来到beyondboy高仿的大众点评购买商品'),
(1554896, 12, 10009, 0, 7892, '真的不来吃吗？', '北京烤鸭', 'http://i1.s2.dpfile.com/pc/6ep_DBsNe8-I0LV4Z-HYKobYY7PWNgdFdFer0M2Vy-hRRvpqyxDXfkCP46XqlFLti-ksEVC2bnVZoKoi1_PHQQ.jpg', '', '100', '90', '0.9', '48', 0, 0, '', '', NULL, '1398787199', '欢迎来到beyondboy高仿的大众点评购买商品'),
(1557889, 13, 100010, NULL, 7893, '美味，真美味！', '台湾铁板', 'http://i1.s2.dpfile.com/pc/6ep_DBsNe8-I0LV4Z-HYKobYY7PWNgdFdFer0M2Vy-hRRvpqyxDXfkCP46XqlFLti-ksEVC2bnVZoKoi1_PHQQ.jpg', '', '150', '140', '0.9', '45', 0, 0, '', '', NULL, '1398787199', '欢迎来到beyondboy高仿的大众点评购买商品'),
(1745845, 3, NULL, NULL, NULL, NULL, NULL, 'http://i1.s2.dpfile.com/pc/6ep_DBsNe8-I0LV4Z-HYKobYY7PWNgdFdFer0M2Vy-hRRvpqyxDXfkCP46XqlFLti-ksEVC2bnVZoKoi1_PHQQ.jpg', '', NULL, NULL, '', NULL, 0, 0, '', '', NULL, '1398787199', '欢迎来到beyondboy高仿的大众点评购买商品'),
(2555555, 13, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, 0, 0, '', '', NULL, '1398787199', '欢迎来到beyondboy高仿的大众点评购买商品'),
(2878895, 13, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, 0, 0, '', '', NULL, '1398787199', '欢迎来到beyondboy高仿的大众点评购买商品'),
(2999874, 4, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, 0, 0, '', '', NULL, '1398787199', '<div class="prodetail-sp"><h4 style="background:#ff6600">【本单详情】</h4><p class="ti">凭拉手券享受西萨蛋糕一款，10寸约2.5磅精品水果蛋糕任选1款/8寸月饼蛋糕一份，市场价238元，现在团购仅售<strong class="f18" style="color:#ff6600;">98</strong>元。</p><p>注：1磅≈453.59237克</p><p style="text-align:center"><a style="color:#00ccff" href="http://beijing.lashou.com/deal/7260985.html" target="_new"><img src="http://img.lashou.com/wg/beijing/201209/21/7260985.jpg" border="0" /></a></p><h4 style="background:#ff6600">【温馨提示】</h4><ul><li><p>本次团购仅限配送地址为北京市五环内地区的用户购买，免费配送； &nbsp; &nbsp; </p></li><li><p>拉手券于2012年9月25日（周二）生效； &nbsp; &nbsp; </p></li><li><p>拉手券有效期截止至延期至2014年07月31日，2013年2月9-15号 不可以使用； &nbsp; &nbsp; </p></li><li><p>营业时间见地址栏； &nbsp; &nbsp; </p></li><li><p><span style="color:#ff6600;">请您至少提前1天预约订购，商家于9月25日开始接受预约，电话见地址栏，预定时请告知您订购的蛋糕名称，并提供拉手券号和密码； </span> &nbsp; &nbsp;</p></li><li><p><span style="color:#ff6600;">请您在预定时详细说明收货人的联系方式及收货地址，服务人员将在配送时会提前与您联系，希望您能保持送货当日手机畅通，如超过约定时间无法联系，服务人员将放弃配送，由此产生的责任由收货人自行承担； &nbsp;</span> &nbsp; &nbsp; </p></li><li><p>蛋糕均为送货当日制作，建议1天内食用完，本产品0-10℃可保藏24小时，5℃食用最佳； &nbsp; &nbsp; </p></li><li><p>每张拉手券仅限享用一个蛋糕，每个蛋糕附送刀叉盘5套； &nbsp; &nbsp; </p></li><li><p>由于产品的特殊性，蛋糕一经订购非质量问题不予退换； &nbsp; &nbsp; </p></li><li><p>拉手券不兑现、不找零，不与店内其他优惠同时享用。 </p></li></ul><h4 style="background:#ff6600">【精品展示】</h4><p><strong>阿雅客</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/21/ayk1.jpg" /></p><p><strong>粉色佳人</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/fsjr1.jpg" /></p><p><strong>黄桃经典</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/htjd1.jpg" /></p><p><strong>极品诱惑</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/jpyh1.jpg" /></p><p><strong>科西嘉</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/kxj1.jpg" /></p><p><strong>秘与密</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/mym1.jpg" /></p><p><strong>盛之情</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/szq1.jpg" /></p><p><strong>意浓</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/yn1.jpg" /></p><p><strong>月饼蛋糕 </strong>密豆/蓝莓/草莓/黄桃馅</p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24//ybdg1.jpg" /></p><h4 style="background:#ff6600">西萨西饼屋</h4><p class="ti">西萨西饼屋主要以经营西式面包、西式糕点为主。面包品种繁多，主要有花色面包和夹心面包类。店内还可根据顾客需要订做生日蛋糕，样式美观新颖、价格合理！公司成立以来一直坚持以“高效率、高标准、高品质”为企业服务宗旨，力争能为广大消费者提供最完美的产品与服务！</p></div>\n'),
(4545824, 7, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, 0, 0, '', '', NULL, '1398787199', '<div class="prodetail-sp"><h4 style="background:#ff6600">【本单详情】</h4><p class="ti">凭拉手券享受西萨蛋糕一款，10寸约2.5磅精品水果蛋糕任选1款/8寸月饼蛋糕一份，市场价238元，现在团购仅售<strong class="f18" style="color:#ff6600;">98</strong>元。</p><p>注：1磅≈453.59237克</p><p style="text-align:center"><a style="color:#00ccff" href="http://beijing.lashou.com/deal/7260985.html" target="_new"><img src="http://img.lashou.com/wg/beijing/201209/21/7260985.jpg" border="0" /></a></p><h4 style="background:#ff6600">【温馨提示】</h4><ul><li><p>本次团购仅限配送地址为北京市五环内地区的用户购买，免费配送； &nbsp; &nbsp; </p></li><li><p>拉手券于2012年9月25日（周二）生效； &nbsp; &nbsp; </p></li><li><p>拉手券有效期截止至延期至2014年07月31日，2013年2月9-15号 不可以使用； &nbsp; &nbsp; </p></li><li><p>营业时间见地址栏； &nbsp; &nbsp; </p></li><li><p><span style="color:#ff6600;">请您至少提前1天预约订购，商家于9月25日开始接受预约，电话见地址栏，预定时请告知您订购的蛋糕名称，并提供拉手券号和密码； </span> &nbsp; &nbsp;</p></li><li><p><span style="color:#ff6600;">请您在预定时详细说明收货人的联系方式及收货地址，服务人员将在配送时会提前与您联系，希望您能保持送货当日手机畅通，如超过约定时间无法联系，服务人员将放弃配送，由此产生的责任由收货人自行承担； &nbsp;</span> &nbsp; &nbsp; </p></li><li><p>蛋糕均为送货当日制作，建议1天内食用完，本产品0-10℃可保藏24小时，5℃食用最佳； &nbsp; &nbsp; </p></li><li><p>每张拉手券仅限享用一个蛋糕，每个蛋糕附送刀叉盘5套； &nbsp; &nbsp; </p></li><li><p>由于产品的特殊性，蛋糕一经订购非质量问题不予退换； &nbsp; &nbsp; </p></li><li><p>拉手券不兑现、不找零，不与店内其他优惠同时享用。 </p></li></ul><h4 style="background:#ff6600">【精品展示】</h4><p><strong>阿雅客</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/21/ayk1.jpg" /></p><p><strong>粉色佳人</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/fsjr1.jpg" /></p><p><strong>黄桃经典</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/htjd1.jpg" /></p><p><strong>极品诱惑</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/jpyh1.jpg" /></p><p><strong>科西嘉</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/kxj1.jpg" /></p><p><strong>秘与密</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/mym1.jpg" /></p><p><strong>盛之情</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/szq1.jpg" /></p><p><strong>意浓</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/yn1.jpg" /></p><p><strong>月饼蛋糕 </strong>密豆/蓝莓/草莓/黄桃馅</p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24//ybdg1.jpg" /></p><h4 style="background:#ff6600">西萨西饼屋</h4><p class="ti">西萨西饼屋主要以经营西式面包、西式糕点为主。面包品种繁多，主要有花色面包和夹心面包类。店内还可根据顾客需要订做生日蛋糕，样式美观新颖、价格合理！公司成立以来一直坚持以“高效率、高标准、高品质”为企业服务宗旨，力争能为广大消费者提供最完美的产品与服务！</p></div>\n'),
(4569869, 6, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, 0, 0, '', '', NULL, '1398787199', '<div class="prodetail-sp"><h4 style="background:#ff6600">【本单详情】</h4><p class="ti">凭拉手券享受西萨蛋糕一款，10寸约2.5磅精品水果蛋糕任选1款/8寸月饼蛋糕一份，市场价238元，现在团购仅售<strong class="f18" style="color:#ff6600;">98</strong>元。</p><p>注：1磅≈453.59237克</p><p style="text-align:center"><a style="color:#00ccff" href="http://beijing.lashou.com/deal/7260985.html" target="_new"><img src="http://img.lashou.com/wg/beijing/201209/21/7260985.jpg" border="0" /></a></p><h4 style="background:#ff6600">【温馨提示】</h4><ul><li><p>本次团购仅限配送地址为北京市五环内地区的用户购买，免费配送； &nbsp; &nbsp; </p></li><li><p>拉手券于2012年9月25日（周二）生效； &nbsp; &nbsp; </p></li><li><p>拉手券有效期截止至延期至2014年07月31日，2013年2月9-15号 不可以使用； &nbsp; &nbsp; </p></li><li><p>营业时间见地址栏； &nbsp; &nbsp; </p></li><li><p><span style="color:#ff6600;">请您至少提前1天预约订购，商家于9月25日开始接受预约，电话见地址栏，预定时请告知您订购的蛋糕名称，并提供拉手券号和密码； </span> &nbsp; &nbsp;</p></li><li><p><span style="color:#ff6600;">请您在预定时详细说明收货人的联系方式及收货地址，服务人员将在配送时会提前与您联系，希望您能保持送货当日手机畅通，如超过约定时间无法联系，服务人员将放弃配送，由此产生的责任由收货人自行承担； &nbsp;</span> &nbsp; &nbsp; </p></li><li><p>蛋糕均为送货当日制作，建议1天内食用完，本产品0-10℃可保藏24小时，5℃食用最佳； &nbsp; &nbsp; </p></li><li><p>每张拉手券仅限享用一个蛋糕，每个蛋糕附送刀叉盘5套； &nbsp; &nbsp; </p></li><li><p>由于产品的特殊性，蛋糕一经订购非质量问题不予退换； &nbsp; &nbsp; </p></li><li><p>拉手券不兑现、不找零，不与店内其他优惠同时享用。 </p></li></ul><h4 style="background:#ff6600">【精品展示】</h4><p><strong>阿雅客</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/21/ayk1.jpg" /></p><p><strong>粉色佳人</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/fsjr1.jpg" /></p><p><strong>黄桃经典</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/htjd1.jpg" /></p><p><strong>极品诱惑</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/jpyh1.jpg" /></p><p><strong>科西嘉</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/kxj1.jpg" /></p><p><strong>秘与密</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/mym1.jpg" /></p><p><strong>盛之情</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/szq1.jpg" /></p><p><strong>意浓</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/yn1.jpg" /></p><p><strong>月饼蛋糕 </strong>密豆/蓝莓/草莓/黄桃馅</p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24//ybdg1.jpg" /></p><h4 style="background:#ff6600">西萨西饼屋</h4><p class="ti">西萨西饼屋主要以经营西式面包、西式糕点为主。面包品种繁多，主要有花色面包和夹心面包类。店内还可根据顾客需要订做生日蛋糕，样式美观新颖、价格合理！公司成立以来一直坚持以“高效率、高标准、高品质”为企业服务宗旨，力争能为广大消费者提供最完美的产品与服务！</p></div>\n'),
(4588855, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, 0, 0, '', '', NULL, '1398787199', '<div class="prodetail-sp"><h4 style="background:#ff6600">【本单详情】</h4><p class="ti">凭拉手券享受西萨蛋糕一款，10寸约2.5磅精品水果蛋糕任选1款/8寸月饼蛋糕一份，市场价238元，现在团购仅售<strong class="f18" style="color:#ff6600;">98</strong>元。</p><p>注：1磅≈453.59237克</p><p style="text-align:center"><a style="color:#00ccff" href="http://beijing.lashou.com/deal/7260985.html" target="_new"><img src="http://img.lashou.com/wg/beijing/201209/21/7260985.jpg" border="0" /></a></p><h4 style="background:#ff6600">【温馨提示】</h4><ul><li><p>本次团购仅限配送地址为北京市五环内地区的用户购买，免费配送； &nbsp; &nbsp; </p></li><li><p>拉手券于2012年9月25日（周二）生效； &nbsp; &nbsp; </p></li><li><p>拉手券有效期截止至延期至2014年07月31日，2013年2月9-15号 不可以使用； &nbsp; &nbsp; </p></li><li><p>营业时间见地址栏； &nbsp; &nbsp; </p></li><li><p><span style="color:#ff6600;">请您至少提前1天预约订购，商家于9月25日开始接受预约，电话见地址栏，预定时请告知您订购的蛋糕名称，并提供拉手券号和密码； </span> &nbsp; &nbsp;</p></li><li><p><span style="color:#ff6600;">请您在预定时详细说明收货人的联系方式及收货地址，服务人员将在配送时会提前与您联系，希望您能保持送货当日手机畅通，如超过约定时间无法联系，服务人员将放弃配送，由此产生的责任由收货人自行承担； &nbsp;</span> &nbsp; &nbsp; </p></li><li><p>蛋糕均为送货当日制作，建议1天内食用完，本产品0-10℃可保藏24小时，5℃食用最佳； &nbsp; &nbsp; </p></li><li><p>每张拉手券仅限享用一个蛋糕，每个蛋糕附送刀叉盘5套； &nbsp; &nbsp; </p></li><li><p>由于产品的特殊性，蛋糕一经订购非质量问题不予退换； &nbsp; &nbsp; </p></li><li><p>拉手券不兑现、不找零，不与店内其他优惠同时享用。 </p></li></ul><h4 style="background:#ff6600">【精品展示】</h4><p><strong>阿雅客</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/21/ayk1.jpg" /></p><p><strong>粉色佳人</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/fsjr1.jpg" /></p><p><strong>黄桃经典</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/htjd1.jpg" /></p><p><strong>极品诱惑</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/jpyh1.jpg" /></p><p><strong>科西嘉</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/kxj1.jpg" /></p><p><strong>秘与密</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/mym1.jpg" /></p><p><strong>盛之情</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/szq1.jpg" /></p><p><strong>意浓</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/yn1.jpg" /></p><p><strong>月饼蛋糕 </strong>密豆/蓝莓/草莓/黄桃馅</p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24//ybdg1.jpg" /></p><h4 style="background:#ff6600">西萨西饼屋</h4><p class="ti">西萨西饼屋主要以经营西式面包、西式糕点为主。面包品种繁多，主要有花色面包和夹心面包类。店内还可根据顾客需要订做生日蛋糕，样式美观新颖、价格合理！公司成立以来一直坚持以“高效率、高标准、高品质”为企业服务宗旨，力争能为广大消费者提供最完美的产品与服务！</p></div>\n'),
(15458996, 5, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, 0, 0, '', '', NULL, '1398787199', '欢迎来到beyondboy高仿的大众点评购买商品'),
(15548856, 10, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, 0, 0, '', '', NULL, '1398787199', '欢迎来到beyondboy高仿的大众点评购买商品'),
(45468754, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, 0, 0, '', '', NULL, '1398787199', '<div class="prodetail-sp"><h4 style="background:#ff6600">【本单详情】</h4><p class="ti">凭拉手券享受西萨蛋糕一款，10寸约2.5磅精品水果蛋糕任选1款/8寸月饼蛋糕一份，市场价238元，现在团购仅售<strong class="f18" style="color:#ff6600;">98</strong>元。</p><p>注：1磅≈453.59237克</p><p style="text-align:center"><a style="color:#00ccff" href="http://beijing.lashou.com/deal/7260985.html" target="_new"><img src="http://img.lashou.com/wg/beijing/201209/21/7260985.jpg" border="0" /></a></p><h4 style="background:#ff6600">【温馨提示】</h4><ul><li><p>本次团购仅限配送地址为北京市五环内地区的用户购买，免费配送； &nbsp; &nbsp; </p></li><li><p>拉手券于2012年9月25日（周二）生效； &nbsp; &nbsp; </p></li><li><p>拉手券有效期截止至延期至2014年07月31日，2013年2月9-15号 不可以使用； &nbsp; &nbsp; </p></li><li><p>营业时间见地址栏； &nbsp; &nbsp; </p></li><li><p><span style="color:#ff6600;">请您至少提前1天预约订购，商家于9月25日开始接受预约，电话见地址栏，预定时请告知您订购的蛋糕名称，并提供拉手券号和密码； </span> &nbsp; &nbsp;</p></li><li><p><span style="color:#ff6600;">请您在预定时详细说明收货人的联系方式及收货地址，服务人员将在配送时会提前与您联系，希望您能保持送货当日手机畅通，如超过约定时间无法联系，服务人员将放弃配送，由此产生的责任由收货人自行承担； &nbsp;</span> &nbsp; &nbsp; </p></li><li><p>蛋糕均为送货当日制作，建议1天内食用完，本产品0-10℃可保藏24小时，5℃食用最佳； &nbsp; &nbsp; </p></li><li><p>每张拉手券仅限享用一个蛋糕，每个蛋糕附送刀叉盘5套； &nbsp; &nbsp; </p></li><li><p>由于产品的特殊性，蛋糕一经订购非质量问题不予退换； &nbsp; &nbsp; </p></li><li><p>拉手券不兑现、不找零，不与店内其他优惠同时享用。 </p></li></ul><h4 style="background:#ff6600">【精品展示】</h4><p><strong>阿雅客</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/21/ayk1.jpg" /></p><p><strong>粉色佳人</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/fsjr1.jpg" /></p><p><strong>黄桃经典</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/htjd1.jpg" /></p><p><strong>极品诱惑</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/jpyh1.jpg" /></p><p><strong>科西嘉</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/kxj1.jpg" /></p><p><strong>秘与密</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/mym1.jpg" /></p><p><strong>盛之情</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/szq1.jpg" /></p><p><strong>意浓</strong></p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24/yn1.jpg" /></p><p><strong>月饼蛋糕 </strong>密豆/蓝莓/草莓/黄桃馅</p><p class="tc"><img src="http://img.lashou.com/wg/beijing/201209/24//ybdg1.jpg" /></p><h4 style="background:#ff6600">西萨西饼屋</h4><p class="ti">西萨西饼屋主要以经营西式面包、西式糕点为主。面包品种繁多，主要有花色面包和夹心面包类。店内还可根据顾客需要订做生日蛋糕，样式美观新颖、价格合理！公司成立以来一直坚持以“高效率、高标准、高品质”为企业服务宗旨，力争能为广大消费者提供最完美的产品与服务！</p></div>\n');

-- --------------------------------------------------------

--
-- 表的结构 `shop`
--

CREATE TABLE IF NOT EXISTS `shop` (
  `shop_id` int(20) NOT NULL,
  `shop_name` varchar(400) NOT NULL DEFAULT '陆兴粮油店',
  `shop_tel` int(30) NOT NULL DEFAULT '11014587',
  `shop_address` varchar(400) NOT NULL DEFAULT '华南农业大学华山区',
  `shop_area` varchar(100) NOT NULL DEFAULT '广州',
  `shop_open_time` varchar(400) NOT NULL DEFAULT '00:00:06.000000',
  `shop_lon` double NOT NULL DEFAULT '119.54554',
  `shop_lat` double NOT NULL DEFAULT '118.55498',
  `shop_traffic_info` varchar(400) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=100016 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shop`
--

INSERT INTO `shop` (`shop_id`, `shop_name`, `shop_tel`, `shop_address`, `shop_area`, `shop_open_time`, `shop_lon`, `shop_lat`, `shop_traffic_info`) VALUES
(10001, '陆兴粮油店', 11014587, '华南农业大学华山区', '广州', '06:30:00.000000', 113.84554, 22.65498, ''),
(10002, '陆兴粮油店', 11014587, '华南农业大学华山区', '广州', '00:00:06.000000', 113.54554, 22.55498, ''),
(10003, '陆兴粮油店', 11014587, '华南农业大学华山区', '广州', '00:00:06.000000', 113.54554, 22.15498, ''),
(10004, '陆兴粮油店', 11014587, '华南农业大学华山区', '广州', '00:00:06.000000', 130.54554, 20.55498, ''),
(10005, '陆兴粮油店', 11014587, '华南农业大学华山区', '广州', '00:00:06.000000', 150.54554, 15.55498, ''),
(10006, '陆兴粮油店', 11014587, '华南农业大学华山区', '广州', '00:00:06.000000', 130.555, 40.55498, ''),
(10007, '陆兴粮油店', 11014587, '华南农业大学华山区', '广州', '00:00:06.000000', 125.54554, 50.55498, ''),
(10008, '陆兴粮油店', 11014587, '华南农业大学华山区', '广州', '00:00:06.000000', 186.54554, 45.55498, ''),
(10009, '陆兴粮油店', 11014587, '华南农业大学华山区', '广州', '00:00:06.000000', 119.54554, 30.55498, ''),
(100010, '陆兴粮油店', 11014587, '华南农业大学华山区', '广州', '00:00:06.000000', 135.54554, 15.55498, ''),
(100011, '陆兴粮油店', 11014587, '华南农业大学华山区', '广州', '00:00:06.000000', 100.54554, 58.55498, ''),
(100012, '陆兴粮油店', 11014587, '华南农业大学华山区', '广州', '00:00:06.000000', 148.54554, 65.55498, ''),
(100013, '陆兴粮油店', 11014587, '华南农业大学华山区', '广州', '00:00:06.000000', 148.54554, 29.55498, ''),
(100014, '陆兴粮油店', 11014587, '华南农业大学华山区', '广州', '00:00:06.000000', 189.54554, 11.55498, ''),
(100015, '陆兴粮油店', 11014587, '华南农业大学华山区', '广州', '00:00:06.000000', 119.54554, 24.55498, '');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_login_pwd` varchar(400) NOT NULL,
  `user_pay_pwd` varchar(400) DEFAULT NULL,
  `user_tel` varchar(400) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_login_pwd`, `user_pay_pwd`, `user_tel`) VALUES
(1, 'beyondboy', '080808', '', ''),
(2, 'sungirl', '123456', '', ''),
(3, 'scau', '456789', '', ''),
(4, 'scau_beyondboy', '789456', '', ''),
(5, 'xuguoli', '080808', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `city_name` (`city_name`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_id` (`product_id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `shop_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100016;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
