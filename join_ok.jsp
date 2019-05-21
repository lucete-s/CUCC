<%@ page contentType="text/html;charset=UTF-8" language="java"
         import="java.util.*,java.sql.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%

    String member_id = request.getParameter("member_id");
    String member_pw = request.getParameter("member_pw");
    String member_ph = request.getParameter("member_ph");
    String member_na= request.getParameter("member_na");
    String[] member_type = request.getParameterValues("member_type");
    String member_typeStr="";
    for(String s : member_type){
        member_typeStr += s ;
    }//for
    String driver = "org.mariadb.jdbc.Driver";
    Connection connect = null;

    String url = "jdbc:mariadb://localhost:3305/registerdb";
    String uid = "root";
    String pwd = "1234";

    try {

        Class.forName(driver);

        connect = DriverManager.getConnection(url, uid, pwd);

        if (connect != null) {


            String sql = "insert into member(member_id,member_pw,member_ph,member_na,member_type) values(?,?,?,?,?)";

            PreparedStatement pstmt = connect.prepareStatement(sql);

            pstmt.setString(1, member_id);
            pstmt.setString(2, member_pw);
            pstmt.setString(3, member_ph);
            pstmt.setString(4, member_na);
            pstmt.setString(5, member_typeStr);

            pstmt.executeUpdate();
            pstmt.close();
            connect.close();
        }
    }
        catch(Exception e){
            out.println(e.getMessage());
            e.printStackTrace();
        }
%>

<script language="javascript">
    alert('회원가입이 완료되었습니다.');
    location.href="login.jsp";
</script>