<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*, java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
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
    <div class="container inner">
      <h1 class="section-title text-center">회원가입</h1>
      <div class="divide20"></div>
      <div class="row">
        <center>
          <div class="col-sm-12 col-md-8">
            <form class="join_form" name="join_form" method="post" action="join_ok.jsp">
              <table class="join_table" style="margin: auto; background: white; width: 450px; height: 550px;">
                <tr>
                  <td>닉네임</td>
                  <td><input type="text" id="member_na" name="member_na" style="background: white; border: 1px solid #b3b3b3; border-radius: 5px;"> </td>
                </tr>

                <tr>
                  <td>아이디</td>
                  <td><input type="text" id="member_id" name="member_id" placeholder="이메일주소"> </td>
                </tr>
                <tr>
                  <td>비밀번호</td>
                  <td><input type="password" id="member_pw" name="member_pw"> </td>
                </tr>
                <tr>
                  <td>비밀번호 확인</td>
                  <td><input type="password"  id="member_pw_check"  name="member_pw_check"></td>
                </tr>
                <tr>
                  <td>전화번호</td>
                  <td><input type="text" id="member_ph" name="member_ph" placeholder=" '-' 를 제외하고 써주세요" ></td>
                </tr>
                <tr>
                  <td>회원구분</td>
                  <td colspan="2" ><input type="checkbox" value="user" name="member_type" style="color: white;">일반회원&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" value="creater" name="member_type">UCC 제작자
                  </td>
                </tr>
                <tr>
                  <td colspan="2"><input type="submit" class="btn btn-aqua" id="join" value="회원가입" onclick="">
                </tr>


              </table>

            </form>
            <!-- 회원가입 스크립트구역입니다.  -->
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
            <script type="text/javascript">
                jQuery( function ($) {
                    var emid_exp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
                    var pnno_exp = /^\d{3}\d{3,4}\d{4}$/;
                    var pw_exp=/^[a-z0-9_-]{6,18}$/;
                    var  form = $('.join_form'),
                        member_id = $('#member_id'),
                        member_pw = $('#member_pw'),
                        member_pw_check = $('#member_pw_check'),
                        member_na = $('#member_na'),
                        member_ph = $('#member_ph');



                    form.submit(function () {
                        if(member_na.val().length == 0){
                            alert("닉네임은 공백이 될수없습니다.");
                            member_na.focus();
                            return false;
                        }else if(emid_exp.test(member_id.val()) != true) {
                            alert("이메일아이디 형식을 확인해주세요");
                            member_id.focus();
                            return false;
                        }else if(pw_exp.test(member_pw.val()) != true) {
                            alert("비밀번호는 최소 6자리에서 최대 18자리로 구성할수있습니다.");
                            member_pw.focus();
                            return false;
                        }else if(member_pw.val() != member_pw_check.val()){
                            alert("비밀번호가 일치하지않습니다");
                            member_pw_check.focus();
                            return false;
                        }else if(pnno_exp.test(member_ph.val()) != true) {
                            alert("핸드폰 형식을 확인해주세요. '-'제외");
                            member_ph.focus();
                            return false;
                        }
                    });
                    return true;
                    alert("회원가입이 완료되었습니다!")
                    document.join_form.submit();
                });
            </script>

          </div>

        </center>
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
<!--/.body-wrapper -->
<script src="style/js/jquery.min.js"></script>
<script src="style/js/bootstrap.min.js"></script>
<script src="style/js/plugins.js"></script>
<script src="style/js/classie.js"></script>
<script src="style/js/jquery.themepunch.tools.min.js"></script>
<script src="style/js/scripts.js"></script>
</body>
</html>