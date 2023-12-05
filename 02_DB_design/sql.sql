create table `ry-vue`.my_counter
(
    id     int         not null comment 'id',
    name   varchar(16) not null comment '编号名称',
    prefix varchar(32) not null comment '前缀',
    digit  int         not null comment '数字长度，数字位数',
    curnum int         not null comment '当前值'
)
    comment '编号，号码，id等规则生成器=前缀+数字';

create table `ry-vue`.my_images
(
    master_id   varchar(255) not null comment '主表的唯一标识',
    name        varchar(255) not null comment '图片名',
    create_time datetime     null comment '创建时间'
)
    comment '图文动态副表';

create table `ry-vue`.my_imagetext
(
    id          varchar(64) charset utf8mb3  not null comment '唯一标识',
    title       varchar(32)                  not null comment '标题',
    text        varchar(512) charset utf8mb3 null comment '文本内容',
    place       varchar(64)                  not null comment '地点',
    create_time datetime                     not null comment '时间'
)
    comment '图文动态主表';

create table `ry-vue`.my_message
(
    id          varchar(16)            not null comment '唯一标志',
    name        varchar(32)            not null comment '昵称',
    name_color  varchar(16)            not null comment '昵称颜色',
    name_effect varchar(16)            not null comment '昵称颜色深浅',
    text        varchar(64)            not null comment '留言内容',
    status      varchar(1) default '0' not null comment '状态,0-fail,1-pass',
    link        varchar(256)           null comment '友链地址,为空则非友链',
    create_time datetime               not null
)
    comment '留言板';

create table `ry-vue`.my_portfolio
(
    id        bigint auto_increment
        primary key,
    title     varchar(64)   not null comment '标题',
    file_url  varchar(128)  not null comment '图片url',
    tags      varchar(128)  not null comment '标签',
    url       varchar(128)  not null comment '链接url',
    order_num int default 0 not null comment '排序'
)
    comment '个人作品集';

