-- --------------------------------------------------------

--
-- Database: `opencart`
--

-- --------------------------------------------------------

SET sql_mode = '';
--
-- Table structure for table `oc_banner`
--


DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(10, 'Parralax-1', 1),
(15, 'Slideshow', 1),
(14, 'banners', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=181 ;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(178, 14, 'index.php?route=product/product&amp;product_id=42', 'catalog/banner-2.jpg', 2),
(177, 14, 'index.php?route=product/product&amp;product_id=43', 'catalog/banner-1.jpg', 1),
(176, 15, '', 'catalog/slide-3.jpg', 3),
(171, 10, '', 'catalog/parallax-1.jpg', 0),
(175, 15, '', 'catalog/slide-2.jpg', 2),
(174, 15, '', 'catalog/slide-1.jpg', 1),
(179, 14, 'index.php?route=product/product&amp;product_id=33', 'catalog/banner-3.jpg', 3),
(180, 14, 'index.php?route=product/product&amp;product_id=35', 'catalog/banner-4.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`, `description`) VALUES
(99, 1, 9, 'slide-1', ''),
(100, 1, 9, 'slide-2', ''),
(101, 1, 9, 'slide-3', ''),
(99, 2, 9, 'slide-1', ''),
(100, 2, 9, 'slide-2', ''),
(101, 2, 9, 'slide-3', ''),
(99, 3, 9, 'slide-1', ''),
(100, 3, 9, 'slide-2', ''),
(101, 3, 9, 'slide-3', ''),
(171, 3, 10, 'parallax-1', '&lt;h4&gt;A great source for  &lt;/h4&gt;\r\n&lt;h2&gt;luxury&lt;/h2&gt;\r\n&lt;h2&gt;watches&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.&lt;/p&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=43&quot;&gt;Shop now!&lt;/a&gt;'),
(171, 2, 10, 'parallax-1', '&lt;h4&gt;A great source for  &lt;/h4&gt;\r\n&lt;h2&gt;luxury&lt;/h2&gt;\r\n&lt;h2&gt;watches&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.&lt;/p&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=43&quot;&gt;Shop now!&lt;/a&gt;'),
(180, 2, 14, 'banner-1', '&lt;h2&gt;Body&lt;/h2&gt;\r\n&lt;h2&gt;Kits&lt;/h2&gt;\r\n'),
(180, 3, 14, 'banner-1', '&lt;h2&gt;Body&lt;/h2&gt;\r\n&lt;h2&gt;Kits&lt;/h2&gt;\r\n'),
(179, 3, 14, 'banner-1', '&lt;h2&gt;Custom &lt;/h2&gt;\r\n&lt;h2&gt;Wheels &lt;/h2&gt;\r\n'),
(180, 1, 14, 'banner-1', '&lt;h2&gt;Body&lt;/h2&gt;\r\n&lt;h2&gt;Kits&lt;/h2&gt;\r\n'),
(179, 2, 14, 'banner-1', '&lt;h2&gt;Custom &lt;/h2&gt;\r\n&lt;h2&gt;Wheels &lt;/h2&gt;\r\n'),
(171, 1, 10, 'parallax-1', '&lt;h4&gt;A great source for  &lt;/h4&gt;\r\n&lt;h2&gt;luxury&lt;/h2&gt;\r\n&lt;h2&gt;watches&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.&lt;/p&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=43&quot;&gt;Shop now!&lt;/a&gt;'),
(176, 3, 15, 'slide-3', ''),
(175, 2, 15, 'slide-2', ''),
(175, 3, 15, 'slide-2', ''),
(176, 1, 15, 'slide-3', ''),
(176, 2, 15, 'slide-3', ''),
(178, 2, 14, 'banner-1', '&lt;h2&gt;Headlights&lt;/h2&gt;\r\n'),
(178, 3, 14, 'banner-1', '&lt;h2&gt;Headlights&lt;/h2&gt;\r\n'),
(179, 1, 14, 'banner-1', '&lt;h2&gt;Custom &lt;/h2&gt;\r\n&lt;h2&gt;Wheels &lt;/h2&gt;\r\n'),
(177, 3, 14, 'banner-1', '&lt;h2&gt;BRAKE&lt;/h2&gt;\r\n&lt;h2&gt;Systems&lt;/h2&gt;'),
(178, 1, 14, 'banner-1', '&lt;h2&gt;Headlights&lt;/h2&gt;\r\n\r\n'),
(177, 1, 14, 'banner-1', '&lt;h2&gt;BRAKE&lt;/h2&gt;\r\n&lt;h2&gt;Systems&lt;/h2&gt;\r\n'),
(177, 2, 14, 'banner-1', '&lt;h2&gt;BRAKE&lt;/h2&gt;\r\n&lt;h2&gt;Systems&lt;/h2&gt;'),
(174, 1, 15, 'slide-1', ''),
(174, 2, 15, 'slide-', ''),
(174, 3, 15, 'slide-1', ''),
(175, 1, 15, 'slide-2', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=464 ;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(410, 'module', 'banner'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(432, 'module', 'tm_fbbox'),
(408, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(427, 'module', 'featured'),
(428, 'module', 'parallax'),
(433, 'module', 'bestseller'),
(434, 'module', 'latest'),
(435, 'module', 'special'),
(436, 'module', 'affiliate'),
(437, 'module', 'information'),
(438, 'module', 'tm_slideshow'),
(442, 'module', 'tm_google_map'),
(440, 'module', 'olark'),
(449, 'module', 'tm_social_list'),
(462, 'module', 'tm_single_category_product'),
(458, 'module', 'filter'),
(459, 'module', 'tm_category_menu'),
(460, 'module', 'tm_newsletter'),
(461, 'module', 'html'),
(463, 'module', 'tm_newsletter_popup');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=868 ;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(407, 12, 'olark.50', 'footer_top', 1),
(830, 10, 'bestseller.43', 'column_left', 1),
(852, 13, 'tm_newsletter.79', 'column_left', 2),
(847, 5, 'olark.50', 'footer_top', 1),
(664, 8, 'tm_google_map.54', 'content_top', 0),
(838, 4, 'latest.69', 'column_left', 1),
(843, 3, 'olark.50', 'footer_top', 1),
(415, 11, 'olark.50', 'footer_top', 1),
(420, 2, 'olark.50', 'footer_top', 1),
(851, 13, 'olark.50', 'footer_top', 1),
(865, 1, 'tm_single_category_product.83', 'content_top', 3),
(825, 6, 'olark.50', 'footer_top', 1),
(829, 10, 'olark.50', 'footer_top', 1),
(658, 7, 'olark.50', 'footer_top', 1),
(663, 8, 'olark.50', 'footer_top', 1),
(837, 4, 'tm_category_menu.78', 'column_left', 0),
(846, 5, 'tm_category_menu.78', 'column_left', 0),
(850, 13, 'special.67', 'column_left', 1),
(661, 9, 'olark.50', 'footer_top', 1),
(844, 3, 'tm_category_menu.78', 'column_left', 0),
(842, 3, 'featured.28', 'column_left', 1),
(866, 1, 'tm_single_category_product.84', 'content_top', 4),
(864, 1, 'html.81', 'content_bottom', 0),
(863, 1, 'tm_single_category_product.82', 'content_top', 2),
(862, 1, 'html.80', 'column_left', 5),
(861, 1, 'tm_newsletter.79', 'column_left', 4),
(860, 1, 'featured.28', 'column_left', 1),
(859, 1, 'tm_category_menu.78', 'column_left', 0),
(857, 1, 'tm_slideshow.46', 'content_top', 0),
(858, 1, 'banner.33', 'content_top', 1),
(856, 1, 'olark.50', 'footer_top', 1),
(855, 1, 'special.67', 'column_left', 2),
(854, 1, 'tm_fbbox.42', 'column_left', 3),
(826, 6, 'tm_category_menu.78', 'column_left', 0),
(827, 6, 'featured.28', 'column_left', 1),
(828, 6, 'tm_newsletter.79', 'column_left', 2),
(831, 10, 'tm_category_menu.78', 'column_left', 0),
(832, 10, 'tm_newsletter.79', 'column_left', 2),
(841, 3, 'latest.69', 'column_left', 2),
(839, 4, 'olark.50', 'footer_top', 1),
(840, 4, 'tm_newsletter.79', 'column_left', 2),
(845, 3, 'tm_newsletter.79', 'column_left', 3),
(848, 5, 'featured.28', 'column_left', 1),
(849, 5, 'tm_newsletter.79', 'column_left', 2),
(853, 13, 'tm_category_menu.78', 'column_left', 0),
(867, 1, 'tm_newsletter_popup.85', 'header_top', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=218 ;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(210, 6, 0, 'account/%'),
(211, 10, 0, 'affiliate/%'),
(214, 3, 0, 'product/category'),
(217, 1, 0, 'common/home'),
(148, 2, 0, 'product/product'),
(146, 11, 0, 'information/information'),
(185, 7, 0, 'checkout/%'),
(189, 8, 0, 'information/contact'),
(187, 9, 0, 'information/sitemap'),
(213, 4, 0, ''),
(215, 5, 0, 'product/manufacturer'),
(143, 12, 0, 'product/compare'),
(216, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(33, 'banners', 'banner', 'a:5:{s:4:"name";s:7:"banners";s:9:"banner_id";s:2:"14";s:5:"width";s:3:"416";s:6:"height";s:3:"172";s:6:"status";s:1:"1";}'),
(28, 'Featured  Aside', 'featured', 'a:6:{s:4:"name";s:15:"Featured  Aside";s:7:"product";a:8:{i:0;s:2:"43";i:1;s:2:"40";i:2;s:2:"30";i:3;s:2:"42";i:4;s:2:"33";i:5;s:2:"46";i:6;s:2:"32";i:7;s:2:"28";}s:5:"limit";s:1:"3";s:5:"width";s:3:"100";s:6:"height";s:2:"90";s:6:"status";s:1:"1";}'),
(34, 'Parralax-1', 'parallax', 'a:5:{s:4:"name";s:10:"Parralax-1";s:9:"banner_id";s:2:"10";s:5:"width";s:4:"2050";s:6:"height";s:4:"1446";s:6:"status";s:1:"1";}'),
(46, 'Tm Slideshow', 'tm_slideshow', 'a:5:{s:4:"name";s:12:"Tm Slideshow";s:9:"banner_id";s:2:"15";s:5:"width";s:3:"870";s:6:"height";s:3:"422";s:6:"status";s:1:"1";}'),
(50, 'Olark Chat', 'olark', 'a:4:{s:4:"name";s:10:"Olark Chat";s:13:"olark_version";s:5:"2.0.0";s:13:"olark_site_id";s:16:"7830-582-10-3714";s:6:"status";s:1:"1";}'),
(42, 'Facebook', 'tm_fbbox', 'a:10:{s:4:"name";s:8:"Facebook";s:8:"page_url";s:40:"https://www.facebook.com/TemplateMonster";s:6:"app_id";s:15:"734741803247761";s:13:"show_facepile";s:4:"true";s:2:"bg";s:4:"true";s:10:"show_posts";s:5:"false";s:5:"width";s:3:"270";s:6:"height";s:3:"215";s:8:"language";s:5:"en_US";s:6:"status";s:1:"1";}'),
(43, 'Bestsellers Aside', 'bestseller', 'a:5:{s:4:"name";s:17:"Bestsellers Aside";s:5:"limit";s:1:"1";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(84, 'Brake Discs', 'tm_single_category_product', 'a:14:{s:4:"name";s:11:"Brake Discs";s:4:"path";s:11:"BRAKE DISCS";s:8:"category";s:2:"18";s:4:"tabs";s:1:"1";s:4:"type";s:1:"3";s:7:"special";s:1:"1";s:10:"bestseller";s:1:"0";s:6:"latest";s:1:"1";s:8:"featured";s:1:"1";s:7:"product";a:5:{i:0;s:2:"47";i:1;s:2:"29";i:2;s:2:"45";i:3;s:2:"46";i:4;s:2:"36";}s:5:"limit";s:1:"5";s:5:"width";s:3:"220";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
(54, 'Google Map', 'tm_google_map', 'a:16:{s:4:"name";s:10:"Google Map";s:17:"tm_google_map_key";s:0:"";s:6:"status";s:1:"1";s:18:"tm_google_map_zoom";s:2:"14";s:18:"tm_google_map_type";s:1:"1";s:20:"tm_google_map_sensor";s:4:"true";s:19:"tm_google_map_width";s:4:"100%";s:20:"tm_google_map_height";s:5:"440px";s:20:"tm_google_map_styles";s:2051:"                                                                                                                                                                                                                                                    [{&quot;featureType&quot;:&quot;landscape&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;lightness&quot;:65},{&quot;visibility&quot;:&quot;on&quot;}]},{&quot;featureType&quot;:&quot;poi&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;lightness&quot;:51},{&quot;visibility&quot;:&quot;simplified&quot;}]},{&quot;featureType&quot;:&quot;road.highway&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;visibility&quot;:&quot;simplified&quot;}]},{&quot;featureType&quot;:&quot;road.arterial&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;lightness&quot;:30},{&quot;visibility&quot;:&quot;on&quot;}]},{&quot;featureType&quot;:&quot;road.local&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;lightness&quot;:40},{&quot;visibility&quot;:&quot;on&quot;}]},{&quot;featureType&quot;:&quot;transit&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;visibility&quot;:&quot;simplified&quot;}]},{&quot;featureType&quot;:&quot;administrative.province&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;off&quot;}]},{&quot;featureType&quot;:&quot;water&quot;,&quot;elementType&quot;:&quot;labels&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;on&quot;},{&quot;lightness&quot;:-25},{&quot;saturation&quot;:-100}]},{&quot;featureType&quot;:&quot;water&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;hue&quot;:&quot;#ffff00&quot;},{&quot;lightness&quot;:-25},{&quot;saturation&quot;:-97}]}]                                                                                                                                                                                                                                                                                                        ";s:24:"tm_google_map_disable_ui";s:5:"false";s:25:"tm_google_map_scrollwheel";s:5:"false";s:23:"tm_google_map_draggable";s:4:"true";s:20:"tm_google_map_marker";s:0:"";s:27:"tm_google_map_marker_active";s:0:"";s:26:"tm_google_map_marker_width";s:0:"";s:27:"tm_google_map_marker_height";s:0:"";}'),
(82, 'Bumpers &amp; Components', 'tm_single_category_product', 'a:14:{s:4:"name";s:24:"Bumpers &amp; Components";s:4:"path";s:24:"BUMPERS &amp; COMPONENTS";s:8:"category";s:2:"25";s:4:"tabs";s:1:"1";s:4:"type";s:1:"2";s:7:"special";s:1:"1";s:10:"bestseller";s:1:"0";s:6:"latest";s:1:"1";s:8:"featured";s:1:"1";s:7:"product";a:5:{i:0;s:2:"43";i:1;s:2:"31";i:2;s:2:"46";i:3;s:2:"49";i:4;s:2:"32";}s:5:"limit";s:1:"4";s:5:"width";s:3:"220";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
(83, 'Grilles', 'tm_single_category_product', 'a:14:{s:4:"name";s:7:"Grilles";s:4:"path";s:24:"GRILLES &amp; COMPONENTS";s:8:"category";s:2:"20";s:4:"tabs";s:1:"1";s:4:"type";s:1:"3";s:7:"special";s:1:"1";s:10:"bestseller";s:1:"0";s:6:"latest";s:1:"1";s:8:"featured";s:1:"1";s:7:"product";a:5:{i:0;s:2:"35";i:1;s:2:"47";i:2;s:2:"49";i:3;s:2:"48";i:4;s:2:"43";}s:5:"limit";s:1:"5";s:5:"width";s:3:"220";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
(67, 'Specials Aside', 'special', 'a:5:{s:4:"name";s:14:"Specials Aside";s:5:"limit";s:1:"3";s:5:"width";s:3:"100";s:6:"height";s:2:"90";s:6:"status";s:1:"1";}'),
(68, 'Latest Home', 'latest', 'a:5:{s:4:"name";s:11:"Latest Home";s:5:"limit";s:1:"4";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(69, 'Latest Aside', 'latest', 'a:5:{s:4:"name";s:12:"Latest Aside";s:5:"limit";s:1:"1";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(78, 'Menu', 'tm_category_menu', 'a:6:{s:4:"name";s:4:"Menu";s:6:"status";s:1:"1";s:5:"limit";s:1:"7";s:5:"image";a:1:{i:0;s:18:"catalog/sub-bg.jpg";}s:11:"image_width";a:1:{i:0;s:3:"321";}s:12:"image_height";a:1:{i:0;s:3:"421";}}'),
(85, 'Popup', 'tm_newsletter_popup', 'a:7:{s:4:"name";s:5:"Popup";s:19:"newsletter_popup_bg";s:20:"catalog/popup-bg.jpg";s:25:"newsletter_popup_bg_width";s:3:"571";s:26:"newsletter_popup_bg_height";s:3:"371";s:23:"newsletter_popup_cookie";s:3:"600";s:31:"tm_newsletter_popup_description";a:3:{i:1;a:2:{s:5:"title";s:10:"Newsletter";s:11:"description";s:125:"Subscribe to the Car tuning mailing list to receive updates on \r\nnew arrivals, special offers and other discount information.";}i:2;a:2:{s:5:"title";s:10:"Newsletter";s:11:"description";s:125:"Subscribe to the Car tuning mailing list to receive updates on \r\nnew arrivals, special offers and other discount information.";}i:3;a:2:{s:5:"title";s:10:"Newsletter";s:11:"description";s:125:"Subscribe to the Car tuning mailing list to receive updates on \r\nnew arrivals, special offers and other discount information.";}}s:6:"status";s:1:"1";}'),
(79, 'newsletter', 'tm_newsletter', 'a:3:{s:4:"name";s:10:"newsletter";s:6:"status";s:1:"1";s:25:"tm_newsletter_description";a:3:{i:1;a:1:{s:11:"description";s:0:"";}i:2;a:1:{s:11:"description";s:0:"";}i:3;a:1:{s:11:"description";s:0:"";}}}'),
(80, 'Testimonials', 'html', 'a:3:{s:4:"name";s:12:"Testimonials";s:18:"module_description";a:3:{i:1;a:2:{s:5:"title";s:12:"testimonials";s:11:"description";s:704:"&lt;div&gt;\r\n&lt;blockquote&gt;\r\n    &lt;p&gt;The bottom line for us is time saving. Your service saves us about four hours a week in tedious work whilst giving us better quality performance than we could hope&lt;/p&gt;\r\n\r\n\r\n\r\n    &lt;cite&gt;&lt;strong&gt;Katy -&lt;/strong&gt; customer&lt;/cite&gt;&lt;/blockquote&gt;\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n&lt;div&gt;\r\n&lt;blockquote&gt;\r\n    &lt;p&gt;Your company understands today’s requirements, but that’s not what makes you stand apart. You also understand today’s business world and how to keep customers happy. That is why you win. &lt;/p&gt;\r\n\r\n\r\n\r\n    &lt;cite&gt;&lt;strong&gt;Bill -&lt;/strong&gt; customer&lt;/cite&gt;&lt;/blockquote&gt;\r\n&lt;/div&gt;";}i:2;a:2:{s:5:"title";s:12:"testimonials";s:11:"description";s:704:"&lt;div&gt;\r\n&lt;blockquote&gt;\r\n    &lt;p&gt;The bottom line for us is time saving. Your service saves us about four hours a week in tedious work whilst giving us better quality performance than we could hope&lt;/p&gt;\r\n\r\n\r\n\r\n    &lt;cite&gt;&lt;strong&gt;Katy -&lt;/strong&gt; customer&lt;/cite&gt;&lt;/blockquote&gt;\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n&lt;div&gt;\r\n&lt;blockquote&gt;\r\n    &lt;p&gt;Your company understands today’s requirements, but that’s not what makes you stand apart. You also understand today’s business world and how to keep customers happy. That is why you win. &lt;/p&gt;\r\n\r\n\r\n\r\n    &lt;cite&gt;&lt;strong&gt;Bill -&lt;/strong&gt; customer&lt;/cite&gt;&lt;/blockquote&gt;\r\n&lt;/div&gt;";}i:3;a:2:{s:5:"title";s:12:"testimonials";s:11:"description";s:704:"&lt;div&gt;\r\n&lt;blockquote&gt;\r\n    &lt;p&gt;The bottom line for us is time saving. Your service saves us about four hours a week in tedious work whilst giving us better quality performance than we could hope&lt;/p&gt;\r\n\r\n\r\n\r\n    &lt;cite&gt;&lt;strong&gt;Katy -&lt;/strong&gt; customer&lt;/cite&gt;&lt;/blockquote&gt;\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n&lt;div&gt;\r\n&lt;blockquote&gt;\r\n    &lt;p&gt;Your company understands today’s requirements, but that’s not what makes you stand apart. You also understand today’s business world and how to keep customers happy. That is why you win. &lt;/p&gt;\r\n\r\n\r\n\r\n    &lt;cite&gt;&lt;strong&gt;Bill -&lt;/strong&gt; customer&lt;/cite&gt;&lt;/blockquote&gt;\r\n&lt;/div&gt;";}}s:6:"status";s:1:"1";}'),
(81, 'Features', 'html', 'a:3:{s:4:"name";s:8:"Features";s:18:"module_description";a:3:{i:1;a:2:{s:5:"title";s:8:"features";s:11:"description";s:882:"&lt;div class=&quot;container&quot;&gt;&lt;div class=&quot;row&quot;&gt;    &lt;div class=&quot;col-sm-4&quot;&gt;        &lt;h2 class=&quot;material-icons-local_shipping&quot;&gt;Free shipping&lt;/h2&gt;\r\n\r\n\r\n        &lt;p&gt;Free shipping on most online orders of $99 or more.&lt;/p&gt;\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;        &lt;h2 class=&quot;material-icons-lock&quot;&gt;SAFE &amp;amp; SECURE PAYMENTS&lt;/h2&gt;\r\n\r\n\r\n        &lt;p&gt;You can pay easily and securely with your bank account or credit card at thousands of online stores&lt;/p&gt;\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;        &lt;h2 class=&quot;material-icons-payment&quot;&gt;30 day easy return&lt;/h2&gt;\r\n\r\n\r\n        &lt;p&gt;Need to return something? It is not a problem!&lt;/p&gt;\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n&lt;/div&gt;";}i:2;a:2:{s:5:"title";s:8:"features";s:11:"description";s:882:"&lt;div class=&quot;container&quot;&gt;&lt;div class=&quot;row&quot;&gt;    &lt;div class=&quot;col-sm-4&quot;&gt;        &lt;h2 class=&quot;material-icons-local_shipping&quot;&gt;Free shipping&lt;/h2&gt;\r\n\r\n\r\n        &lt;p&gt;Free shipping on most online orders of $99 or more.&lt;/p&gt;\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;        &lt;h2 class=&quot;material-icons-lock&quot;&gt;SAFE &amp;amp; SECURE PAYMENTS&lt;/h2&gt;\r\n\r\n\r\n        &lt;p&gt;You can pay easily and securely with your bank account or credit card at thousands of online stores&lt;/p&gt;\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;        &lt;h2 class=&quot;material-icons-payment&quot;&gt;30 day easy return&lt;/h2&gt;\r\n\r\n\r\n        &lt;p&gt;Need to return something? It is not a problem!&lt;/p&gt;\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n&lt;/div&gt;";}i:3;a:2:{s:5:"title";s:8:"features";s:11:"description";s:882:"&lt;div class=&quot;container&quot;&gt;&lt;div class=&quot;row&quot;&gt;    &lt;div class=&quot;col-sm-4&quot;&gt;        &lt;h2 class=&quot;material-icons-local_shipping&quot;&gt;Free shipping&lt;/h2&gt;\r\n\r\n\r\n        &lt;p&gt;Free shipping on most online orders of $99 or more.&lt;/p&gt;\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;        &lt;h2 class=&quot;material-icons-lock&quot;&gt;SAFE &amp;amp; SECURE PAYMENTS&lt;/h2&gt;\r\n\r\n\r\n        &lt;p&gt;You can pay easily and securely with your bank account or credit card at thousands of online stores&lt;/p&gt;\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;        &lt;h2 class=&quot;material-icons-payment&quot;&gt;30 day easy return&lt;/h2&gt;\r\n\r\n\r\n        &lt;p&gt;Need to return something? It is not a problem!&lt;/p&gt;\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n&lt;/div&gt;";}}s:6:"status";s:1:"1";}');