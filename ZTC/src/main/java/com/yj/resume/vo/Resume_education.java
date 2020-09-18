package com.yj.resume.vo;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import org.apache.ibatis.type.Alias;

/**
 * @title: Resume_education
 * @package: com.yj.resume.vo
 * @projectName: ZTC
 * @description:
 * @author: jie.yuan
 * @date: 2020/9/10 0010 17:05
 * 注意:该代码仅为南京正厚内部传阅，严禁其他商业用途！
 */
@Data
@Alias("education")
@TableName("resume_education")
public class Resume_education {
    @TableId
    @TableField(exist = false)
    private int eid;
    private int resume_id;
    private String eschName;//学校名称
    private String erecord;//学历
    private String emajor;//专业
    private String edu_ft;//教育开始时间
    private String edu_lt;//教育结束时间
    private String eexp;//在校经历

    @Override
    public String toString() {
        return "Resume_education{" +
                "eid=" + eid +
                ", resume_id=" + resume_id +
                ", eschName='" + eschName + '\'' +
                ", erecord='" + erecord + '\'' +
                ", emajor='" + emajor + '\'' +
                ", edu_ft='" + edu_ft + '\'' +
                ", edu_lt='" + edu_lt + '\'' +
                ", eexp='" + eexp + '\'' +
                '}';
    }
}
