package com.yj.resume.vo;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import org.apache.ibatis.type.Alias;

/**
 * @title: Resume_advantage
 * @package: com.yj.resume.vo
 * @projectName: ZTC
 * @description:
 * @author: jie.yuan
 * @date: 2020/9/10 0010 17:48
 * 注意:该代码仅为南京正厚内部传阅，严禁其他商业用途！
 */
@Data
@Alias("advantage")
@TableName("resume_advantage")
public class Resume_advantage {
    @TableId
    @TableField(exist = false)
    private int aid;
    private int resume_id;
    private String advantage;//个人优势

    @Override
    public String toString() {
        return "Resume_advantage{" +
                "aid=" + aid +
                ", resume_id=" + resume_id +
                ", advantage='" + advantage + '\'' +
                '}';
    }
}
