package org.h.seckill.exception;

/**
 * 秒杀相关业务异常
 * Created by h on 2017-02-10.
 */
public class SeckillException extends RuntimeException {

    public SeckillException(String message) {
        super(message);
    }

    public SeckillException(String message, Throwable cause) {
        super(message, cause);
    }
}