package com.yj.resume.vo;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import org.apache.ibatis.type.Alias;

import java.io.Serializable;

/**
 * @title: Resume
 * @package: com.yj.resume.vo
 * @projectName: ZTC
 * @description:简历
 * @author: jie.yuan
 * @date: 2020/9/2 0002 11:54
 * 注意:该代码仅为南京正厚内部传阅，严禁其他商业用途！
 */
@Data
@Alias("resume")
@TableName("resume")
public class Resume implements Serializable {
    @TableId
    @TableField(exist = false)
    private int resume_id;
    private String resume_name;
    @TableField(exist = false)
    private Resume_perInfo perInfos;
    @TableField(exist = false)
    private Resume_expos expos;
    @TableField(exist = false)
    private Resume_project project;
    @TableField(exist = false)
    private Resume_internship internship;
}