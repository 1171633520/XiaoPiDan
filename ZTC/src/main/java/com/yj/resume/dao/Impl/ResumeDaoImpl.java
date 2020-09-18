package com.yj.resume.dao.Impl;

import com.yj.resume.dao.IResumeDao;
import com.yj.resume.mapper.*;
import com.yj.resume.vo.*;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

/**
 * @title: IResumeDao
 * @package: com.yj.resume.dao
 * @projectName: ZTC
 * @description:
 * @author: jie.yuan
 * @date: 2020/9/2 0002 15:20
 * 注意:该代码仅为南京正厚内部传阅，严禁其他商业用途！
 */
@Repository
@Data
public class ResumeDaoImpl implements IResumeDao {
    private Resume resume;
    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Autowired
    private ResumeMapper resumeMapper;
    @Autowired
    private ResumeInternshipMapper internshipMapper;
    @Autowired
    private ResumeProjectMapper projectMapper;
    @Autowired
    private ResumeExposMapper exposMapper;
    @Autowired
    private ResumePerInfoMapper perInfoMapper;
    @Autowired
    private ResumeEducationMapper educationMapper;
    @Autowired
    private ResumeCertificateMapper certificateMapper;
    @Autowired
    private ResumeAdvantageMapper advantageMapper;

    /**
     * @Author: jie.yuan
     * @Description: 新增简历
     * @Date: 2020/9/10 0010 17:35
     * @Param [resume]
     * @return int
    **/
    @Override
    public int insertRes(Resume resume) {
        this.setResume(resume);
        return resumeMapper.insert(resume);
    }

    public int getResumeId() {
        String sql1 = "select resume_id from resume where resume_name = '" + this.getResume().getResume_name() + "'";
        //执行查询
        int resultId = jdbcTemplate.queryForObject(sql1, Integer.class);
        return resultId;
    }

    /**
     * @Author: jie.yuan
     * @Description: 新增个人信息
     * @Date: 2020/9/10 0010 17:35
     * @Param [perInf]
     * @return int
    **/
    @Override
    public int insertPerInfo(Resume_perInfo perInf) {
        perInf.setResume_id(this.getResumeId());
        return perInfoMapper.insert(perInf);
    }

    /**
     * @Author: jie.yuan
     * @Description: 新增期望职位
     * @Date: 2020/9/10 0010 17:35
     * @Param [expos]
     * @return int
    **/
    @Override
    public int insertExpos(Resume_expos expos) {
        expos.setResume_id(this.getResumeId());
        return exposMapper.insert(expos);
    }

    /**
     * @Author: jie.yuan
     * @Description: 新增实习经历
     * @Date: 2020/9/10 0010 17:35
     * @Param [internship]
     * @return int
    **/
    @Override
    public int insertInternship(Resume_internship internship) {
        internship.setResume_id(this.getResumeId());
        return internshipMapper.insert(internship);
    }

    /**
     * @Author: jie.yuan
     * @Description: 新增项目经历
     * @Date: 2020/9/10 0010 17:34
     * @Param [project]
     * @return int
    **/
    @Override
    public int insertProject(Resume_project project) {
        project.setResume_id(this.getResumeId());
        return projectMapper.insert(project);
    }

    /**
     * @Author: jie.yuan
     * @Description: 新增教育经历
     * @Date: 2020/9/10 0010 17:34
     * @Param [education]
     * @return int
    **/
    @Override
    public int insertEducation(Resume_education education) {
        education.setResume_id(this.getResumeId());
        return educationMapper.insert(education);
    }

    /**
     * @Author: jie.yuan
     * @Description: 新增资格证书
     * @Date: 2020/9/10 0010 17:35
     * @Param [certificate]
     * @return int
    **/
    @Override
    public int insertCertificate(Resume_certificate certificate) {
        certificate.setResume_id(this.getResumeId());
        return certificateMapper.insert(certificate);
    }

    /**
     * @Author: jie.yuan
     * @Description: 新增个人优势
     * @Date: 2020/9/10 0010 17:51
     * @Param
     * @return
     **/
    @Override
    public int insertAdvantage(Resume_advantage advantage) {
        advantage.setResume_id(this.getResumeId());
        return advantageMapper.insert(advantage);
    }
}
