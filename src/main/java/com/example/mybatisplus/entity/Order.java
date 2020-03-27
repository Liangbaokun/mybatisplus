package com.example.mybatisplus.entity;

    import com.baomidou.mybatisplus.annotation.TableId;
    import java.time.LocalDateTime;
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
    public class Order implements Serializable {

    private static final long serialVersionUID = 1L;

            @TableId("oId")
    private Integer oId;

    private String code;

    private String total;

    private LocalDateTime date;

    private List<Article> articles;



}
