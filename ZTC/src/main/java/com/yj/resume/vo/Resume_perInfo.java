package com.yj.resume.vo;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import org.apache.ibatis.type.Alias;

import java.io.Serializable;

/**
 * @title: Resume_perInfo
 * @package: com.yj.resume.vo
 * @projectName: ZTC
 * @description:个人信息
 * @author: jie.yuan
 * @date: 2020/9/2 0002 14:45
 * 注意:该代码仅为南京正厚内部传阅，严禁其他商业用途！
 */
@Data
@Alias("perInfo")
@TableName("resume_perinfo")
public class Resume_perInfo implements Serializable {
    @TableId
    @TableField(exist = false)
    private int pid;
    private int resume_id;
    private String pname;//姓名
    private String psex;//性别
    private String pbirth;//生日
    private String ptel;//手机号
    private String pjs;//求职状态
    private String pidentity;//身份
    private String pwe_chat;//微信
    private String pemail;//邮箱

    @Override
    public String toString() {
        return "Resume_perInfo{" +
                "pid=" + pid +
                ", resume_id=" + resume_id +
                ", pname='" + pname + '\'' +
                ", psex='" + psex + '\'' +
                ", pbirth='" + pbirth + '\'' +
                ", ptel='" + ptel + '\'' +
                ", pjs='" + pjs + '\'' +
                ", pidentity='" + pidentity + '\'' +
                ", pwe_chat='" + pwe_chat + '\'' +
                ", pemail='" + pemail + '\'' +
                '}';
    }
}