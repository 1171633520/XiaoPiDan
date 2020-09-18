package com.yj.resume.vo;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import org.apache.ibatis.type.Alias;

import java.io.Serializable;

/**
 * @title: Resume_expos
 * @package: com.yj.resume.vo
 * @projectName: ZTC
 * @description:期望职位
 * @author: jie.yuan
 * @date: 2020/9/3 0003 16:37
 * 注意:该代码仅为南京正厚内部传阅，严禁其他商业用途！
 */
@Data
@Alias("expos")
@TableName("resume_expos")
public class Resume_expos implements Serializable {
    @TableId
    @TableField(exist = false)
    private int eid;
    private int resume_id;
    private String ejt;//求职类型
    private String eep;//期望职位
    private String esal_min;//最低薪资
    private String esal_max;//最高薪资
    private String eindustry;//行业
    private String ecity;//城市

    @Override
    public String toString() {
        return "Resume_expos{" +
                "eid=" + eid +
                ", resume_id=" + resume_id +
                ", ejt='" + ejt + '\'' +
                ", eep='" + eep + '\'' +
                ", esal_min='" + esal_min + '\'' +
                ", esal_max='" + esal_max + '\'' +
                ", eindustry='" + eindustry + '\'' +
                ", ecity='" + ecity + '\'' +
                '}';
    }
}