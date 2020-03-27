package com.example.mybatisplus.entity;

    import com.baomidou.mybatisplus.annotation.IdType;
    import com.baomidou.mybatisplus.annotation.TableId;
    import com.baomidou.mybatisplus.annotation.TableField;
    import java.io.Serializable;
    import lombok.Data;
    import lombok.EqualsAndHashCode;
    import lombok.experimental.Accessors;

/**
* <p>
    * 
    * </p>
*
* @author LBK
* @since 2019-12-16
*/
    /*@Data
        @EqualsAndHashCode(callSuper = false)
    @Accessors(chain = true)*/
    public class Student implements Serializable {

    private static final long serialVersionUID = 1L;

            @TableId(value = "sId", type = IdType.AUTO)
    private Integer sId;

    private String name;

    private String sex;

    private Integer age;

    private Integer class_Id;

    private Classes classes;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getsId() {
        return sId;
    }

    public void setsId(Integer sId) {
        this.sId = sId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getClass_Id() {
        return class_Id;
    }

    public void setClass_Id(Integer class_Id) {
        this.class_Id = class_Id;
    }

    public Classes getClasses() {
        return classes;
    }

    public void setClasses(Classes classes) {
        this.classes = classes;
    }

    @Override
    public String toString() {
        return "Student{" +
                "sId=" + sId +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                ", class_Id=" + class_Id +
                ", classes=" + classes +
                '}';
    }
}
