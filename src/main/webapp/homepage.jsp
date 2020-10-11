<%@ page import="cn.jiaxin.domain.User" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2020/5/5
  Time: 18:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人主页</title>
    <!--导入bootstrap框架-->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <script src="js/jquery-3.3.1.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <style>
        /*body的样式*/
        body{
            background-color: #e4e7ee;
        }
        #left_div,#right_div,#center_div{
            border-left: 4px solid #e4e7ee;
            border-right: 4px solid #e4e7ee;

            height: 500px;
            background-color: #ffffff;
            border-radius: 10px;
        }
        /*<-----head_div的样式----->
        导航栏的样式*/
        #brand{
            color: #0096fa;
            font-size: 1.4em;
            font-weight: bolder;
        }
        #search{
            width: 30%;
        }
        #search_div{
            width: 70%;
        }
        #search_input{
            width: 100%;
        }
        .dropdown-item{
            height: 2em;
        }

        .nav-tabs-item{
            text-align: center;
        }
        .nav-tabs-item a{
            color: dimgrey;
        }
        #navbar-default{
            margin-bottom: 0px;
            background: #ffffff;
        }

        /*导航条的样式*/
        #nav-tabs-div{
            background-color: #e4e7ee;
        }

        /*<-----left_div的样式----->
        用户信息的样式*/
        #user_msg_div{
            margin-top: 10px;
            padding-bottom:10px;
            border-bottom: 2px solid #e4e7ee;
        }
        /*链接列表的样式*/
        .left_ul li a{
            text-decoration: none;
            color: black;
        }
        .left_ul{
            border-bottom: 2px solid #e4e7ee;
        }
        .left_ul li{
            padding-top: 0.4em;
            height: 2.3em;
        }
        .left_ul li:hover{
            background-color: #f5f5f5;
        }
        /*<-----center_div的样式----->
              通知栏的样式*/
        #center_div{
            padding: 0px;
            background: #e4e7ee;
        }
        #announcement{
            padding: 10px;
            border-bottom: 2px solid #e4e7ee;
            border-radius: 10px;
            background:white;
        }
        .caption{
            padding-left: 5px;
            font-weight: bolder;
            background-color: #f2f4f6;
        }
        .announcement_item_category{
            padding-left: 10px;
            padding-right: 10px;
            background-color: #ebe1fe;
            color: black;
            border-radius: 5px;
        }

        /*中部内容div的样式*/
        #center_content_div{
            padding: 10px;
            border-radius: 10px;
            background:white;
        }
        .work{
            height: 176px;
        }
        .work_a_img{
            height: 125px;
            width: 125px;
        }
        .work img {
            max-height: 120px;
            max-width: 120px;
            position: absolute;
            left: 46%;
            top: 35%;
            transform: translate(-50%, -50%);
        }
        .work_a_name{
            display: block;
            text-align: center;
            font-weight: bolder;
            font-size: 0.8em;
        }
        .work_a_author{
            display: block;
            text-align: center;
            font-weight: lighter;
            font-size: 0.8em;
        }
        .show_more{
            font-size: 0.8em;
            font-weight: lighter;
            margin-top: 5px;
            margin-bottom: 5px;
        }
        /*<-----right_div的样式----->
             排行榜的样式*/
        #right_div{
            padding: 0px;
            background: #e4e7ee;
        }
        .rank_list{
            padding: 10px;
            border-bottom: 4px solid #e4e7ee;
            border-radius: 10px;
            background:white;
            height:430px;
        }
        .rank_list_work{
            padding: 0;
        }
        .rank_list_img_div{
            padding: 0;
        }
        .rank_list_img_a{
            width: 110px;
            height: 110px;
            margin-bottom: 5px;
            margin-top: 5px;
        }
        .rank_list_img_div img{
            max-width: 103px;
            max-height: 103px;
            position: absolute;
            left: 48%;
            top: 50%;
            transform: translate(-50%, -50%);
        }

    </style>
