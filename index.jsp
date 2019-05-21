<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*, java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

    <!-- 메인슬라이드 -->
    <div class="dark-wrapper">
        <div class="tp-fullscreen-container revolution">
            <div class="tp-fullscreen">
                <ul>
                    <!-- 슬라이드 이미지 1 -->
                    <li data-transition="fade"> <img src="style/images/main/SLIDE1.PNG"  alt="" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" />
                        <h1 class="tp-caption large sfr" data-x="30" data-y="263" data-speed="900" data-start="800" data-easing="Sine.easeOut">Show Off</h1>
                        <div class="tp-caption medium sfr" data-x="30" data-y="348" data-speed="900" data-start="1500" data-easing="Sine.easeOut">Make a creative ucc.<br />
                            Show off your creativity with great ideas.</div>
                    </li>

                    <!-- 슬라이드 이미지 2 -->
                    <li data-transition="fade"> <img src="style/images/main/SLIDE2.PNG"  alt="" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" />
                        <div class="tp-caption large text-center sfl" data-x="center" data-y="283" data-speed="900" data-start="800" data-easing="Sine.easeOut">Anyone with an idea can make </div>
                        <div class="tp-caption large text-center sfr" data-x="center" data-y="363" data-speed="900" data-start="1500" data-easing="Sine.easeOut">Show Off</div>
                    </li>


                    <!-- 슬라이드 동영상 -->
                    <li data-transition="fade"> <img src="style/video/nyc.jpg" alt="" data-bgfit="cover" data-bgposition="center top" data-bgrepeat="no-repeat" />
                        <div class="tp-caption large text-center sfb" data-x="center" data-y="293" data-speed="900" data-start="800" data-endspeed="100" data-easing="Sine.easeOut" style="z-index: 2;">UCC Contest</div>
                        <div class="tp-caption medium text-center sfb" data-x="center" data-y="387" data-speed="900" data-start="1500" data-endspeed="100" data-easing="Sine.easeOut" style="z-index: 2;">You can show off your work as much as you like.</div>
                        <div class="tp-caption tp-fade fadeout fullscreenvideo"
                             data-x="0"
                             data-y="0"
                             data-speed="1000"
                             data-start="1100"
                             data-easing="Power4.easeOut"
                             data-elementdelay="0.01"
                             data-endelementdelay="0.1"
                             data-endspeed="1500"
                             data-endeasing="Power4.easeIn"
                             data-autoplay="true"
                             data-autoplayonlyfirsttime="false"
                             data-nextslideatend="true"
                             data-dottedoverlay="twoxtwo"
                             data-volume="mute" data-forceCover="1" data-aspectratio="16:9" data-forcerewind="on" style="z-index: 1;">
                            <video class="" preload="none" width="100%" height="100%"
                                   poster='style/video/nyc.jpg'>
                                <source src='style/video/nyc.mp4' type='video/mp4' />
                                <source src='style/video/nyc.webm' type='video/webm' />
                            </video>
                        </div>
                    </li>

                </ul>
                <div class="tp-bannertimer tp-bottom"></div>

            </div>

        </div>


        <div class="container inner2">

            <!-- /.basic-slider -->

            <div class="divide50"></div>
            <div class="blog grid-view col3">
                <div class="blog-posts text-boxes">
                    <div class="isotope row">
                        <div class="col-sm-6 col-md-4 grid-view-post" style="display: inline;">
                            <div class="post" style="width:100%;">
                                <figure class="main"><a href=""><img style="height:240px;" src="https://img.youtube.com/vi/rcZOPlD-yfQ/hqdefault.jpg" alt="" /></a></figure>
                                <div style="height:220px;" class="box text-center">
                                    <div class="category cat12"><span><a href="#">Drama</a></span></div>
                                    <h4 class="post-title"><a href="">To My Ex</a></h4>
                                    <div class="meta"><span class="date">2019</span><span class="comments"><a href="#"><i class="icon-chat-1"></i> 0</a></span></div>
                                    <p style="font-size: 13px;">졸업했지만 마음 속 한 켠에 자리 잡을 연세대학교의 추억, 연세인이었다는 사실을 이야기하고자 합니다.
                                    </p>
                                </div>
                                <!-- /.box -->
                            </div>
                        </div>
                        <!-- /column -->

                        <div class="col-sm-6 col-md-4 grid-view-post" style="display: inline;">
                            <div class="item post" style="width:100%;">
                                <figure class="main"><a href=""><img style="height:240px;" src="https://img.youtube.com/vi/1MQKjnWjWps/hqdefault.jpg" alt="" /></a></figure>
                                <div style="height:220px;" class="box text-center">
                                    <div class="category cat10"><span><a href="#">Romance</a></span></div>
                                    <h4 class="post-title"><a href="">Winter of Yonsei</a></h4>
                                    <div class="meta"><span class="date">2017</span><span class="comments"><a href="#"><i class="icon-chat-1"></i> 0</a></span></div>
                                    <p style="font-size: 13px;">지난겨울엔 딱 한 번 함박눈이 내려 신촌을 하얗게 덮었는데요. 그 어떤 곳보다 아름다웠던 연세의 캠퍼스를 4,000여 장의 사진으로 담아 ‘연세의 겨울’ 영상으로 만들었습니다.
                                    </p>
                                </div>
                                <!-- /.box -->

                            </div>
                            <!-- /.post -->
                        </div>
                        <!-- /column -->

                        <div class="col-sm-6 col-md-4 grid-view-post" style="display: inline;">
                            <div class="item post" style="width:100%;">
                                <figure class="main"><a href=""><img style="height:240px;" src="https://img.youtube.com/vi/d2XzldxuPDQ/hqdefault.jpg" alt="" /></a></figure>
                                <div style="height:220px;" class="box text-center">
                                    <div class="category cat4"><span><a href="#">Comedy</a></span></div>
                                    <h4 class="post-title"><a href="">사소하지 않은 이야기</a></h4>
                                    <div class="meta"><span class="date">2018</span><span class="comments"><a href="#"><i class="icon-chat-1"></i> 0</a></span></div>
                                    <p style="font-size: 13px;">우리는 각자 다른 환경에서 온 사람들이지만, 연세에서 만나 사소한 일상과 같은 추억을 공유한다. 늘 보는 학관와플, 한울샘, 중도이기에 우리는 그것들에게 특별함을 느끼지 못한다. </p>
                                </div>
                                <!-- /.box -->

                            </div>
                            <!-- /.post -->
                        </div>
                        <!-- /column -->

                        <div class="col-sm-6 col-md-4 grid-view-post" style="display: inline;">
                            <div class="item post" style="width:100%;">
                                <figure class="main"><a href=""><img style="height:240px;"  src="https://img.youtube.com/vi/GTn8LrZzBaU/hqdefault.jpg" alt="" /></a></figure>
                                <div style="height:220px;" class="box text-center">
                                    <div class="category cat12"><span><a href="#">Drama</a></span></div>
                                    <h4 class="post-title"><a href="">연세의 윤동주들에게</a></h4>
                                    <div class="meta"><span class="date">2018</span><span class="comments"><a href="#"><i class="icon-chat-1"></i> 0</a></span></div>
                                    <p style="font-size: 13px;">시대적 상황에 굴복하지 않고 시를 계속 써내려감으로써 상황을 극복해 나간 윤동주 시인의 탄생 100주년을 기리며 만든 작품이다.
                                    </p>
                                <!-- /.box -->

                            </div>
                            <!-- /.post -->
                        </div>
                        </div>
                        <!-- /column -->

                        <div class="col-sm-6 col-md-4 grid-view-post" style="display: inline;">
                            <div class="item post" style="width:100%;">
                                <figure class="main"><a href=""><img style="height:240px;" src="https://img.youtube.com/vi/8sHs-61X-N8/hqdefault.jpg" alt="" /></a></figure>
                                <div style="height:220px;" class="box text-center">
                                    <div class="category cat1"><span><a href="#">Action</a></span></div>
                                    <h4 class="post-title"><a href="">한 연대생의 등굣길</a></h4>
                                    <div class="meta"><span class="date">2018</span><span class="comments"><a href="#"><i class="icon-chat-1"></i> 0</a></span></div>
                                    <p style="font-size: 13px;">연세대학교의 학생들을 꿈으로 안내하는 ‘길잡이’같은 측면을 한 연대생의 등굣길의 모습에 매치하여 표현하였다.</p>
                                </div>
                                <!-- /.box -->

                            </div>
                            <!-- /.post -->
                        </div>
                        <!-- /column -->

                        <div class="col-sm-6 col-md-4 grid-view-post" style="display: inline;">
                            <div class="item post" style="width:100%;">
                            <figure class="main"><a href=""><img style="height:240px;" src="https://img.youtube.com/vi/DxpbY16bqL4/hqdefault.jpg" alt="" /></a></figure>
                            <div style="height:220px;" class="box text-center">
                                <div class="category cat10"><span><a href="#">Romance</a></span></div>
                                <h4 class="post-title"><a href="">연세대학교는 국캠이다</a></h4>
                                <div class="meta"><span class="date">2017</span><span class="comments"><a href="#"><i class="icon-chat-1"></i> 0</a></span></div>
                                <p style="font-size: 13px;">이제 신입생이라면 꼭 한번 다녀오게 될 연세대학교 국제캠퍼스! 국제캠퍼스 모습을 소개해주는 영상입니다</p>
                            </div>


                        </div>
                    </div>

                </div>
            </div>




        </div>

    </div>
    <!--container -->
    </div>
    <!--dark-wrapper -->

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