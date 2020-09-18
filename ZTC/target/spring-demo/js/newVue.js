new Vue({
    el: 'body',
    data: {
        sex: ['male'],
        index: 0,
        perInfo1: false,
        perInfo2: true,
        expInfo1: false,
        expInfo2: true,
        interInfo1: false,
        interInfo2: true,
        interInfo3: false,
        project1: false,
        project2: true,
        project3: false,
        education1: false,
        education2: true,
        education3: false,
        certificate1: false,
        certificate2: true,
        certificate3: false,
        advantage1: false,
        advantage2: true,
        name: "",
        state: "离校-随时到岗",
        identity: "学生",
        weChat: "",
        phone: "",
        email: "",
        record: "本科",
        expectPosition: "Java开发工程师",
        salaryLeft: "4k",
        salaryRight: "8k",
        industry: "计算机软件",
        city: "南京",
        company: "",
        workLeft: "",
        workRight: "",
        department: "",
        positionType: "后端开发",
        jobContent: "",
        workPerformance: "",
        projectName: "",
        projectLeft: "",
        projectRight: "",
        role: "",
        link: "",
        projectContent: "",
        projectPerformance: "",
        schoolName: "",
        major: "",
        eduLeft: "",
        eduRight: "",
        schoolExperience: "",
        english: "暂无",
        it: "暂无",
        account: "暂无",
        actuary: "暂无",
        finance: "暂无",
        law: "暂无",
        advantage: ""
    },
    methods: {
        fn1(msg) {
            this.index = msg;
        },
        fn2(msg) {
            this.index = msg;
        },
        changePer() {
            this.perInfo1 = !this.perInfo1;
            this.perInfo2 = !this.perInfo2;
        },
        changeExp() {
            this.expInfo1 = !this.expInfo1;
            this.expInfo2 = !this.expInfo2;
        },
        newInter() {
            this.interInfo1 = !this.interInfo1;
            this.interInfo2 = !this.interInfo2;
        },
        editInter() {
            this.interInfo1 = !this.interInfo1;
            this.interInfo3 = !this.interInfo3;
        },
        newPro() {
            this.project1 = !this.project1;
            this.project2 = !this.project2;
        },
        editRro() {
            this.project1 = !this.project1;
            this.project3 = !this.project3;
        },
        newEdu() {
            this.education1 = !this.education1;
            this.education2 = !this.education2;
        },
        editEdu() {
            this.education1 = !this.education1;
            this.education3 = !this.education3;
        },
        newCer() {
            this.certificate1 = !this.certificate1;
            this.certificate2 = !this.certificate2;
        },
        editCer() {
            this.certificate1 = !this.certificate1;
            this.certificate3 = !this.certificate3;
        },
        editAdv() {
            this.advantage1 = !this.advantage1;
            this.advantage2 = !this.advantage2;
        },
        scrollTo200() {
            window.scrollTo({
                behavior: "smooth",
                top: 200
            });
        },
        scrollTo500() {
            window.scrollTo({
                behavior: "smooth",
                top: 500
            });
        },
        scrollTo850() {
            window.scrollTo({
                behavior: "smooth",
                top: 850
            });
        },
        scrollTo1050() {
            window.scrollTo({
                behavior: "smooth",
                top: 1050
            });
        },
        edit_perInfo() {
            this.changePer();
        },
        perInfo_cancel() {
            this.changePer();
        },
        perInfo_complete() {
            this.changePer();
        },
        edit_expInfo() {
            this.changeExp();
        },
        expInfo_cancel() {
            this.changeExp();
        },
        expInfo_complete() {
            this.changeExp();
        },
        new_internship() {
            this.newInter();
        },
        newInterInfo_cancel() {
            this.newInter();
            this.scrollTo200();
        },
        newInterInfo_complete() {
            this.newInter();
            this.scrollTo200();
        },
        edit_internship() {
            this.editInter()
        },
        editInterInfo_cancel() {
            this.editInter()
            this.scrollTo200();
        },
        editInterInfo_complete() {
            this.editInter()
            this.scrollTo200();
        },
        new_project() {
            this.newPro();
        },
        newProInfo_cancel() {
            this.newPro();
            this.scrollTo500();
        },
        newProInfo_complete() {
            this.newPro();
            this.scrollTo500();
        },
        edit_project() {
            this.editRro();
        },
        editProInfo_cancel() {
            this.editRro();
            this.scrollTo500();
        },
        editProInfo_complete() {
            this.editRro();
            this.scrollTo500();
        },
        new_education() {
            this.newEdu();
        },
        newEduInfo_cancel() {
            this.newEdu();
            this.scrollTo850();
        },
        newEduInfo_complete() {
            this.newEdu();
            this.scrollTo850();
        },
        edit_education() {
            this.editEdu();
        },
        editEduInfo_cancel() {
            this.editEdu();
            this.scrollTo850();
        },
        editEduInfo_complete() {
            this.editEdu();
            this.scrollTo850();
        },
        new_certificate() {
            this.newCer();
        },
        newCerInfo_cancel() {
            this.newCer();
            this.scrollTo1050();
        },
        newCerInfo_complete() {
            this.newCer();
            this.scrollTo1050();
        },
        edit_certificate() {
            this.editCer();
        },
        editCerInfo_cancel() {
            this.editCer();
            this.scrollTo1050();
        },
        editCerInfo_complete() {
            this.editCer();
            this.scrollTo1050();
        },
        edit_advantage() {
            this.editAdv();
        },
        editAdvInfo_cancel() {
            this.editAdv();
        },
        editAdvInfo_complete() {
            this.editAdv();
        }
    }
})