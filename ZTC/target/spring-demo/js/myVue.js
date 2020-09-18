new Vue({
    el: 'body',
    data: {
        name: ['male'],
        index: 0,
        perInfo1: true,
        perInfo2: false,
        expInfo1: true,
        expInfo2: false,
        interInfo1: true,
        interInfo2: false,
        interInfo3: false,
        project1: true,
        project2: false,
        project3: false,
        education1: true,
        education2: false,
        education3: false,
        certificate1: true,
        certificate2: false,
        certificate3: false,
        advantage1: true,
        advantage2: false
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