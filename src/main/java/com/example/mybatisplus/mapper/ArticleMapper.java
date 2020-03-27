package com.example.mybatisplus.mapper;

import com.example.mybatisplus.entity.Article;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;
import java.util.ListResourceBundle;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author LBK
 * @since 2019-12-18
 */
public interface ArticleMapper extends BaseMapper<Article> {

    List<Article> findArticleByoOrderId(int orderId);

    List<Article> findArticleById(int articleId);

    Article findArticleId(int articleId);

}
