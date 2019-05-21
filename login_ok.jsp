<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018-10-07
  Time: 오전 12:32
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java"
         import="java.util.*, java.io.*, java.sql.*"%>
<%request.setCharacterEncoding("utf-8"); %>
<%
    String member_id = request.getParameter("member_id");
    String member_pw = request.getParameter("member_pw");
    String driver = "org.mariadb.jdbc.Driver";
    Connection connect = null;

    String url = "jdbc:mariadb://localhost:3305/registerdb";
    String uid = "root";
    String pwd = "1234";

    try {

        Class.forName(driver);

        connect = DriverManager.getConnection(url, uid, pwd);

        if (connect != null) {
            String sql = "select member_na, member_type from member where member_id=? and member_pw=?";

            PreparedStatement pstmt = connect.prepareStatement(sql);

            pstmt.setString(1, member_id);
            pstmt.setString(2, member_pw);

            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                String member_na = rs.getString("member_na");
                String member_type = rs.getString("member_type");
                session.setAttribute("G_name", member_na);
                session.setAttribute("G_uid", member_id);
                session.setAttribute("G_type", member_type);
                session.setMaxInactiveInterval(60 * 10);
                // out.print(member_na +"님 로그인되었습니다.");
                // out.print(member_type+"이용자 입니다.");
            } else {
                out.println("로그인에 실패");
            }
            pstmt.close();
            rs.close();
            connect.close();
        }
    }
    catch(Exception e){
        out.println(e.getMessage());
        e.printStackTrace();
    }
    //response.sendRedirect("test.jsp");
    response.sendRedirect("index.jsp");
%>