</head>
<body>
    <div id="head_div">
        <nav class="navbar navbar-default" id="navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="homepage.jsp"><span id="brand">Scintillate</span></a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="homepage.jsp">插画·漫画</a></li>
                        <li><a href="homepage.jsp">动图</a></li>
                        <li><a href="homepage.jsp">小说</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> 查看 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-item"><a href="#"><span class="glyphicon glyphicon-heart-empty" style="color: rgb(100, 100, 100);"> 已关注的用户的最新作品</span></a></li>
                                <li class="dropdown-item"><a href="#"><span class="glyphicon glyphicon-eye-open" style="color: rgb(100, 100, 100); "> 发现</span></a></li>
                                <li class="dropdown-item"><a href="#"><span class="glyphicon glyphicon-bullhorn" style="color: rgb(100, 100, 100); "> 动态</span></a></li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-item"><a href="#"><span class="glyphicon glyphicon-sort" style="color: rgb(100, 100, 100); "> 排行榜</span></a></li>
                                <li class="dropdown-item"><a href="#"><span class="glyphicon glyphicon-leaf" style="color: rgb(100, 100, 100); "> 本站最新作品</span></a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#"><span class="glyphicon glyphicon-tower" style="color: rgb(100, 100, 100); "> 比赛</span></a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-left" id="search">
                        <div class="form-group" id="search_div">
                            <input type="text" class="form-control" id="search_input" placeholder="搜索作品">
                        </div>
                        <button type="submit" class="btn btn-default">查找</button>
                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">投稿作品 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-item"><a href="uploadpage.jsp" ><span class="glyphicon glyphicon glyphicon-picture" style="color: rgb(100, 100, 100);"> 插画</span></a></li>
                                <li class="dropdown-item"><a href="#" ><span class="glyphicon glyphicon-play-circle" style="color: rgb(100, 100, 100);"> 动图</span></a></li>
                                <li class="dropdown-item"><a href="uploadpage.jsp"><span class="glyphicon glyphicon-th-large" style="color: rgb(100, 100, 100);"> 漫画</span></a></li>
                                <li class="dropdown-item"><a href="#"><span class="glyphicon glyphicon-book" style="color: rgb(100, 100, 100);"> 小说</span></a></li>
                            </ul>
                        </li>
                        <li><a href="#"><span class="glyphicon glyphicon-envelope" style="color: rgb(160, 160, 160); font-size: 1.3em; "></span></a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-bell" style="color: rgb(160, 160, 160); font-size: 1.3em; "></span></a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img src="img/bg1.jpg" alt="..." width="30px" height="30px" class="img-circle"><span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><img src="img/bg1.jpg" alt="..." width="50px" height="50px" class="img-circle"> <%=((User)session.getAttribute("user")).getUname()%></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">作品管理</a></li>
                                <li><a href="#">收藏</a></li>
                                <li><a href="#">浏览记录</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">设置</a></li>
                                <li><a href="#">退出登录</a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <div id="nav-tabs-div">
            <ul class="nav nav-tabs">
                <li role="presentation" class="active col-md-offset-5 col-md-1 nav-tabs-item"><a href="#">漫画·插画</a></li>
                <li role="presentation" class="col-md-1 nav-tabs-item"><a href="#">小说</a></li>
            </ul>
        </div>

    </div>


    <div id="left_div" class="col-md-offset-2 col-md-2">
        <div id="user_msg_div">
            <img src="img/bg1.jpg" alt="..." width="50px" height="50px" class="img-circle"> <span style="font-weight: bolder"> &nbsp;&nbsp;<%=((User)session.getAttribute("user")).getUname()%></span>
        </div>
        <div>
            <ul class="left_ul list-unstyled">
                <li><a href="#"><div>关注</div></a></li>
                <li><a href="#"><div>粉丝</div></a></li>
            </ul>
            <ul class="left_ul list-unstyled">
                <li><a href="#"><div>浏览记录</div></a></li>
                <li><a href="#"><div>评论记录</div></a></li>
            </ul>
            <ul class="left_ul list-unstyled">
                <li><a href="#"><div>扩展链接</div></a></li>
                <li><a href="#"><div>扩展链接</div></a></li>
                <li><a href="#"><div>扩展链接</div></a></li>
                <li><a href="#"><div>扩展链接</div></a></li>
            </ul>
        </div>
    </div>

    <div id="center_div" class="col-md-4">
        <div id="announcement"><%--通知栏--%>
            <div class="caption">
                <span>公告</span>
            </div>
            <a href="#"><div><span class="announcement_item_category">新通知</span><span>Scintillate社区正在测试阶段......</span></div></a>
            <a href="#"><div><span class="announcement_item_category">新通知</span><span>Scintillate社区正在测试阶段......</span></div></a>
            <a href="#"><div><span class="announcement_item_category">新通知</span><span>Scintillate社区正在测试阶段......</span></div></a>
        </div>
        <div id="center_content_div" style="height: fit-content;">
            <div class="caption">
                <span>发现</span>
            </div>
            <div class="row">
                <div class="col-xs-6 col-md-4 work">
                    <div>
                        <a href="work/workpage?wid=30" class="thumbnail work_a_img" style="margin-bottom: 0;">
                            <img src="${pageContext.request.contextPath}/userinfo/1/30.jpg" alt="作品1">
                        </a>
                    </div>
                    <a href="#" class="work_a_name" >小企鹅哒</a>
                    <a href="#" class="work_a_author">The_zero</a>
                </div>
                <div class="col-xs-6 col-md-4 work">
                    <div>
                        <a href="work/workpage?wid=31" class="thumbnail work_a_img" style="margin-bottom: 0;">
                            <img src="${pageContext.request.contextPath}/userinfo/1/31.jpg" alt="作品2">
                        </a>
                    </div>
                    <a href="#" class="work_a_name" >来照相哇~</a>
                    <a href="#" class="work_a_author" >The_zero</a>
                </div>
                <div class="col-xs-6 col-md-4 work">
                    <div>
                        <a href="work/workpage?wid=32" class="thumbnail work_a_img" style="margin-bottom: 0;">
                            <img src="${pageContext.request.contextPath}/userinfo/1/32.jpg" alt="作品1">
                        </a>
                    </div>
                    <a href="#" class="work_a_name" >太阳系~</a>
                    <a href="#" class="work_a_author">The_zero</a>
                </div>
                <div class="col-xs-6 col-md-4 work">
                    <div>
                        <a href="#" class="thumbnail work_a_img" style="margin-bottom: 0;">
                            <img src="img/work2.png" alt="作品2">
                        </a>
                    </div>
                    <a href="#" class="work_a_name" >作品十个字十个字二二</a>
                    <a href="#" class="work_a_author" >画师2</a>
                </div>
                <div class="col-xs-6 col-md-4 work">
                    <div>
                        <a href="#" class="thumbnail work_a_img" style="margin-bottom: 0;">
                            <img src="img/work1.jpg" alt="作品1">
                        </a>
                    </div>
                    <a href="#" class="work_a_name" >作品十个字十个字二二</a>
                    <a href="#" class="work_a_author">画师1</a>
                </div>
                <div class="col-xs-6 col-md-4 work">
                    <div>
                        <a href="#" class="thumbnail work_a_img" style="margin-bottom: 0;">
                            <img src="img/work2.png" alt="作品2">
                        </a>
                    </div>
                    <a href="#" class="work_a_name" >作品十个字十个字二二</a>
                    <a href="#" class="work_a_author" >画师2</a>
                </div>
                <a class="col-md-3 col-md-offset-9 show_more">>>查看更多</a>
            </div>

            <div class="caption">
                <span>本站最新作品</span>
            </div>
            <div class="row">
                <div class="col-xs-6 col-md-4 work">
                    <div>
                        <a href="#" class="thumbnail work_a_img" style="margin-bottom: 0;">
                            <img src="img/work1.jpg" alt="作品1">
                        </a>
                    </div>
                    <a href="#" class="work_a_name" >作品十个字十个字二二</a>
                    <a href="#" class="work_a_author">画师1</a>
                </div>
                <div class="col-xs-6 col-md-4 work">
                    <div>
                        <a href="#" class="thumbnail work_a_img" style="margin-bottom: 0;">
                            <img src="img/work2.png" alt="作品2">
                        </a>
                    </div>
                    <a href="#" class="work_a_name" >作品十个字十个字二二</a>
                    <a href="#" class="work_a_author" >画师2</a>
                </div>
                <div class="col-xs-6 col-md-4 work">
                    <div>
                        <a href="#" class="thumbnail work_a_img" style="margin-bottom: 0;">
                            <img src="img/work1.jpg" alt="作品1">
                        </a>
                    </div>
                    <a href="#" class="work_a_name" >作品十个字十个字二二</a>
                    <a href="#" class="work_a_author">画师1</a>
                </div>
                <div class="col-xs-6 col-md-4 work">
                    <div>
                        <a href="#" class="thumbnail work_a_img" style="margin-bottom: 0;">
                            <img src="img/work2.png" alt="作品2">
                        </a>
                    </div>
                    <a href="#" class="work_a_name" >作品十个字十个字二二</a>
                    <a href="#" class="work_a_author" >画师2</a>
                </div>
                <div class="col-xs-6 col-md-4 work">
                    <div>
                        <a href="#" class="thumbnail work_a_img" style="margin-bottom: 0;">
                            <img src="img/work1.jpg" alt="作品1">
                        </a>
                    </div>
                    <a href="#" class="work_a_name" >作品十个字十个字二二</a>
                    <a href="#" class="work_a_author">画师1</a>
                </div>
                <div class="col-xs-6 col-md-4 work">
                    <div>
                        <a href="#" class="thumbnail work_a_img" style="margin-bottom: 0;">
                            <img src="img/work2.png" alt="作品2">
                        </a>
                    </div>
                    <a href="#" class="work_a_name" >作品十个字十个字二二</a>
                    <a href="#" class="work_a_author" >画师2</a>
                </div>
                <a class="col-md-3 col-md-offset-9 show_more">>>查看更多</a>
            </div>

            <div class="caption">
                <span>已关注用户的最新作品</span>
            </div>
            <div class="row">
                <div class="col-xs-6 col-md-4 work">
                    <div>
                        <a href="#" class="thumbnail work_a_img" style="margin-bottom: 0;">
                            <img src="img/work1.jpg" alt="作品1">
                        </a>
                    </div>
                    <a href="#" class="work_a_name" >作品十个字十个字二二</a>
                    <a href="#" class="work_a_author">画师1</a>
                </div>
                <a class="col-md-3 col-md-offset-9 show_more">>>查看更多</a>
            </div>

        </div>
    </div>

    <div id="right_div" class="col-md-2">
        <div class="rank_list">
            <div class="caption">
                <span>每日排行榜</span>
            </div>
            <div class="rank_list_work col-md-12">
                <div class="col-xs-6 col-md-6 rank_list_img_div">
                    <a href="#" class="thumbnail rank_list_img_a" >
                        <img src="img/work1.jpg" alt="...">
                    </a>
                </div>
                <div class="col-xs-6 col-md-6">
                    <a href="#" ><span style="font-size: 2em;">1.</span>作品十个字十个字二二</a><br>
                    <a href="#"  >author1</a>
                </div>
            </div>
            <div class="rank_list_work col-md-12">
                <div class="col-xs-6 col-md-6 rank_list_img_div">
                    <a href="#" class="thumbnail rank_list_img_a">
                        <img src="img/work2.png" alt="...">
                    </a>
                </div>
                <div class="col-xs-6 col-md-6">
                    <a href="#" ><span style="font-size: 2em;">2.</span>作品十个字十个字二二</a><br>
                    <a href="#"  >author1</a>
                </div>
            </div>
            <div class="rank_list_work col-md-12">
                <div class="col-xs-6 col-md-6 rank_list_img_div">
                    <a href="#" class="thumbnail rank_list_img_a" >
                        <img src="img/work1.jpg" alt="...">
                    </a>
                </div>
                <div class="col-xs-6 col-md-6">
                    <a href="#" ><span style="font-size: 2em;">3.</span>作品十个字十个字二二</a><br>
                    <a href="#"  >author1</a>
                </div>
            </div>
            <a class="col-md-5 col-md-offset-7 show_more">>>查看更多</a>
        </div>

        <div class="rank_list">
            <div class="caption">
                <span>每日排行榜</span>
            </div>
            <div class="rank_list_work col-md-12">
                <div class="col-xs-6 col-md-6 rank_list_img_div">
                    <a href="#" class="thumbnail rank_list_img_a" >
                        <img src="img/work1.jpg" alt="...">
                    </a>
                </div>
                <div class="col-xs-6 col-md-6">
                    <a href="#" ><span style="font-size: 2em;">1.</span>作品十个字十个字二二</a><br>
                    <a href="#"  >author1</a>
                </div>
            </div>
            <div class="rank_list_work col-md-12">
                <div class="col-xs-6 col-md-6 rank_list_img_div">
                    <a href="#" class="thumbnail rank_list_img_a">
                        <img src="img/work2.png" alt="...">
                    </a>
                </div>
                <div class="col-xs-6 col-md-6">
                    <a href="#" ><span style="font-size: 2em;">2.</span>作品十个字十个字二二</a><br>
                    <a href="#"  >author1</a>
                </div>
            </div>
            <div class="rank_list_work col-md-12">
                <div class="col-xs-6 col-md-6 rank_list_img_div">
                    <a href="#" class="thumbnail rank_list_img_a" >
                        <img src="img/work1.jpg" alt="...">
                    </a>
                </div>
                <div class="col-xs-6 col-md-6">
                    <a href="#" ><span style="font-size: 2em;">3.</span>作品十个字十个字二二</a><br>
                    <a href="#"  >author1</a>
                </div>
            </div>
            <a class="col-md-5 col-md-offset-7 show_more">>>查看更多</a>
        </div>

        <div class="rank_list">
            <div class="caption">
                <span>排行榜</span>
            </div>
            <div class="rank_list_work col-md-12">
                <div class="col-xs-6 col-md-6 rank_list_img_div">
                    <a href="#" class="thumbnail rank_list_img_a" >
                        <img src="img/work1.jpg" alt="...">
                    </a>
                </div>
                <div class="col-xs-6 col-md-6">
                    <a href="#" ><span style="font-size: 2em;">1.</span>作品十个字十个字二二</a><br>
                    <a href="#"  >author1</a>
                </div>
            </div>
            <div class="rank_list_work col-md-12">
                <div class="col-xs-6 col-md-6 rank_list_img_div">
                    <a href="#" class="thumbnail rank_list_img_a">
                        <img src="img/work2.png" alt="...">
                    </a>
                </div>
                <div class="col-xs-6 col-md-6">
                    <a href="#" ><span style="font-size: 2em;">2.</span>作品十个字十个字二二</a><br>
                    <a href="#"  >author1</a>
                </div>
            </div>
            <div class="rank_list_work col-md-12">
                <div class="col-xs-6 col-md-6 rank_list_img_div">
                    <a href="#" class="thumbnail rank_list_img_a" >
                        <img src="img/work1.jpg" alt="...">
                    </a>
                </div>
                <div class="col-xs-6 col-md-6">
                    <a href="#" ><span style="font-size: 2em;">3.</span>作品十个字十个字二二</a><br>
                    <a href="#"  >author1</a>
                </div>
            </div>
            <a class="col-md-5 col-md-offset-7 show_more">>>查看更多</a>
        </div>
    </div>
</body>
</html>
