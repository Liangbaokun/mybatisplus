package com.example.mybatisplus.entity;

    import com.baomidou.mybatisplus.annotation.IdType;
    import com.baomidou.mybatisplus.annotation.TableId;
    import java.io.Serializable;
    import java.util.List;

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
 /*   @Data
        @EqualsAndHashCode(callSuper = false)
    @Accessors(chain = true)*/
    public class Classes implements Serializable {

    private static final long serialVersionUID = 1L;

            @TableId(value = "cId", type = IdType.AUTO)
    private Integer cId;

    private String calssName;

    private String code;

    private List<Student> studentList;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public String getCalssName() {
        return calssName;
    }

    public void setCalssName(String calssName) {
        this.calssName = calssName;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public List<Student> getStudentList() {
        return studentList;
    }

    public void setStudentList(List<Student> studentList) {
        this.studentList = studentList;
    }

    @Override
    public String toString() {
        return "Classes{" +
                "cId=" + cId +
                ", calssName='" + calssName + '\'' +
                ", code='" + code + '\'' +
                ", studentList=" + studentList +
                '}';
    }
}
