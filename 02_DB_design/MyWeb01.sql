CREATE TABLE `myweb_imagetext` (
  `id` varchar(255) PRIMARY KEY COMMENT 'YYYYMMDDHHMMSS',
  `text` varchar(255) COMMENT '文字内容',
  `created_time` datetime COMMENT '创建时间'
);

CREATE TABLE `myweb_images` (
  `id` varchar(255) PRIMARY KEY AUTO_INCREMENT COMMENT 'YYYYMMDDHHMMSS',
  `it_id` varchar(255) COMMENT 'YYYYMMDDHHMMSS',
  `url` varchar(255) COMMENT '图片链接'
);

CREATE TABLE `myweb_messageboard` (
  `id` varchar(255) PRIMARY KEY COMMENT 'YYYYMMDDHHMMSS',
  `text` varchar(255) COMMENT '文字内容',
  `created_time` datetime COMMENT '创建时间',
  `created_by` varchar(255) COMMENT '创建人'
);

ALTER TABLE `myweb_imagetext` COMMENT = '动态';

ALTER TABLE `myweb_images` COMMENT = '动态图片';

ALTER TABLE `myweb_messageboard` COMMENT = '留言板';

ALTER TABLE `myweb_images` ADD FOREIGN KEY (`it_id`) REFERENCES `myweb_imagetext` (`id`);
