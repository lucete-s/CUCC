<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*, java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="style/images/2.png">
    <title>indie Film</title>

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
        <div class="container no_inner" >

            <!-- 공지사항입니다 -->
            <h1 class="section-title page-title1" style="text-align: center;">공지사항</h1>
            <div class="page-content">


                    <ul class="list list-board" style="list-style: none;">
                    <li class="item">
                        <a href="">
                        <div class="title">제목</div></a>
                        <div class="date">날짜</div>
                    </li>



                </ul>




            </div>


            </div>

    </div>

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

<script src="style/js/jquery.min.js"></script>
<script src="style/js/bootstrap.min.js"></script>
<script src="style/js/plugins.js"></script>
<script src="style/js/classie.js"></script>
<script src="style/js/jquery.themepunch.tools.min.js"></script>
<script src="style/js/scripts.js"></script>
</body>
</html>