package com.yj.resume.vo;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import org.apache.ibatis.type.Alias;

/**
 * @title: Resume_certificate
 * @package: com.yj.resume.vo
 * @projectName: ZTC
 * @description:
 * @author: jie.yuan
 * @date: 2020/9/10 0010 17:28
 * 注意:该代码仅为南京正厚内部传阅，严禁其他商业用途！
 */
@Data
@Alias("certificate")
@TableName("resume_certificate")
public class Resume_certificate {
    @TableId
    @TableField(exist = false)
    private int cid;
    private int resume_id;
    private String cenglish;//英语类
    private String cit;//IT类
    private String caccount;//会计类
    private String cactuary;//精算类
    private String cfinance;//金融类
    private String claw;//法律类

    @Override
    public String toString() {
        return "Resume_certificate{" +
                "cid=" + cid +
                ", resume_id=" + resume_id +
                ", cenglish='" + cenglish + '\'' +
                ", cit='" + cit + '\'' +
                ", caccount='" + caccount + '\'' +
                ", cactuary='" + cactuary + '\'' +
                ", cfinance='" + cfinance + '\'' +
                ", claw='" + claw + '\'' +
                '}';
    }
}
