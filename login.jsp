<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="style/images/2.png">
    <title>Show Off</title>

    <link href="style/css/bootstrap.min.css" rel="stylesheet">
    <link href="style/css/plugins.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet">
    <link href="style/css/color/blue.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Karla:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <link href="style/type/icons.css" rel="stylesheet">


    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

</head>
<body>

<main class="body-wrapper">
    <!-- 메뉴바 -->
    <nav class="navbar solid light">
        <div class="navbar-header">
            <div class="basic-wrapper">
                <!-- logo -->
                <div class="navbar-brand"> <a href="index.jsp"><img src="style/images/logo.PNG" width="140px" height="60px" class="logo-dark" alt="" /></a> </div>
                <a class="btn responsive-menu" data-toggle="collapse" data-target=".navbar-collapse"><i></i></a>
            </div>
        </div>

        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <!-- 소개글 -->
                <a href=""><li class="dropdown">About <span class="caret"></span></a>
                </li>

                <!-- UCC 공모전 -->
                <a href=""><li class="dropdown">Contest <span class="caret"></span></a>
                </li>

                <!-- 공모전 인기순위 -->
                <a href=""><li class="dropdown">Best Ucc <span class="caret"></span></a>
                </li>


                <!-- 커뮤니티 게시판 -->
                <li class="dropdown"><a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown">Community <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="">Notice</a></li>
                        <li><a href="">Q&A</a></li>
                    </ul>
                </li>

                <!-- 로그인 -->
                <% if(session.getAttribute("G_uid") == null) {%>
                <a href="login.jsp" ><li class="dropdown">Login <span class="caret"></span></a>
                </li>
                <% }else
                {
                    session.getAttribute("G_uid");
                %>

                <!-- 마이페이지 -->
                <li class="dropdown"><a href="mypage.jsp" class="dropdown-toggle js-activated" data-toggle="dropdown">MyPage <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="mypage.jsp">Modify Inform</a></li>
                        <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                </li>
                <%}%>

            </ul>
        </div>


        <!-- 메뉴바 sns 아이콘 버튼-->
        <div class="social-wrapper">
            <ul class="social naked">
                <li><a href="https://www.facebook.com/"><i class="icon-s-facebook"></i></a></li>
                <li><a href=""><i class="icon-s-youtube"></i></a></li>
                <li><a href=""><i class="icon-s-twitter"></i></a></li>
                <li><a href=""><i class="icon-s-instagram"></i></a></li>
            </ul>
        </div>

    </nav>
    <!-- 메뉴바 끝 -->


    <div class="offset"></div>
    <div class="light-wrapper">
        <div class="container inner" style="padding-top:200px; padding-bottom: 200px; ">
            <h1 class="section-title text-center">로그인</h1>
            <!--로그인 폼 파트입니다. -->
                    <form method="post" action="login_ok.jsp" class="login_form">
                        <table style="margin: auto;" class="login_table">
                            <tr><td>이메일</td><td><input type="text" id="member_id" name="member_id"> </td></tr>
                            <tr><td>비밀번호</td><td><input type="password" id="member_pw" name="member_pw"> </td></tr>
                        </table>
                        <input type="submit" value="로그인" class="btn btn-aqua" style="align:center; margin-top: 40px; margin-left: 30px;">
                        <a href="join.jsp"> <input type="button" class="btn btn-aqua" style="align:center; margin-top: 40px; margin-left: 30px;" value="회원가입"></input></a>
                    </form>


            </div>
            <!-- /.container -->
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
            <script type="text/javascript">
                jQuery( function ($) {
                    var  form = $('.login_form'),
                        member_id = $('#member_id'),
                        member_pw = $('#member_pw');

                    form.submit(function () {
                        if(member_id.val().length == 0 || member_pw.val().length == 0){
                            alert("아이디 혹은 비밀번호가 공백입니다.");
                            member_id.focus();
                            return false;
                        }
                    });
                    return true;
                    document.login_form.submit();
                });
            </script>

            <!-- end login -->

            <!--/.container -->
    </div>
    <!--/.light-wrapper -->
    <footer class="footer inverse-wrapper">

        <div class="sub-footer">
            <div class="container inner">
                <p class="text-center">주최: UCC 공모전<br>
                    <i class="icon-location"></i> (28644) 충북 청주시 서원구 충대로 1, 충북대학교 전자정보대학 소프트웨어학과 S4-1동<br>
                    <i class="icon-phone"></i> 043-261-2260 / 043-261-2785<br>
                    <i class="icon-mail"></i> E-mail. lucete-s@naver.com<br>
                    © 2019. All rights reserved.
                </p>
            </div>
            <!-- .container -->
        </div>
        <!-- .sub-footer -->
    </footer>
    <!-- /footer -->

</main>
<!--/.body-wrapper -->
<script src="style/js/jquery.min.js"></script>
<script src="style/js/bootstrap.min.js"></script>
<script src="style/js/plugins.js"></script>
<script src="style/js/classie.js"></script>
<script src="style/js/jquery.themepunch.tools.min.js"></script>
<script src="style/js/scripts.js"></script>
</body>
</html>