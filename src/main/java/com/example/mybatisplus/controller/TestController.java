package com.example.mybatisplus.controller;

import com.example.mybatisplus.entity.Article;
import com.example.mybatisplus.mapper.ArticleMapper;
import com.example.mybatisplus.utile.RedisUtil;
import com.sun.org.apache.bcel.internal.generic.NEW;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;

@RestController
public class TestController {
    @Autowired
    RedisUtil redisUtil;
    @Autowired
    ArticleMapper articleMapper;


    @RequestMapping("/set")
    public String set() {
        BigDecimal bigDecimal = BigDecimal.valueOf(2.50);
//        Article article =new Article(20,"lbk",bigDecimal,"22",null);
        Article article=articleMapper.findArticleId(1);

        redisUtil.set("article", article);
//        redisUtil.expire("article",10);
        return "success saved user !";
    }
    @RequestMapping("/getTime")
    public String getTime() {
       long b= redisUtil.getExpire("article");
        return "success saved user !" +b;
    }

    @RequestMapping("/sets")
    public String sets() {
        BigDecimal bigDecimal = BigDecimal.valueOf(2.50);
        Article lbk =new Article(20,"lbk",bigDecimal,"lkkbb",null);
        redisUtil.set("lbk", lbk);
        return "success saved user !";
    }

    @RequestMapping("/get")
    public String get() {
        Article article = (Article) redisUtil.get("article");
        return article.toString();
    }

    @RequestMapping("/gets")
    public String gets() {
        Article article = (Article) redisUtil.get("article");
        return article.toString();
    }
    @RequestMapping("/det")
    public String det() {
         redisUtil.del("article");
        return "detOK";
    }
    @RequestMapping("/lbk")
    public String getssss() {
        Article article = (Article) redisUtil.get("lbk");
        return article.toString();
    }
}
