package org.h.seckill.dao;

import org.h.seckill.entity.SuccessKilled;

/**
 * Created by h on 2017-02-10.
 */
public interface SuccessKilledDao {

    /**
     * 插入购买明细,可过滤重复
     * @param seckillId
     * @param userPhone
     * @return
     * 插入的行数
     */
    int insertSuccessKilled(long seckillId,long userPhone);

    /**
     * 根据id查询SuccessKilled并携带秒杀产品对象实体
     * @param seckillId
     * @return
     */
    SuccessKilled queryByIdWithSeckill(long seckillId,long userPhone);



}
