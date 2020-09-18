package com.yj.resume.controller;

import com.yj.resume.service.IResumeService;
import com.yj.resume.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @title: ResumeController
 * @package: com.yj.resume.controller
 * @projectName: ZTC
 * @description:
 * @author: jie.yuan
 * @date: 2020/9/1 0001 16:59
 * 注意:该代码仅为南京正厚内部传阅，严禁其他商业用途！
 */
@Controller
@RequestMapping("/res")
public class ResumeController {
    @Autowired
    private IResumeService resumeService;

    //跳转至创建简历界面
    @RequestMapping(value = "/newRes", method = RequestMethod.GET)
    public String newResume() {
        return "resume/newResume";
    }

    //跳转至我的简历界面
    @RequestMapping(value = "/myRes", method = RequestMethod.GET)
    public String myResume() {
        return "resume/myResume";
    }

    /**
     * 创建个人简历
     *
     * @param resume
     * @return
     */
    @RequestMapping(value = "/insertRes", method = RequestMethod.POST)
    public String insertRes(Resume resume, Resume_perInfo perInfo, Resume_expos expos, Resume_internship internship, Resume_project project, Resume_education education, Resume_certificate certificate, Resume_advantage advantage) {
        int flag1 = resumeService.insertResume(resume);
        int flag2 = resumeService.insertResumePerInfo(perInfo);
        int flag3 = resumeService.insertResumeExpos(expos);
        int flag4 = resumeService.insertResumeInternship(internship);
        int flag5 = resumeService.insertResumeProject(project);
        int flag6 = resumeService.insertResumeEducation(education);
        int flag7 = resumeService.insertResumeCertificate(certificate);
        int flag8 = resumeService.insertResumeAdvantage(advantage);
        return "resume/myResume";
    }
}
