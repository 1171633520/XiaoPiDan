package com.yj.resume.vo;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import org.apache.ibatis.type.Alias;

import java.io.Serializable;

/**
 * @title: Resume_project
 * @package: com.yj.resume.vo
 * @projectName: ZTC
 * @description:项目经历
 * @author: jie.yuan
 * @date: 2020/9/7 0007 17:16
 * 注意:该代码仅为南京正厚内部传阅，严禁其他商业用途！
 */
@Data
@Alias("project")
@TableName("resume_project")
public class Resume_project implements Serializable {
    @TableId
    @TableField(exist = false)
    private int pid;
    private int resume_id;
    private String pname2;//项目名称
    private String prole;//项目角色
    private String plink;//项目链接
    private String pdev_ft;//项目开始时间
    private String pdev_lt;//项目结束时间
    private String pcon;//项目内容
    private String pperf;//项目业绩

    @Override
    public String toString() {
        return "Resume_project{" +
                "pid=" + pid +
                ", resume_id=" + resume_id +
                ", pname2='" + pname2 + '\'' +
                ", prole='" + prole + '\'' +
                ", plink='" + plink + '\'' +
                ", pdev_ft='" + pdev_ft + '\'' +
                ", pdev_lt='" + pdev_lt + '\'' +
                ", pcon='" + pcon + '\'' +
                ", pperf='" + pperf + '\'' +
                '}';
    }
}