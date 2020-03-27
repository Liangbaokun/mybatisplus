package com.example.mybatisplus.service.impl;

import com.example.mybatisplus.entity.Classes;
import com.example.mybatisplus.mapper.ClassesMapper;
import com.example.mybatisplus.service.IClassesService;
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
public class ClassesServiceImpl extends ServiceImpl<ClassesMapper, Classes> implements IClassesService {

}
