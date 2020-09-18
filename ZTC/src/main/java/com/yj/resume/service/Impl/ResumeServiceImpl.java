package com.yj.resume.service.Impl;

import com.yj.resume.dao.IResumeDao;
import com.yj.resume.service.IResumeService;
import com.yj.resume.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * @title: ResumeServiceImpl
 * @package: com.yj.resume.service
 * @projectName: ZTC
 * @description:
 * @author: jie.yuan
 * @date: 2020/9/2 0002 11:41
 * 注意:该代码仅为南京正厚内部传阅，严禁其他商业用途！
 */
@Service("resumeService")
public class ResumeServiceImpl implements IResumeService {
    @Autowired
    private IResumeDao resumeDao;

    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    public int insertResume(Resume resume) {
        return resumeDao.insertRes(resume);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    public int insertResumePerInfo(Resume_perInfo perInfo) {
        return resumeDao.insertPerInfo(perInfo);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    public int insertResumeProject(Resume_project project) {
        return resumeDao.insertProject(project);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    public int insertResumeExpos(Resume_expos expos) {
        return resumeDao.insertExpos(expos);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    public int insertResumeInternship(Resume_internship internship) {
        return resumeDao.insertInternship(internship);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    public int insertResumeEducation(Resume_education education) {
        return resumeDao.insertEducation(education);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    public int insertResumeCertificate(Resume_certificate certificate) {
        return resumeDao.insertCertificate(certificate);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    public int insertResumeAdvantage(Resume_advantage advantage) {
        return resumeDao.insertAdvantage(advantage);
    }
}
