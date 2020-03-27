package com.example.mybatisplus;

import com.example.mybatisplus.entity.Article;
import com.example.mybatisplus.entity.Classes;
import com.example.mybatisplus.entity.Student;
import com.example.mybatisplus.mapper.ArticleMapper;
import com.example.mybatisplus.mapper.ClassesMapper;
import com.example.mybatisplus.mapper.StudentMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.web.bind.annotation.RequestMapping;

import java.math.BigDecimal;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class MybatisplusApplicationTests {
    @Autowired
    StudentMapper studentMapper;
    @Autowired
    ClassesMapper classesMapper;
    @Autowired
    ArticleMapper articleMapper;


    @Test
    public void set() {
        Article article=articleMapper.findArticleId(1);
        System.out.println(article.toString());
    }



    @Test
    public void contextLoads() {

    }

    @Test
    public void studentList() {
        List<Student> students = studentMapper.queryStudentList();
        for (Student s:students
             ) {
            System.out.println("学生信息："+s.toString());
        }
    }


    @Test
    public void studentList2() {
        int b = 1;

        List<Student> students = studentMapper.queryStudentByClazzId(b);
        for (Student s:students
        ) {
            System.out.println(b+"班级信息："+s.toString());
        }
    }

    @Test
    public void queryClazzList() {
        List<Classes> classes = classesMapper.queryClazzList();
        for (Classes c:classes
        ) {
            System.out.println("全部班级："+c.toString());
        }
    }
}
