<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>创建简历</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" href="../../../css/reset.css">
    <link rel="stylesheet" href="../../../css/myStyle.css">
    <link rel="stylesheet" href="https://at.alicdn.com/t/font_1965590_2lhubwq145.css">
    <script src="../../../js/vue.min-v1.0.8.js"></script>

</head>

<body>
<form class="upload" id="uploadResume" name="uploadResume" method="post" action="/res/insertRes">
    <div class="container">
        <!--个人信息-->
        <div id="perInfo1" class="personal_Info clearfix" v-show='perInfo1'>
            <!--左边栏-->
            <div class="left">
                <!--主信息-->
                <div class="main_Info clearfix">
                    <div class="name">姓名</div>
                    <span class="sex">性别(用图标显示)</span>
                    <i class="man iconfont icon-nan"></i>
                    <i class="woman iconfont icon-nv hidden"></i>
                </div>
                <!--辅信息-->
                <div class="aux_Info ">
                    <p class="clearfix">
                        <span class="myIdentity">我的身份</span>
                        <span class="divider"></span>
                        <span class="edu_Record">学历</span>
                        <span class="divider"></span>
                        <span class="job_status">求职状态</span>
                    </p>
                    <p class="clearfix">
                        <span class="tel">联系电话</span>
                        <span class="divider"></span>
                        <span class="weChat">微信号</span>
                        <span class="divider"></span>
                        <span class="email">邮箱</span>
                    </p>
                </div>
            </div>
            <!--右边栏-->
            <div class="right">
                <!--注意：取消a元素默认行为，当成按钮-->
                <a class="preview" href="">预览简历</a>
                <div class="headPhoto"></div>
                <!--字体图标-->
                <a id="edit_perInfo" class="edit" @click='edit_perInfo' href="#">
                    <i class="iconfont icon-bianji"></i>
                    <span>编辑</span>
                </a>
            </div>
        </div>
        <!--编辑个人信息-->
        <div id="perInfo2" class="edit_personalInfo" v-show='perInfo2'>
            <h3 class="edit_title">编辑个人信息</h3>
            <div class="per_info clearfix" action="">
                <!--编辑姓名-->
                <div class="edit_name box1">
                    <div>姓名</div>
                    <div>
                        <input class="input" name="pname" id="name" type="text" placeholder="请输入您的姓名">
                    </div>
                </div>
                <!--编辑求职状态-->
                <div class="edit_state box1">
                    <div>当前求职状态</div>
                    <div>
                        <select name="pjs">
                            <option value="离校-随时到岗">离校-随时到岗</option>
                            <option value="在校-月内到岗">在校-月内到岗</option>
                            <option value="在校-考虑机会">在校-考虑机会</option>
                            <option value="在校-暂不考虑">在校-暂不考虑</option>
                        </select>
                    </div>
                </div>
                <!--编辑性别-->
                <div class="edit_sex box1">
                    <div>性别(请点击)</div>
                    <div>
                        <p>
                            <!-- 隐示关联 -->
                            <label v-for='i in name' :class='$index == index?"active_sex":""' @click="fn1($index)"
                                   id="male">
                                <span class="pro"><input id="gender1" name="psex" type="radio" value="男" checked></span>
                                男
                            </label>
                            <label :class='$index == index?"active_sex":""' @click="fn2($index)" id="female">
                                <span class="pro"><input id="gender2" name="psex" type="radio" value="女"></span>
                                女
                            </label>
                        </p>
                    </div>
                </div>
                <!--编辑身份-->
                <div class="edit_identity box1">
                    <div>我的身份</div>
                    <div>
                        <select name="pidentity">
                            <option value="学生">学生</option>
                            <option value="在职人员">在职人员</option>
                            <option value="离职人员">离职人员</option>
                            <option value="自由职业">自由职业</option>
                        </select>
                    </div>
                </div>
                <!--编辑生日-->
                <div class="edit_birth box1">
                    <div>生日</div>
                    <div>
                        <input id="birthday" name="pbirth" type="date">
                    </div>
                </div>
                <!--编辑微信号-->
                <div class="edit_weChat box1">
                    <div>微信号(选填)</div>
                    <div>
                        <input id="weChat" name="pweChat" type="text" placeholder="请输入您的微信号">
                    </div>
                </div>
                <!--编辑手机号-->
                <div class="edit_phone box1">
                    <div>手机号</div>
                    <div>
                        <input id="tel" name="ptel" type="text" placeholder="请输入您的手机号">
                    </div>
                </div>
                <!--编辑邮箱-->
                <div class="edit_email box1">
                    <div>邮箱</div>
                    <div>
                        <input id="email" name="pemail" type="text" placeholder="请输入您的邮箱">
                    </div>
                </div>
                <!--操作区域-->
                <div class="edit_operation">
                    <input type="button" class="cancel" id="perInfo_cancel" @click='perInfo_cancel' value="取消">
                    <input type="button" class="complete" id="perInfo_complete" @click='perInfo_complete' value="完成">
                </div>
            </div>
        </div>
        <hr color="#f2f3f3" size="1px">
        <!--期望职位-->
        <div id="expInfo1" class="expected" v-show='expInfo1'>
            <div class="expected_pos">
                <h2 class="title">期望职位</h2>
            </div>
            <div class="required clearfix">
                <span>期望职位</span>
                <span class="divider"></span>
                <span>薪资要求</span>
                <span class="divider"></span>
                <span>行业</span>
                <span class="divider"></span>
                <span>城市</span>
            </div>
            <div class="edit_btn">
                <a id="edit_expInfo" class="edit" @click='edit_expInfo' href="#">
                    <i class="iconfont icon-bianji"></i>
                    <span>编辑</span>
                </a>
            </div>
        </div>
        <!--编辑期望职位-->
        <div id="expInfo2" class="edit_expectedInfo" v-show='expInfo2'>
            <h3 class="edit_title">编辑期望职位</h3>
            <div class="exp_info clearfix" action="">
                <!--求职类型-->
                <div class="edit_jobType box1">
                    <div>求职类型</div>
                    <div>
                        <select name="ejt">
                            <option value="全职">全职</option>
                            <option value="兼职">兼职</option>
                            <option value="实习">实习</option>
                        </select>
                    </div>
                </div>
                <!--编辑期望职位-->
                <div class="edit_expPos box1">
                    <div>期望职位</div>
                    <div>
                        <select name="eep">
                            <option value="Java开发工程师">Java开发工程师</option>
                            <option value="web前端工程师">web前端工程师</option>
                            <option value="软件测试员">软件测试员</option>
                            <option value="项目经理">项目经理</option>
                        </select>
                    </div>
                </div>
                <!--编辑薪资要求-->
                <div class="edit_salary box1">
                    <div>薪资要求</div>
                    <div>
                        <!-- 最低薪资 -->
                        <select class="selSalary" name="esal_min" id="sal1">
                            <option value="4k">4k</option>
                            <option value="5k">5k</option>
                            <option value="6k">6k</option>
                            <option value="7k">7k</option>
                            <option value="8k">8k</option>
                            <option value="9k">9k</option>
                            <option value="10k">10k</option>
                            <option value="11k">11k</option>
                        </select>
                        <span class="zhi">至</span>
                        <!-- 最高薪资 -->
                        <select class="selSalary" name="esal_max" id="sal2">
                            <option value="8k">8k</option>
                            <option value="9k">9k</option>
                            <option value="10k">10k</option>
                            <option value="11k">11k</option>
                            <option value="12k">12k</option>
                            <option value="13k">13k</option>
                            <option value="14k">14k</option>
                            <option value="15k">15k</option>
                        </select>
                    </div>
                </div>
                <!--编辑行业-->
                <div class="edit_industry box1">
                    <div>行业</div>
                    <div>
                        <select name="eindustry">
                            <option value="计算机软件">计算机软件</option>
                            <option value="计算机硬件">计算机硬件</option>
                            <option value="计算机网络">计算机网络</option>
                            <option value="物联网">物联网</option>
                        </select>
                    </div>
                </div>
                <!--编辑城市-->
                <div class="edit_city box1">
                    <div>城市</div>
                    <div>
                        <select name="ecity">
                            <option value="北京">北京</option>
                            <option value="上海">上海</option>
                            <option value="深圳">深圳</option>
                            <option value="南京">南京</option>
                            <option value="无锡">无锡</option>
                            <option value="苏州">苏州</option>
                            <option value="常州">常州</option>
                            <option value="连云港">连云港</option>
                            <option value="淮安">淮安</option>
                            <option value="徐州">徐州</option>
                            <option value="张家港">张家港</option>
                            <option value="泰州">泰州</option>
                        </select>
                    </div>
                </div>
                <!--操作区域-->
                <div class="edit_operation">
                    <input type="button" class="cancel" id="expInfo_cancel" @click='expInfo_cancel' value="取消">
                    <input type="button" class="complete" id="expInfo_complete" @click='expInfo_complete' value="完成">
                </div>
            </div>
        </div>
        <hr color="#f2f3f3" size="1px">
        <!--实习经历-->
        <div id="interInfo1" class="internship clearfix" v-show='interInfo1'>
            <div class="internship_title">
                <h2 class="title">实习经历</h2>
                <a id="addBtn_internship" class="add" @click='new_internship' href="#interInfo2">
                    <i class="iconfont icon-tianjia"></i>
                    <span>添加</span>
                </a>
            </div>
            <div class="main">
                <!--公司、时间-->
                <div class="company clearfix">
                    <h3>公司名称</h3>
                    <span class="time">在职时间</span>
                    <a class="remove" @click='remove_internship' href="#">
                        <i class="iconfont icon-icon_huabanfuben"></i>
                        <span>删除</span>
                    </a>
                    <a id="editBtn_internship" class="edit" @click='edit_internship' href="#interInfo3">
                        <i class="iconfont icon-bianji"></i>
                        <span>编辑</span>
                    </a>
                </div>
                <!--职务-->
                <div class="position">
                    <h3 class="clearfix">
                        <span>职位类型</span>
                        <span class="divider"></span>
                        <span>所属部门</span>
                        <span class="tag_internship">实习</span>
                    </h3>
                </div>
                <!--内容-->
                <div class="content clearfix">
                    <span class="type">内容:</span>
                    <span class="text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa fugit ducimus
                        dignissimos, possimus illum explicabo repellendus sequi, obcaecati saepe odio, ipsam
                        voluptatibus molestias. Dolorum omnis, est suscipit sed sunt sit.</span>
                </div>
                <!--业绩-->
                <div class="performance clearfix">
                    <span class="type">业绩:</span>
                    <span class="text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa fugit ducimus
                        dignissimos, possimus illum explicabo repellendus sequi, obcaecati saepe odio, ipsam
                        voluptatibus molestias. Dolorum omnis, est suscipit sed sunt sit.</span>
                </div>
            </div>
        </div>
        <!--添加实习经历-->
        <div id="interInfo2" class="new_internship" v-show='interInfo2'>
            <h3 class="edit_title">新增实习经历</h3>
            <div class="internship_newInfo clearfix" action="">
                <!--公司名称-->
                <div class="new_companyName box1">
                    <div>公司名称</div>
                    <div>
                        <input name="icn" type="text" placeholder="例如:南京正厚软件技术有限公司">
                    </div>
                </div>
                <!--所属行业-->
                <div class="new_industry box1">
                    <div>所属行业</div>
                    <div>
                        <select name="iindustry">
                            <option value="计算机软件">计算机软件</option>
                            <option value="计算机硬件">计算机硬件</option>
                            <option value="计算机网络">计算机网络</option>
                            <option value="物联网">物联网</option>
                        </select>
                    </div>
                </div>
                <!--所属部门-->
                <div class="new_department box1">
                    <div>所属部门(选填)</div>
                    <div>
                        <input name="idepartment" type="text" placeholder="例如:开发部">
                    </div>
                </div>
                <!--职位名称-->
                <div class="new_jobName box1">
                    <div>职位名称(选填)</div>
                    <div>
                        <input name="ipost" type="text" placeholder="例如:Java开发工程师">
                    </div>
                </div>
                <!--职位类型-->
                <div class="new_positionType box1">
                    <div>职位类型</div>
                    <div>
                        <select name="ipt">
                            <option value="后端开发">后端开发</option>
                            <option value="前端开发">前端开发</option>
                            <option value="移动开发">移动开发</option>
                            <option value="测试">测试</option>
                            <option value="运维/技术支持">运维/技术支持</option>
                            <option value="数据">数据</option>
                            <option value="项目管理">项目管理</option>
                            <option value="硬件开发">硬件开发</option>
                            <option value="通信">通信</option>
                            <option value="电子/半导体">电子/半导体</option>
                            <option value="人工智能">人工智能</option>
                            <option value="其他技术职位">其他技术职位</option>
                        </select>
                    </div>
                </div>
                <!--在职时间-->
                <div class="new_workingTime box1">
                    <div>在职时间</div>
                    <div>
                        <!-- 工作开始时间 -->
                        <input name="iwork_ft" class="oldTime" type="date">
                        <span class="zhi">至</span>
                        <!-- 工作结束时间 -->
                        <input name="iwork_lt" class="newTime" type="date">
                    </div>
                </div>
                <!--工作内容-->
                <div class="new_jobContent box1">
                    <div>工作内容</div>
                    <div>
                        <textarea name="ijc" cols="92" rows="8" placeholder="输入工作内容"></textarea>
                    </div>
                </div>
                <!--工作业绩-->
                <div class="new_workPerformance box1">
                    <div>工作业绩(选填)</div>
                    <div>
                        <textarea name="iwp" cols="92" rows="8" placeholder="输入工作业绩"></textarea>
                    </div>
                </div>
                <!--隐式关联-->
                <div class="isInternship box1">
                    <p>
                        <label>
                            <!-- value = 1 对应数据库  iflag = 1 表示是实习经历 -->
                            <span class="isInter"><input name="iflag" type="checkbox" value="1" checked
                                                         onchange="this.value=(iflag.checked)?1:0"></span>
                            本段经历是实习经历
                        </label>
                    </p>
                </div>
                <!--操作区域-->
                <div class="edit_operation">
                    <input type="button" class="cancel" id="newInterInfo_cancel" @click='newInterInfo_cancel'
                           value="取消">
                    <input type="button" class="complete" id="newInterInfo_complete" @click='newInterInfo_complete'
                           value="完成">
                </div>
            </div>
        </div>
        <!--编辑实习经历-->
        <div id="interInfo3" class="edit_internship" v-show='interInfo3'>
            <h3 class="edit_title">编辑实习经历</h3>
            <div class="internship_editInfo clearfix" action="">
                <!--公司名称-->
                <div class="edit_companyName box1">
                    <div>公司名称</div>
                    <div>
                        <input type="text" placeholder="例如:南京正厚软件技术有限公司">
                    </div>
                </div>
                <!--所属行业-->
                <div class="edit_industry box1">
                    <div>所属行业</div>
                    <div>
                        <select name="">
                            <option value="">计算机软件</option>
                            <option value="">计算机硬件</option>
                            <option value="">计算机网络</option>
                            <option value="">物联网</option>
                        </select>
                    </div>
                </div>
                <!--所属部门-->
                <div class="edit_department box1">
                    <div>所属部门(选填)</div>
                    <div>
                        <input type="text" placeholder="例如:开发部">
                    </div>
                </div>
                <!--职位名称-->
                <div class="edit_jobName box1">
                    <div>职位名称(选填)</div>
                    <div>
                        <input type="text" placeholder="例如:Java开发工程师">
                    </div>
                </div>
                <!--职位类型-->
                <div class="edit_positionType box1">
                    <div>职位类型</div>
                    <div>
                        <select name="">
                            <option value="">后端开发</option>
                            <option value="">前端开发</option>
                            <option value="">移动开发</option>
                            <option value="">测试</option>
                            <option value="">运维/技术支持</option>
                            <option value="">数据</option>
                            <option value="">项目管理</option>
                            <option value="">硬件开发</option>
                            <option value="">通信</option>
                            <option value="">电子/半导体</option>
                            <option value="">人工智能</option>
                            <option value="">其他技术职位</option>
                        </select>
                    </div>
                </div>
                <!--在职时间-->
                <div class="edit_workingTime box1">
                    <div>在职时间</div>
                    <div>
                        <input class="oldTime" type="date">
                        <span class="zhi">至</span>
                        <input class="newTime" type="date">
                    </div>
                </div>
                <!--工作内容-->
                <div class="edit_jobContent box1">
                    <div>工作内容</div>
                    <div>
                        <textarea name="" cols="92" rows="8" placeholder="输入工作内容"></textarea>
                    </div>
                </div>
                <!--工作业绩-->
                <div class="edit_workPerformance box1">
                    <div>工作业绩(选填)</div>
                    <div>
                        <textarea name="" cols="92" rows="8" placeholder="输入工作业绩"></textarea>
                    </div>
                </div>
                <!--隐式关联-->
                <div class="isInternship box1">
                    <p>
                        <label>
                            <span class="isInter"><input name="gender2" type="checkbox"></span>
                            本段经历是实习经历
                        </label>
                    </p>
                </div>
                <!--操作区域-->
                <div class="edit_operation">
                    <input type="button" class="cancel" id="editInterInfo_cancel" @click='editInterInfo_cancel'
                           value="取消">
                    <input type="button" class="complete" id="editInterInfo_complete" @click='editInterInfo_complete'
                           value="完成">
                </div>
            </div>
        </div>
        <hr color="#f2f3f3" size="1px">
        <!--项目经历-->
        <div id="project1" class="project" v-show='project1'>
            <div class="project_title">
                <h2 class="title">项目经历</h2>
                <a class="add" @click='new_project' href="#interInfo1_skills">
                    <i class="iconfont icon-tianjia"></i>
                    <span>添加</span>
                </a>
            </div>
            <div class="main">
                <!--项目、时间-->
                <div class="projectName clearfix">
                    <h3>项目名称</h3>
                    <span class="time">开发时间</span>
                    <a class="edit" @click='edit_project' href="#interInfo1_skills">
                        <i class="iconfont icon-bianji"></i>
                        <span>编辑</span>
                    </a>
                </div>
                <!--项目角色-->
                <div class="role">
                    <h3 class="clearfix">
                        <span>项目角色</span>
                    </h3>
                </div>
                <!--内容-->
                <div class="content clearfix">
                    <span class="type">内容:</span>
                    <span class="text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa fugit ducimus
                        dignissimos, possimus illum explicabo repellendus sequi, obcaecati saepe odio, ipsam
                        voluptatibus molestias. Dolorum omnis, est suscipit sed sunt sit.</span>
                </div>
                <!--业绩-->
                <div class="performance clearfix">
                    <span class="type">业绩:</span>
                    <span class="text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa fugit ducimus
                        dignissimos, possimus illum explicabo repellendus sequi, obcaecati saepe odio, ipsam
                        voluptatibus molestias. Dolorum omnis, est suscipit sed sunt sit.</span>
                </div>
                <!--项目链接-->
                <div id="project1_link" class="projectLink clearfix">
                    <span class="type">项目链接:</span>
                    <span class="text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa fugit</span>
                </div>
            </div>
        </div>
        <!--添加项目经历-->
        <div id="project2" class="new_project" v-show='project2'>
            <h3 class="edit_title">添加项目经历</h3>
            <div class="project_newInfo clearfix">
                <!--项目名称-->
                <div class="new_projectName box1">
                    <div>项目名称</div>
                    <div>
                        <input name="pname" type="text" placeholder="例如:直聘网">
                    </div>
                </div>
                <!--项目角色-->
                <div class="new_role box1">
                    <div>项目角色</div>
                    <div>
                        <input name="prole" type="text" placeholder="例如:Java开发工程师">
                    </div>
                </div>
                <!--项目链接-->
                <div class="new_link box1">
                    <div>项目链接(选填)</div>
                    <div>
                        <input name="plink" type="text" placeholder="例如:github.com/erik">
                    </div>
                </div>
                <!--项目时间-->
                <div class="new_projectTime box1">
                    <div>项目开发时间</div>
                    <div>
                        <!-- 项目开始时间 -->
                        <input name="pdev_ft" class="oldTime" type="date">
                        <span class="zhi">至</span>
                        <!-- 项目结束时间 -->
                        <input name="pdev_lt" class="newTime" type="date">
                    </div>
                </div>
                <!--项目内容-->
                <div class="new_projectContent box1">
                    <div>项目内容</div>
                    <div>
                        <textarea name="pcon" cols="92" rows="8" placeholder="输入工作内容"></textarea>
                    </div>
                </div>
                <!--工作业绩-->
                <div class="new_projectPerformance box1">
                    <div>项目业绩(选填)</div>
                    <div>
                        <textarea name="pperf" cols="92" rows="8" placeholder="输入工作业绩"></textarea>
                    </div>
                </div>
                <!--操作区域-->
                <div class="edit_operation">
                    <input type="button" class="cancel" id="newProject_cancel" @click='newProInfo_cancel' value="取消">
                    <input type="button" class="complete" id="newProject_complete" @click='newProInfo_complete'
                           value="完成">
                </div>
            </div>
        </div>
        <!--编辑项目经历-->
        <div id="project3" class="edit_project" v-show='project3'>
            <h3 class="edit_title">编辑项目经历</h3>
            <div class="project_editInfo clearfix">
                <!--项目名称-->
                <div class="edit_projectName box1">
                    <div>项目名称</div>
                    <div>
                        <input type="text" placeholder="例如:直聘网">
                    </div>
                </div>
                <!--项目角色-->
                <div class="edit_role box1">
                    <div>项目角色</div>
                    <div>
                        <input type="text" placeholder="例如:Java开发工程师">
                    </div>
                </div>
                <!--项目链接-->
                <div class="edit_link box1">
                    <div>项目链接(选填)</div>
                    <div>
                        <input type="text" placeholder="例如:github.com/erik">
                    </div>
                </div>
                <!--项目时间-->
                <div class="edit_projectTime box1">
                    <div>项目开发时间</div>
                    <div>
                        <input class="oldTime" type="date">
                        <span class="zhi">至</span>
                        <input class="newTime" type="date">
                    </div>
                </div>
                <!--项目内容-->
                <div class="edit_projectContent box1">
                    <div>项目内容</div>
                    <div>
                        <textarea name="" cols="92" rows="8" placeholder="输入工作内容"></textarea>
                    </div>
                </div>
                <!--工作业绩-->
                <div class="edit_projectPerformance box1">
                    <div>项目业绩(选填)</div>
                    <div>
                        <textarea name="" cols="92" rows="8" placeholder="输入工作业绩"></textarea>
                    </div>
                </div>
                <!--操作区域-->
                <div class="edit_operation">
                    <input type="button" class="cancel" id="editProject_cancel" @click='editProInfo_cancel' value="取消">
                    <input type="button" class="complete" id="editProject_complete" @click='editProInfo_complete'
                           value="完成">
                </div>
            </div>
        </div>
        <hr color="#f2f3f3" size="1px">
        <!--教育经历-->
        <div id="education1" class="education" v-show='education1'>
            <div class="education_title">
                <h2 class="title">教育经历</h2>
                <a class="add" @click='new_education' href="#project1_link">
                    <i class="iconfont icon-tianjia"></i>
                    <span>添加</span>
                </a>
            </div>
            <div class="main">
                <!--学校、时间-->
                <div class="schoolName clearfix">
                    <h3>学校名称</h3>
                    <span class="time">在读时间</span>
                    <a class="edit" @click='edit_education' href="#project1_link">
                        <i class="iconfont icon-bianji"></i>
                        <span>编辑</span>
                    </a>
                </div>
                <!--专业、学历-->
                <div class="info">
                    <h3 class="clearfix">
                        <span>专业</span>
                        <span class="divider"></span>
                        <span>学历</span>
                    </h3>
                </div>
                <!--在校经历-->
                <div class="experience clearfix">
                    <span class="text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa fugit ducimus
                        dignissimos, possimus illum explicabo repellendus sequi, obcaecati saepe odio, ipsam
                        voluptatibus molestias. Dolorum omnis, est suscipit sed sunt sit.</span>
                </div>
                <div id="education_bom"></div>
            </div>
        </div>
        <!--添加教育经历-->
        <div id="education2" class="new_education" v-show='education2'>
            <h3 class="edit_title">添加教育经历</h3>
            <div class="education_newInfo clearfix">
                <!--学校名称-->
                <div class="new_schoolName box1">
                    <div>学校名称</div>
                    <div>
                        <input type="text" placeholder="例如:北京大学">
                    </div>
                </div>
                <!--学历-->
                <div class="new_record box1">
                    <div>学历</div>
                    <div>
                        <select name="">
                            <option value="">中专</option>
                            <option value="">大专</option>
                            <option value="">本科</option>
                            <option value="">硕士</option>
                            <option value="">博士</option>
                        </select>
                    </div>
                </div>
                <!--专业-->
                <div class="new_major box1">
                    <div>专业</div>
                    <div>
                        <input type="text" placeholder="例如:计算机科学与技术">
                    </div>
                </div>
                <!--时间段-->
                <div class="new_schoolTime box1">
                    <div>时间段</div>
                    <div>
                        <input class="oldTime" type="date">
                        <span class="zhi">至</span>
                        <input class="newTime" type="date">
                    </div>
                </div>
                <!--在校经历-->
                <div class="new_schoolExperience box1">
                    <div>在校经历(选填)</div>
                    <div>
                        <textarea name="" cols="92" rows="8" placeholder="请填写内容"></textarea>
                    </div>
                </div>
                <!--操作区域-->
                <div class="edit_operation">
                    <input type="button" class="cancel" id="newEducation_cancel" @click='newEduInfo_cancel' value="取消">
                    <input type="button" class="complete" id="newEducation_complete" @click='newEduInfo_complete'
                           value="完成">
                </div>
            </div>
        </div>
        <!--编辑教育经历-->
        <div id="education3" class="edit_education" v-show='education3'>
            <h3 class="edit_title">编辑教育经历</h3>
            <div class="education_editInfo clearfix">
                <!--学校名称-->
                <div class="edit_schoolName box1">
                    <div>学校名称</div>
                    <div>
                        <input type="text" placeholder="例如:北京大学">
                    </div>
                </div>
                <!--学历-->
                <div class="edit_record box1">
                    <div>学历</div>
                    <div>
                        <select name="">
                            <option value="">中专</option>
                            <option value="">大专</option>
                            <option value="">本科</option>
                            <option value="">硕士</option>
                            <option value="">博士</option>
                        </select>
                    </div>
                </div>
                <!--专业-->
                <div class="edit_major box1">
                    <div>专业</div>
                    <div>
                        <input type="text" placeholder="例如:计算机科学与技术">
                    </div>
                </div>
                <!--时间段-->
                <div class="edit_schoolTime box1">
                    <div>时间段</div>
                    <div>
                        <input class="oldTime" type="date">
                        <span class="zhi">至</span>
                        <input class="newTime" type="date">
                    </div>
                </div>
                <!--在校经历-->
                <div class="edit_schoolExperience box1">
                    <div>在校经历(选填)</div>
                    <div>
                        <textarea name="" cols="92" rows="8" placeholder="请填写内容"></textarea>
                    </div>
                </div>
                <!--操作区域-->
                <div class="edit_operation">
                    <input type="button" class="cancel" id="editEducation_cancel" @click='editEduInfo_cancel'
                           value="取消">
                    <input type="button" class="complete" id="editEducation_complete" @click='editEduInfo_complete'
                           value="完成">
                </div>
            </div>
        </div>
        <hr color="#f2f3f3" size="1px">
        <!--资格证书-->
        <div id="certificate1" class="certificate" v-show='certificate1'>
            <div class="certificate_title">
                <h2 class="title">资格证书</h2>
                <a class="add" @click='new_certificate' href="#education_bom">
                    <i class="iconfont icon-tianjia"></i>
                    <span>添加</span>
                </a>
            </div>
            <div class="main">
                <!--学校、时间-->
                <div class="certificateName clearfix">
                    <span class="certificateName_type">证书一</span>
                    <span class="certificateName_type">证书二</span>
                    <span class="certificateName_type">证书三</span>
                    <a class="edit" @click='edit_certificate' href="#education_bom">
                        <i class="iconfont icon-bianji"></i>
                        <span>编辑</span>
                    </a>
                </div>
            </div>
        </div>
        <!--添加资格证书-->
        <div id="certificate2" class="new_certificate" v-show='certificate2'>
            <h3 class="edit_title">添加资格证书</h3>
            <div class="certificate_newInfo clearfix">
                <!--英语类-->
                <div class="new_eh box1">
                    <div>英语类</div>
                    <div>
                        <select name="">
                            <option value="">大学英语四级</option>
                            <option value="">大学英语六级</option>
                            <option value="">英语专业八级</option>
                            <option value="">雅思学术类高分者</option>
                            <option value="">托福网考高分者</option>
                        </select>
                    </div>
                </div>
                <!--IT类-->
                <div class="new_it box1">
                    <div>IT类</div>
                    <div>
                        <select name="">
                            <option value="">计算机等级考试</option>
                            <option value="">RHCE红帽认证</option>
                            <option value="">HCIE华为认证</option>
                            <option value="">ACP阿里云认证</option>
                            <option value="">计算机专业技术资格</option>
                        </select>
                    </div>
                </div>
                <!--会计类-->
                <div class="new_account box1">
                    <div>会计类</div>
                    <div>
                        <select name="">
                            <option value="">会计从业资格证</option>
                            <option value="">会计职称</option>
                            <option value="">CPA中国注册会计师</option>
                            <option value="">AICPA美国注册会计师</option>
                            <option value="">AIA国际会计师</option>
                        </select>
                    </div>
                </div>
                <!--精算类-->
                <div class="new_actuary box1">
                    <div>精算类</div>
                    <div>
                        <select name="">
                            <option value="">中国精算师</option>
                            <option value="">SOA北美精算师</option>
                            <option value="">英国精算师</option>
                        </select>
                    </div>
                </div>
                <!--金融类-->
                <div class="new_financial box1">
                    <div>金融类</div>
                    <div>
                        <select name="">
                            <option value="">证券从业资格证</option>
                            <option value="">ChFP国家理财规划师</option>
                            <option value="">CFA特许金融分析师</option>
                            <option value="">税务师</option>
                            <option value="">银行从业资格证</option>
                            <option value="">FRM金融风险管理师</option>
                            <option value="">CFC注册财务顾问师</option>
                        </select>
                    </div>
                </div>
                <!--法律类-->
                <div class="new_law box1">
                    <div>法律类</div>
                    <div>
                        <select name="">
                            <option value="">律师执业证</option>
                            <option value="">法律职业资格证</option>
                        </select>
                    </div>
                </div>
                <!--操作区域-->
                <div class="edit_operation">
                    <input type="button" class="cancel" id="newCertificate_cancel" @click='newCerInfo_cancel'
                           value="取消">
                    <input type="button" class="complete" id="newCertificate_complete" @click='newCerInfo_complete'
                           value="完成">
                </div>
            </div>
        </div>
        <!--编辑资格证书-->
        <div id="certificate3" class="edit_certificate" v-show='certificate3'>
            <h3 class="edit_title">编辑资格证书</h3>
            <div class="certificate_editInfo clearfix">
                <!--英语类-->
                <div class="edit_eh box1">
                    <div>英语类</div>
                    <div>
                        <select name="">
                            <option value="">大学英语四级</option>
                            <option value="">大学英语六级</option>
                            <option value="">英语专业八级</option>
                            <option value="">雅思学术类高分者</option>
                            <option value="">托福网考高分者</option>
                        </select>
                    </div>
                </div>
                <!--IT类-->
                <div class="edit_it box1">
                    <div>IT类</div>
                    <div>
                        <select name="">
                            <option value="">计算机等级考试</option>
                            <option value="">RHCE红帽认证</option>
                            <option value="">HCIE华为认证</option>
                            <option value="">ACP阿里云认证</option>
                            <option value="">计算机专业技术资格</option>
                        </select>
                    </div>
                </div>
                <!--会计类-->
                <div class="edit_account box1">
                    <div>会计类</div>
                    <div>
                        <select name="">
                            <option value="">会计从业资格证</option>
                            <option value="">会计职称</option>
                            <option value="">CPA中国注册会计师</option>
                            <option value="">AICPA美国注册会计师</option>
                            <option value="">AIA国际会计师</option>
                        </select>
                    </div>
                </div>
                <!--精算类-->
                <div class="edit_actuary box1">
                    <div>精算类</div>
                    <div>
                        <select name="">
                            <option value="">中国精算师</option>
                            <option value="">SOA北美精算师</option>
                            <option value="">英国精算师</option>
                        </select>
                    </div>
                </div>
                <!--金融类-->
                <div class="edit_financial box1">
                    <div>金融类</div>
                    <div>
                        <select name="">
                            <option value="">证券从业资格证</option>
                            <option value="">ChFP国家理财规划师</option>
                            <option value="">CFA特许金融分析师</option>
                            <option value="">税务师</option>
                            <option value="">银行从业资格证</option>
                            <option value="">FRM金融风险管理师</option>
                            <option value="">CFC注册财务顾问师</option>
                        </select>
                    </div>
                </div>
                <!--法律类-->
                <div class="edit_law box1">
                    <div>法律类</div>
                    <div>
                        <select name="">
                            <option value="">律师执业证</option>
                            <option value="">法律职业资格证</option>
                        </select>
                    </div>
                </div>
                <!--操作区域-->
                <div class="edit_operation">
                    <input type="button" class="cancel" id="editCertificate_cancel" @click='editCerInfo_cancel'
                           value="取消">
                    <input type="button" class="complete" id="editCertificate_complete" @click='editCerInfo_complete'
                           value="完成">
                </div>
            </div>
        </div>
        <hr color="#f2f3f3" size="1px">
        <!--个人优势-->
        <div id="advantage1" class="advantage" v-show='advantage1'>
            <div class="advantage_title">
                <h2 class="title">个人优势</h2>
            </div>
            <div class="main">
                <!--内容-->
                <div class="content clearfix">
                    <div class="advantage_info">
                        编辑个人优势：Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio quibusdam odit
                        reiciendis sint aliquid tempora laboriosam eum cumque cupiditate aut illum minus possimus
                        voluptatum, a iure dolorum architecto assumenda. Delectus quae laborum ad nihil. Quo facilis
                        cupiditate enim sint est repellat omnis ex ab ipsam. Deleniti nam nisi minima ipsum.
                    </div>
                    <a class="edit" @click='edit_advantage' href="#certificate1">
                        <i class="iconfont icon-bianji"></i>
                        <span>编辑</span>
                    </a>
                </div>
            </div>
        </div>
        <!--编辑个人优势-->
        <div id="advantage2" class="edit_advantage" v-show='advantage2'>
            <h3 class="edit_title">编辑个人优势</h3>
            <div class="advantage_editInfo clearfix">
                <!--个人优势-->
                <div class="edit_perAdvantage box1">
                    <div>
                    <textarea name="" cols="92" rows="8"
                              placeholder="例如:两年Java开发经验，熟悉Spring框架，对代码有一定程度的自我理解。"></textarea>
                    </div>
                </div>
                <!--操作区域-->
                <div class="edit_operation">
                    <input type="button" class="cancel" id="editAdvantage_cancel" @click='editAdvInfo_cancel'
                           value="取消">
                    <input type="button" class="complete" id="editAdvantage_complete" @click='editAdvInfo_complete'
                           value="完成">
                </div>
            </div>
        </div>
        <hr color="#f2f3f3" size="1px">
        <!--附件管理-->
        <div class="attachment">
            <div class="attachment_title">
                <h2 class="title">附件管理</h2>
            </div>
            <div class="main">
                <div class="personalAtt">
                    <a class="file" href="javascript:">
                        <i class="iconfont icon-wenjian"></i>
                    </a>
                    <input class="txt" type="text" name="resume_name" id="resume_name" placeholder="例如:个人简历-袁杰"/>
                    <a class="remove" href="javascript:">
                        <i class="iconfont icon-icon_huabanfuben"></i>
                        <span>删除</span>
                    </a>
                </div>
            </div>
            <input class="submit_btn" type="submit" value="上传简历"/>
        </div>
    </div>
</form>

<script src="../../../js/myVue.js"></script>
</body>

</html>