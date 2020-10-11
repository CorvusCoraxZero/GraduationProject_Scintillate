<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2020/5/8
  Time: 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <script src="js/jquery-3.3.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <title>搜索</title>
    <style>
        body{
            background: #ffffff;
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
            margin-bottom: 0;
            background: #ffffff;
        }
        .nav-tabs{
            text-align: center;
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
        /*搜索内容的样式*/
        #search_content{
            font-size: 1.6em;
            font-weight: bold;
        }
        #search_num{
            font-weight: bold;
            color: #555555;
        }
        /*中部内容div样式*/
        .content_category{
            padding-top: 15px;
        }
        .item_num{
            font-size: 0.6em;
            color: white;
            background-color: #aaaaaa;
            border-radius: 10px;
            padding: 2px 5px;
        }
        .compress_work_a_img{
            height: 150px;
            width: 150px;
        }
        .compress_work_a_img img {
            max-height: 149px;
            max-width: 149px;
            position: absolute;
            left: 45%;
            top: 44%;
            transform: translate(-50%, -50%);
        }
        .work_name{
            font-size:1.1em;
            font-weight: bold;
            color: #000;
            text-decoration: none;
        }
        .work_name:hover{
            text-decoration: none;
        }
        .work{
            margin-top: 5px;
            margin-bottom: 5px;
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
                            <li class="dropdown-item"><a href="#" ><span class="glyphicon glyphicon glyphicon-picture" style="color: rgb(100, 100, 100);"> 插画</span></a></li>
                            <li class="dropdown-item"><a href="#" ><span class="glyphicon glyphicon-play-circle" style="color: rgb(100, 100, 100);"> 动画</span></a></li>
                            <li class="dropdown-item"><a href="#"><span class="glyphicon glyphicon-th-large" style="color: rgb(100, 100, 100);"> 漫画</span></a></li>
                            <li class="dropdown-item"><a href="#"><span class="glyphicon glyphicon-book" style="color: rgb(100, 100, 100);"> 小说</span></a></li>
                        </ul>
                    </li>
                    <li><a href="#"><span class="glyphicon glyphicon-envelope" style="color: rgb(160, 160, 160); font-size: 1.3em; "></span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bell" style="color: rgb(160, 160, 160); font-size: 1.3em; "></span></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img src="img/bg1.jpg" alt="..." width="30px" height="30px" class="img-circle"><span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><img src="img/bg1.jpg" alt="..." width="50px" height="50px" class="img-circle"> 困困的小鑫</li>
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
    <div class="col-md-10 col-md-offset-1">
        <span id="search_content">搜索内容</span>
        <p style="color: #8c8c8c"></p><span id="search_num" >136 </span>作品</p>
    </div>
</div>
<div id="content_div" class="col-md-10 col-md-offset-1">
    <div class="col-md-12 content_category">
        <span class="col-md-12" style="font-weight: bold;font-size: 1.4em;color: #595959" >漫画·插画 <span class="item_num" >256</span></span>
        <div class="col-xs-6 col-md-2 work">
            <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                <img src="img/work1.jpg" alt="作品1">
            </a>
            <a href="#" class="work_name">作品名字</a>
        </div>
        <div class="col-xs-6 col-md-2 work">
            <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                <img src="img/work1.jpg" alt="作品1">
            </a>
            <a href="#" class="work_name">作品名字</a>
        </div>
        <div class="col-xs-6 col-md-2 work">
            <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                <img src="img/work2.png" alt="作品1">
            </a>
            <a href="#" class="work_name">作品名字</a>
        </div>
        <div class="col-xs-6 col-md-2 work">
            <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                <img src="img/work2.png" alt="作品1">
            </a>
            <a href="#" class="work_name">作品名字</a>
        </div>
        <div class="col-xs-6 col-md-2 work">
            <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                <img src="img/work1.jpg" alt="作品1">
            </a>
            <a href="#" class="work_name">作品名字</a>
        </div>
        <div class="col-xs-6 col-md-2 work">
            <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                <img src="img/bg1.jpg" alt="作品1">
            </a>
            <a href="#" class="work_name">作品名字</a>
        </div>
        <div class="col-xs-6 col-md-2 work">
            <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                <img src="img/work1.jpg" alt="作品1">
            </a>
            <a href="#" class="work_name">作品名字</a>
        </div>
        <div class="col-xs-6 col-md-2 work">
            <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                <img src="img/work1.jpg" alt="作品1">
            </a>
            <a href="#" class="work_name">作品名字</a>
        </div>
        <div class="col-xs-6 col-md-2 work">
            <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                <img src="img/work2.png" alt="作品1">
            </a>
            <a href="#" class="work_name">作品名字</a>
        </div>
        <div class="col-xs-6 col-md-2 work">
            <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                <img src="img/work2.png" alt="作品1">
            </a>
            <a href="#" class="work_name">作品名字</a>
        </div>
        <div class="col-xs-6 col-md-2 work">
            <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                <img src="img/work1.jpg" alt="作品1">
            </a>
            <a href="#" class="work_name">作品名字</a>
        </div>
        <div class="col-xs-6 col-md-2 work">
            <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                <img src="img/work1.jpg" alt="作品1">
            </a>
            <a href="#" class="work_name">作品名字</a>
        </div>
        <div class="col-xs-6 col-md-2 work">
            <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                <img src="img/work1.jpg" alt="作品1">
            </a>
            <a href="#" class="work_name">作品名字</a>
        </div>
        <div class="col-xs-6 col-md-2 work">
            <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                <img src="img/work2.png" alt="作品1">
            </a>
            <a href="#" class="work_name">作品名字</a>
        </div>
        <div class="col-xs-6 col-md-2 work">
            <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                <img src="img/work2.png" alt="作品1">
            </a>
            <a href="#" class="work_name">作品名字</a>
        </div>
        <div class="col-xs-6 col-md-2 work">
            <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                <img src="img/work1.jpg" alt="作品1">
            </a>
            <a href="#" class="work_name">作品名字</a>
        </div>
        <div class="col-xs-6 col-md-2 work">
            <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                <img src="img/work1.jpg" alt="作品1">
            </a>
            <a href="#" class="work_name">作品名字</a>
        </div>
        <div class="col-xs-6 col-md-2 work">
            <a href="#" class="thumbnail compress_work_a_img" style="margin-bottom: 0;">
                <img src="img/work1.jpg" alt="作品1">
            </a>
            <a href="#" class="work_name">作品名字</a>
        </div>
        <div class="col-md-12"></div><%--起分隔画作和按钮的作用--%>
        <nav aria-label="Page navigation" class="col-md-6 col-md-offset-4">
            <ul class="pagination">
                <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</div>
<%--给底部留白显得好看一点--%>
<div class="col-md-12" style="height: 60px;"></div>
</body>
</html>