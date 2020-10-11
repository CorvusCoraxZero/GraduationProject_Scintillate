<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2020/5/5
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录|Scintillate</title>
    <!--导入bootstrap框架-->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <script src="js/jquery-3.3.1.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <style>
        #login_div {
            background: rgba(255,255,255,0.4);
            position: absolute;
            top: 40%;
            transform: translateY(-50%);
            height: auto;
            padding: 0px;
        }

        #input_div1 {
            margin-top: 100px;
        }

        .btn {
            width: 100px;
            border-radius: 50px;
        }

        body {
            background: url("img/bg2.jpg");
            background-position: center center;
            /* 背景图不平铺 */
            background-repeat: no-repeat;
            /* 当内容高度大于图片高度时，背景图像的位置相对于viewport固定 */
            background-attachment: fixed;
            /* 让背景图基于容器大小伸缩 */
            background-size: cover;
        }
    </style>
    <script>
        $(function () {
            $("#btn_register").click(function () {
                window.location.href = 'register.jsp';
            });
        });
    </script>
</head>
<body>
<div class="panel panel-info col-md-4 col-md-offset-4" id="login_div">
    <div class="panel-heading col-md-12"><h3>欢迎来到Scintillate,请登录</h3></div>
    <div class="panel-body">
        <form class="form-horizontal" action="user/login" method="post">
            <div class="form-group " id="input_div1">
                <div class="col-md-10 col-md-offset-1">
                    <input type="email" class="form-control" id="input_email"  placeholder="邮箱地址" name="email">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-10 col-md-offset-1">
                    <input type="password" class="form-control" id="input_password" placeholder="密码" name="password">
                </div>
            </div>
            <hr>
            <div class="form-group">
                <div class="col-md-offset-3 col-md-6 btn-area">
                    <button type="submit" class="btn btn-info ">登录</button>&nbsp;&nbsp;
                    <button type="button" class="btn btn-default" id="btn_register">注册</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
