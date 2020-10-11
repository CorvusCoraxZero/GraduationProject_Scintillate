<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2020/5/5
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!--导入bootstrap框架-->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <script src="js/jquery-3.3.1.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <style>
        #login_div {
            background: rgba(255,255,255,0.8);
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            height: auto;
            padding: 0px;
        }

        #input_div1 {
            margin-top: 100px;
        }
        .btn{
            font-size: 1.2em;
            width: 150px;
            border-radius: 50px 50px 50px 50px;
        }
        body {
            background: url("img/bg1.jpg");
            background-position: center center;
            /* 背景图不平铺 */
            background-repeat: no-repeat;
            /* 当内容高度大于图片高度时，背景图像的位置相对于viewport固定 */
            background-attachment: fixed;
            /* 让背景图基于容器大小伸缩 */
            background-size: cover;
        }
    </style>
</head>
<body>
<div class="panel panel-success col-md-4 col-md-offset-4" id="login_div">
    <div class="panel-heading col-md-12"><h3>Scintillate社区，欢迎你</h3></div>
    <div class="panel-body">
        <form class="form-horizontal" action="user/register" method="post">
            <div class="form-group " id="input_div1">
                <div class="col-md-10 col-md-offset-1">
                    <label for="input_email">昵称：</label>
                    <input type="text" class="form-control" id="input_uname" placeholder="请输入您的昵称" name="uname">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-10 col-md-offset-1">
                    <label for="input_email">邮箱：</label>
                    <input type="email" class="form-control" id="input_email" placeholder="请输入您的邮箱地址" name="email">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-10 col-md-offset-1">
                    <label for="input_password1">密码：</label>
                    <input type="password" class="form-control" id="input_password1" placeholder="请输入您的密码" name="password">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-10 col-md-offset-1">
                    <label for="input_password2">确认密码：</label>
                    <input type="password" class="form-control" id="input_password2" placeholder="请再次输入您的密码">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-10 col-md-offset-1">
                    <label for="input_birthday">生日</label>
                    <input type="date" class="form-control" id="input_birthday" placeholder="请选择您的生日" name="birthday">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-10 col-md-offset-1">
                    <label for="input_gender">性别</label>
                    <div id = "input_gender">
                        <label class="radio-inline">
                            <input type="radio" name="gender" id="optionsRadios1" value="男" checked> 男
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="gender" id="optionsRadios2" value="女"> 女
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="gender" id="optionsRadios3" value="娜娜奇"> 娜娜奇
                        </label></div>
                </div>
            </div>
            <hr>
            <div class="form-group">
                <div class="col-md-offset-4 col-md-4 btn-area">
                    <button type="submit" class="btn btn-success" id="btn_register">&nbsp;&nbsp;&nbsp;&nbsp;注册&nbsp;&nbsp;&nbsp;&nbsp;</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
