package com.example.mybatisplus.service.impl;

import com.example.mybatisplus.entity.Article;
import com.example.mybatisplus.mapper.ArticleMapper;
import com.example.mybatisplus.service.IArticleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author LBK
 * @since 2019-12-18
 */
@Service
public class ArticleServiceImpl extends ServiceImpl<ArticleMapper, Article> implements IArticleService {

}
