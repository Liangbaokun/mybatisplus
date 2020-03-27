package com.example.mybatisplus.service.impl;

import com.example.mybatisplus.entity.Student;
import com.example.mybatisplus.mapper.StudentMapper;
import com.example.mybatisplus.service.IStudentService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author LBK
 * @since 2019-12-16
 */
@Service
public class StudentServiceImpl extends ServiceImpl<StudentMapper, Student> implements IStudentService {

}
