package com.yj.resume.service;

import com.yj.resume.vo.*;

public interface IResumeService {
    int insertResume(Resume resume);

    int insertResumePerInfo(Resume_perInfo perInfo);

    int insertResumeProject(Resume_project project);

    int insertResumeExpos(Resume_expos expos);

    int insertResumeInternship(Resume_internship internship);

    int insertResumeEducation(Resume_education education);

    int insertResumeCertificate(Resume_certificate certificate);

    int insertResumeAdvantage(Resume_advantage advantage);
}
