package com.example.mybatisplus.mapper;

import com.example.mybatisplus.entity.Student;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author LBK
 * @since 2019-12-16
 */
public interface StudentMapper extends BaseMapper<Student> {

    List<Student> queryStudentList();

    List<Student> queryStudentByClazzId(int id);

}
