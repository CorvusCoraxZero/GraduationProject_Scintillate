<%@ page import="cn.jiaxin.domain.Work" %>
<%@ page import="cn.jiaxin.domain.User" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2020/5/7
  Time: 2:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!--导入bootstrap框架-->
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/bootstrap-theme.css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/js/jquery-3.3.1.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
    <title>画作</title>
    <style>
        body{
            background: #f5f5f5;
        }
        /*导航栏的样式*/
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
        .nav-tabs-item a{
            color: dimgrey;
        }
        #navbar-default{
            margin-bottom: 0px;
            background: #ffffff;
        }

        #page_content,#righr_author_content{
            height: max-content;
            border-radius: 10px;
            padding: 0;
            margin-top:20px;

        }
        #page_content{
            background: #ffffff;

            border-right:20px solid #f5f5f5;
            border-left:10px solid #f5f5f5;
            border-radius: 10px;
        }
        /*图片的样式*/
        .work_a_img img{
            max-height: 910px;
            border-radius: 10px;
            margin: 0 auto;
        }
        /*图片下按钮的样式*/
        #img_options{
            margin-top: 5px;
            padding-left: 80px;
        }
        .img_option_btn{
            background: transparent;
            border:none;
            box-shadow: none;
            font-size: 1.5em;
        }
        #work_name{
            font-weight: 700;
            font-size: 1.7em;
            display: block;
            margin-bottom: 15px;
        }
        #work_introduction{
            color: #5c5c5c;
            white-space: pre-line;/*让它可以识别字符串中的\n换行*/
        }
        .work_tag{
            margin-right: 5px;
        }
        #work_publish_time{
            font-size: 0.8em;
            color: #8c8c8c;
            display: block;
        }
        /*center_author_content的样式*/
        #center_author_content{
            margin-top: 40px;
            border-radius: revert;
        }
        .show_more{
            font-size: 0.8em;
            color: #8c8c8c;
        }

        .compress_work_a_img{
            height: 120px;
            width: 120px;
        }
        .compress_work_a_img img {
            max-height: 115px;
            max-width: 115px;
            position: absolute;
            left: 57%;
            top: 50%;
            transform: translate(-50%, -50%);
        }
        /*comment的样式*/
        #comment{
            height: 400px;
            margin-top: 10px;
            padding-top: 30px;
        }
        #comment_input{
            width: 550px;
            margin-right: 10px;
        }
        .comments_photo{
            padding: 0;
        }
        .comments_name{
            font-weight: 600;
        }
        .comments_back{
            background: transparent;
            border:none;
            box-shadow: none;
            font-size: 0.8em;
        }

        /*righr_author_content的样式*/
        #righr_author_content{
            padding-top: 20px;
        }
        .author_name{
            font-weight:600;
            font-size: 1.1em;
            color: #333333;
            cursor:hand;
        }
        .author_name:hover{
            text-decoration: none;
        }
        .pixiv_btn{
            border:none;
            box-shadow: none;
            border-radius: 20px;
            font-weight:600;
            font-size: 1.1em;
            background: #0096fa;
            margin-top: 10px;
        }
        .pixiv_btn:hover{
            background: #0086e0;
        }
        #author_introduction{
            font-weight: 400;
            padding-left: 10px;
        }
    </style>

    <script>
        function commnetback(name) {
            $("#comment_input").val('@'+name+":");
            $("#comment_input").focus();
        }
    </script>
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
                            <li class="dropdown-item"><a href="#" ><span class="glyphicon glyphicon glyphicon-picture" style="color: rgb(100, 100, 100);"> 插画</span></a></li>
                            <li class="dropdown-item"><a href="#" ><span class="glyphicon glyphicon-play-circle" style="color: rgb(100, 100, 100);"> 动画</span></a></li>
                            <li class="dropdown-item"><a href="#"><span class="glyphicon glyphicon-th-large" style="color: rgb(100, 100, 100);"> 漫画</span></a></li>
                            <li class="dropdown-item"><a href="#"><span class="glyphicon glyphicon-book" style="color: rgb(100, 100, 100);"> 小说</span></a></li>
                        </ul>
                    </li>
                    <li><a href="#"><span class="glyphicon glyphicon-envelope" style="color: rgb(160, 160, 160); font-size: 1.3em; "></span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bell" style="color: rgb(160, 160, 160); font-size: 1.3em; "></span></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img src="<%=request.getContextPath()%>/img/bg1.jpg" alt="..." width="30px" height="30px" class="img-circle"><span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><img src="img/bg1.jpg" alt="..." width="50px" height="50px" class="img-circle"> <%=((User)request.getSession().getAttribute("user")).getUname()%></li>
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
</div>
    <div id="page_content" class="col-md-8 col-md-offset-1">
            <a href="<%=request.getContextPath()+"/"+((Work)request.getAttribute("work")).getAddress()%>" class="thumbnail work_a_img" style="margin-bottom: 0;">
                <%--<img src="img/work1.jpg" alt="作品1">--%>
                <img src="<%=request.getContextPath()+"/"+((Work)request.getAttribute("work")).getAddress()%>" alt="作品1">
            </a>
        <div class="col-md-4 col-md-offset-8" id="img_options">
            <button class="btn btn-default img_option_btn" type="submit"><span class="glyphicon glyphicon-thumbs-up"></span></button>
            <button class="btn btn-default img_option_btn" type="submit"><span class="glyphicon glyphicon-heart-empty"></span></button>
            <div class="dropdown" style="display:inline">
                <button class="btn btn-default dropdown-toggle img_option_btn" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                    <span class="glyphicon glyphicon-share"></span>
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                </ul>
            </div>
            <div class="dropdown" style="display:inline">
                <button class="btn btn-default dropdown-toggle img_option_btn" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                    <span class="glyphicon glyphicon-option-horizontal"></span>
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                </ul>
            </div>
        </div>
        <div class="col-md-10 col-md-offset-1">
            <span id="work_name"><%=((Work)request.getAttribute("work")).getWname()%></span>
            <p id="work_introduction"><%=((Work)request.getAttribute("work")).getIntroduce()%></p>
            <a href="#" class="work_tag">#标签1</a><a href="#">#标签1</a><a href="#">#标签2</a>
            <span id="work_publish_time">2020年5月4日 11:00</span><%--忘记了.....--%>
        </div>
        <div id="center_author_content" class="col-md-10 col-md-offset-1">
            <a class="author_name col-md-4"><img src="<%=request.getContextPath()%>/img/bg1.jpg" alt="..." width="50px" height="50px" class="img-circle"> <%=((User)request.getAttribute("author")).getUname()%></a>
            <button type="button" class="btn btn-info col-md-2 col-md-offset-6 pixiv_btn">+关注</button>
            <div class="col-md-12" style="padding-top: 10px;margin-bottom: 10px;"><a href="#" class="show_more">查看作品目录</a></div>
            <div class="row col-md-12" style="padding: 0">
                <div class="col-xs-6 col-md-2 work">
                    <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                        <img src="<%=request.getContextPath()%>/img/work1.jpg" alt="作品1">
                    </a>
                </div>
                <div class="col-xs-6 col-md-2 work">
                    <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                        <img src="<%=request.getContextPath()%>/img/work1.jpg" alt="作品1">
                    </a>
                </div>
                <div class="col-xs-6 col-md-2 work">
                    <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                    <img src="<%=request.getContextPath()%>/img/work2.png" alt="作品1">
                </a>
                </div>
                <div class="col-xs-6 col-md-2 work">
                    <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                        <img src="<%=request.getContextPath()%>/img/work2.png" alt="作品1">
                    </a>
                </div>
                <div class="col-xs-6 col-md-2 work">
                    <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                        <img src="<%=request.getContextPath()%>/img/work1.jpg" alt="作品1">
                    </a>
                </div>
                <div class="col-xs-6 col-md-2 work">
                    <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                        <img src="<%=request.getContextPath()%>/img/more.png" alt="作品1">
                    </a>
                </div>
            </div>
        </div>
        <div class="col-md-12" style="border-top:2px solid #f5f5f5;margin-top: 10px;"></div><%--这就是个分界线--%>
        <div class="col-md-8 col-md-offset-2" id="comment">
            <span style="padding-bottom: 20px;font-weight: bold;">评论:</span>
            <form class="form-inline" id="comment_from">
                <input type="text" class="form-control col-md-12" id="comment_input" placeholder="发表评论" name="comment_msg">
                <button type="submit" class="btn btn-info pixiv_btn" style="margin-top: 0;">发送</button>
            </form>
            <div class="coments">
                <div class="comments_photo col-md-1">
                    <a class="col-md-12"><img src="<%=request.getContextPath()%>/img/bg1.jpg" alt="..." width="40px" height="40px" class="img-circle"></a>
                </div>
                <div class="col-md-10">
                    <span class="comments_name">评论者1</span>
                    <p class="work_introduction">巴拉巴拉评论评论评论</p><%--偷懒直接用的之前的样式--%>
                    <span class="work_publish_time">1天前</span>
                    <input class="btn btn-default comments_back" type="button" value="回复" onclick="commnetback('评论者1')">
                </div>
            </div>
        </div>
    </div>
    <div id="righr_author_content" class="col-md-2" >
        <a class="author_name " href="<%=request.getContextPath()%>/authorpage.jsp"><img src="<%=request.getContextPath()%>/img/bg1.jpg" alt="..." width="50px" height="50px" class="img-circle"> <%=((User)request.getAttribute("author")).getUname()%></a>
        <button type="button" class="btn btn-info col-md-12 pixiv_btn">+关注</button>
        <%--<button type="button" class="btn btn-info col-md-12 subcribe_btn">已关注</button>--%>
        <button type="button" class="btn btn-info col-md-12 pixiv_btn" style="margin-bottom:20px;">查看作品目录</button>

        <p id="author_introduction">
            这个作者很懒..... 他什么也没有说。
        </p>
    </div>
</body>
</html>
