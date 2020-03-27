package com.example.mybatisplus.mapper;

import com.example.mybatisplus.entity.Order;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author LBK
 * @since 2019-12-18
 */
public interface OrderMapper extends BaseMapper<Order> {

    List<Order> findOrderByArticleId(int articleId);

}
