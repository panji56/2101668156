<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="bootstrap-3.4.1-dist/js/jquery-3.6.0.min.js"></script>
    <script src="bootstrap-3.4.1-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="bootstrap-3.4.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
    <title>UTS</title>
    <script src="main.js"></script>
</head>
<body>
    <%@ page import="java.net.URL"%>
    <%@ page import="java.io.*" %>
    <%@page import="java.io.FileInputStream"%>
    <%@page import="java.io.File"%>
    <%@page import="java.io.InputStreamReader"%>
    <%@page import="java.net.URL"%>
    <%@page import="java.io.FileReader"%>
    <%@page import="java.io.BufferedReader"%>
    <%@ page contentType="text/html" pageEncoding="UTF-8"%>
        <%
        String file=application.getRealPath("/")+"comment.txt";
        FileWriter filewriter = new FileWriter(file, true);
        if(request.getParameter("email")!=null
            &&request.getParameter("usercomment")!=null){
                if(!request.getParameter("email").equals("")
                &&!request.getParameter("usercomment").equals("")){
                    String email=request.getParameter("email");
                    String usercomment=request.getParameter("usercomment");
                    filewriter.write("Email : "+email+"<br>");
                    filewriter.write(usercomment+"<br>");
                    filewriter.write("<br><br>");
                }
        }
        filewriter.close();
        %>
    <jsp:include page="header.html"/> 
    <div class="cashier-left" id="main_content">
        <h1>Testimoni</h1>
        <form id="usrcomment" onsubmit="return comment()">
            Email :<br>
            <input type="text" id="email" name="email"><br>
        </form>
        Testimoni:<br>
        <textarea form="usrcomment" type="text" id="usercomment" name="usercomment"></textarea><br>
        <input form="usrcomment" type="submit" value="post comment">
        <%
            String filename=application.getRealPath("/")+"comment.txt";
            BufferedReader reader = new BufferedReader(new FileReader(filename));
            StringBuilder sb = new StringBuilder();
            String line;
        %><h1>
        Daftar Testimoni:</h1>
        <div id=comments>
            <%
                while((line = reader.readLine())!= null){
                    sb.append(line+"\n");
                }
                out.println(sb.toString());
            %>
        </div>
    </div>
    <jsp:include page="footer.html"/> 
</body>
</html>