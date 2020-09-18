package com.yj.resume.dao;

import com.yj.resume.vo.*;


public interface IResumeDao {

    /**
     * @return boolean
     * @Author: jie.yuan
     * @Description: 添加简历
     * @Date: 2020/9/9 0009 18:32
     * @Param [resume, perInfo, expos, internship, project]
     **/
    int insertRes(Resume resume);

    /**
     * @return boolean
     * @Author: jie.yuan
     * @Description: 添加个人信息
     * @Date: 2020/9/9 0009 18:32
     * @Param [perInf]
     **/
    int insertPerInfo(Resume_perInfo perInf);

    /**
     * @return boolean
     * @Author: jie.yuan
     * @Description: 添加期望职位
     * @Date: 2020/9/9 0009 18:32
     * @Param [expos]
     **/
    int insertExpos(Resume_expos expos);

    /**
     * @return boolean
     * @Author: jie.yuan
     * @Description: 添加实习经历
     * @Date: 2020/9/9 0009 18:32
     * @Param [internship]
     **/
    int insertInternship(Resume_internship internship);

    /**
     * @return boolean
     * @Author: jie.yuan
     * @Description: 添加项目经历
     * @Date: 2020/9/9 0009 18:33
     * @Param [project]
     **/
    int insertProject(Resume_project project);

    /**
     * @Author: jie.yuan
     * @Description: 添加教育经历
     * @Date: 2020/9/10 0010 17:11
     * @Param [education]
     * @return int
    **/
    int insertEducation(Resume_education education);

    /**
     * @Author: jie.yuan
     * @Description: 添加资格证书
     * @Date: 2020/9/10 0010 17:33
     * @Param [certificate]
     * @return int
    **/
    int insertCertificate(Resume_certificate certificate);

    /**
     * @Author: jie.yuan
     * @Description: 添加个人优势
     * @Date: 2020/9/10 0010 17:51
     * @Param
     * @return
    **/
    int insertAdvantage(Resume_advantage advantage);
}
