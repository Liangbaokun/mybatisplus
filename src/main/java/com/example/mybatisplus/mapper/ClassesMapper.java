package com.example.mybatisplus.mapper;

import com.example.mybatisplus.entity.Classes;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import javax.validation.constraints.Max;
import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author LBK
 * @since 2019-12-16
 */
public interface ClassesMapper extends BaseMapper<Classes> {

    List<Classes> queryClazzList();

}
