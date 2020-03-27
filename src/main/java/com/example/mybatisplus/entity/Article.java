package com.example.mybatisplus.entity;

    import java.math.BigDecimal;
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
* @since 2019-12-18
*/
    @Data
        @EqualsAndHashCode(callSuper = false)
    @Accessors(chain = true)
    public class Article implements Serializable {

    private static final long serialVersionUID = 1L;

            @TableId(value = "aId", type = IdType.AUTO)
    private Integer aId;

    private String name;

    private BigDecimal price;

    private String remark;

    private List<Order> orders;

    public Article(){

    }

    public Article(Integer aId, String name, BigDecimal price, String remark, List<Order> orders) {
        this.aId = aId;
        this.name = name;
        this.price = price;
        this.remark = remark;
        this.orders = orders;
    }

    @Override
    public String toString() {
        return "Article{" +
                "aId=" + aId +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", remark='" + remark + '\'' +
                ", orders=" + orders +
                '}';
    }
}
