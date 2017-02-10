# 搭建高并发秒杀系统
## 系统阐述
1.基于Spring&SpringMvc&MyBatis框架,数据库使用mySQL.
2.前端页面使用了Bootstrap,并采用其公共CDN进行静态分离加速.
3.对可能存在高并发业务进行Redis缓存,因单库所以未做库表分离.

