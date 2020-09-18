package com.yj.resume.vo;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import org.apache.ibatis.type.Alias;

import java.io.Serializable;

/**
 * @title: Resume_internship
 * @package: com.yj.resume.vo
 * @projectName: ZTC
 * @description:实习经历
 * @author: jie.yuan
 * @date: 2020/9/3 0003 17:26
 * 注意:该代码仅为南京正厚内部传阅，严禁其他商业用途！
 */
@Data
@Alias("internship")
@TableName("resume_internship")
public class Resume_internship implements Serializable {
    @TableId
    @TableField(exist = false)
    private int iid;
    private int resume_id;
    private String icn;//公司名称
    private String iindustry;//所属行业
    private String idepartment;//所属部门(选填)
    private String ipost;//职位名称(选填)
    private String ipt;//职位类型
    private String iwork_ft;//工作开始时间
    private String iwork_lt;//工作结束时间
    private String ijc;//工作内容
    private String iwp;//工作业绩(选填)
    private int iflag;//标志位(判断是否为实习经历)

    @Override
    public String toString() {
        return "Resume_internship{" +
                "iid=" + iid +
                ", resume_id=" + resume_id +
                ", icn='" + icn + '\'' +
                ", iindustry='" + iindustry + '\'' +
                ", idepartment='" + idepartment + '\'' +
                ", ipost='" + ipost + '\'' +
                ", ipt='" + ipt + '\'' +
                ", iwork_ft='" + iwork_ft + '\'' +
                ", iwork_lt='" + iwork_lt + '\'' +
                ", ijc='" + ijc + '\'' +
                ", iwp='" + iwp + '\'' +
                ", iflag=" + iflag +
                '}';
    }
}