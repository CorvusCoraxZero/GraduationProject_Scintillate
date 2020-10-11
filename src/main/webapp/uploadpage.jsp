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
    <title>上传页面</title>
    <style>
        body{
            background: #f4f2f4;
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
        #navbar-default{
            margin-bottom: 0;
            background: #ffffff;
        }
        .nav-tabs{
            text-align: center;
        }
        #nav-tabs-div{
            background: #6c6c6c;
        }
        .nav-tabs-item{
            font-weight: bold;
            color: white;
        }
        .nav-tabs-item a{
            color: white;
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
        #file_upload_div{
            padding-top: 50px;
            padding-bottom:20px;
            background: #333333;
        }
        #file_upload_div input{
            margin: 0 auto;
            background-color: #089cff;
        }
        #file_upload_div p{
            margin-top: 10px;
            color: whitesmoke;
            text-align: center;
        }
        #work_msg_div{
            padding-top: 20px;
            margin: 20px 300px 0 300px;
            border-radius: 10px;
            height:400px;
            background: white;
        }
        .form-group{
            padding-bottom: 10px;
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
    <div id="nav-tabs-div">
        <ul class="nav nav-tabs">
            <li role="presentation" class="active col-md-offset-4 col-md-1 nav-tabs-item"><a href="#">插画</a></li>
            <li role="presentation" class="col-md-1 nav-tabs-item"><a href="#">漫画</a></li>
            <li role="presentation" class="col-md-1 nav-tabs-item"><a href="#">动图</a></li>
            <li role="presentation" class="col-md-1 nav-tabs-item"><a href="#">小说</a></li>
        </ul>
    </div>
    <script >
       /* $(function () {
            $("#btn_publish").click(function () {
                //alert("不合规文件，请上传JPEG PNG格式的文件！");
                $.post("work/fileUpload",$("#work_from").serialize(),function (date) {
                    alert(date);
                })
            });
        })*/
    </script>
    <form id="work_from" action="work/fileUpload" method="post" enctype="multipart/form-data">
        <div id="file_upload_div">
            <input type="file" id="file_upload" name="imgFile">
            <P>JPEG PNG</P>
            <P>投稿要求每张在32MB以内</P>
        </div>
        <div id="work_msg_div">
            <div class="form-group " id="input_div1" enctype="multipart/form-data">
                <div class="col-md-10 col-md-offset-1">
                    <label for="work_name">名称：</label>
                    <input type="text" class="form-control" id="work_name" name="wname" placeholder="请输入作品名称">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-10 col-md-offset-1">
                    <label for="work_introduce">简介：</label>
                    <textarea class="form-control" rows="3" id="work_introduce" name="introduce" placeholder="请输入作品简介（200字以内）"></textarea>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-10 col-md-offset-1">
                    <label for="work_tags">标签：(小于10个)</label>
                    <input type="text" class="form-control" id="work_tags" name="tags" placeholder="请输出标签（例:#天空 #白云）">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-10 col-md-offset-1">
                    <label for="input_gender">年龄限制</label>
                    <div id = "input_gender">
                        <label class="radio-inline">
                            <input type="radio" name="allow" id="optionsRadios1" value="0" checked> 0
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="allow" id="optionsRadios2" value="18"> R18
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="allow" id="optionsRadios3" value="18"> R18G
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-5 col-md-2 btn-area">
                    <button type="submit" class="btn btn-info pixiv_btn"style="padding: 5px 42px" id="btn_publish">发布</button>
                </div>
            </div>
        </div>
    </form>

</div>
<%--给底部留白显得好看一点--%>
<div class="col-md-12" style="height: 60px;"></div>
</body>
</html>
