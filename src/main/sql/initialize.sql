-- 数据库初始化脚本
-- mysql(version=5.6.26)

--创建数据库
create database seckill;

--使用数据库
use seckill;

--创建秒杀库存表
create table seckill(
CREATE TABLE seckill (
  `seckill_id`  BIGINT       NOT NULL  AUTO_INCREMENT
  COMMENT '商品库存id',
  `name`        VARCHAR(120) NOT NULL
  COMMENT '商品名称',
  `number`      INT          NOT NULL
  COMMENT '库存数量',
  `start_time`  TIMESTAMP    NOT NULL
  COMMENT '秒杀开启时间',
  `end_time`    TIMESTAMP    NOT NULL
  COMMENT '秒杀结束时间',
  `create_time` TIMESTAMP    NOT NULL
  COMMENT '创建时间',
  PRIMARY KEY (seckill_id),
  KEY idx_start_time(start_time),
  KEY idx_end_time(end_time),
  KEY idx_create_time(create_time)
)
  ENGINE = innoDB
  AUTO_INCREMENT = 1000
  DEFAULT CHARSET = utf8
  COMMENT = '秒杀库存表';

-- 初始化数据
INSERT INTO
  seckill (name, number, start_time, end_time, create_time)
VALUES
  ('1000元秒杀iphone6', 100, '2017-2-11 00:00:00', '2016-2-23 15:00:00', now()),
  ('500元秒杀ipad2', 200, '2017-2-11 20:00:00', '2016-2-12 15:00:00', now()),
  ('300元秒杀小米4', 300, '2017-2-10  00:00:00', '2016-3-10 15:00:00', now()),
  ('200元秒杀红米note', 400, '2017-2-10  00:00:00', '2016-2-10  15:00:00', now());

-- 秒杀成功明细表
-- 用户登录认证相关的信息
CREATE TABLE success_killed (
  `seckill_id`  BIGINT    NOT NULL  AUTO_INCREMENT
  COMMENT '商品库存id',
  `user_phone`  BIGINT    NOT NULL
  COMMENT '用户手机号',
  `state`        TINYINT   NOT NULL  DEFAULT -1
  COMMENT '状态标志: -1:无效  0:成功  1:已付款',
  `create_time` TIMESTAMP NOT NULL
  COMMENT '创建时间',
  PRIMARY KEY (seckill_id, user_phone),
  KEY idx_create_time(create_time)
)
  ENGINE = innoDB
  AUTO_INCREMENT = 1000
  DEFAULT CHARSET = utf8
  COMMENT = '秒杀成功明细表';