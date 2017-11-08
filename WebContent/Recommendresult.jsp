<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.LinkedList,java.util.List,java.net.URLEncoder"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.min.js"></script>
        <script src="http://cdn.bootcss.com/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
<title>病情选择</title>
</head>
<body>
    <h1>为您推荐如下医生</h1>
    <div class="container">
    <table align ="center">
    <tr>
    <%
    List<String> department_doctor = session.getAttribute("department_doctor")==null?new LinkedList():(List<String>)session.getAttribute("department_doctor");
    String doctorname = session.getAttribute("doctorname").toString();
    Integer targetrankOfdoctor = Integer.parseInt(session.getAttribute("targetrankOfdoctor").toString());
    if(!department_doctor.isEmpty()&& department_doctor!=null&&department_doctor.size()!=0)
    {

            out.print("<tr><td align=\"center\">"+"<p><font size=\"5\" face=\"STLiti\" color=\"black\">"+department_doctor.get(targetrankOfdoctor)+"</td>");
            out.print("<tr><td align=\"center\">"+"<p><font size=\"5\" face=\"STLiti\" color=\"black\">"+department_doctor.get(targetrankOfdoctor+1)+"</td>");
            out.print("<tr><td align=\"center\">"+"<p><font size=\"5\" face=\"STLiti\" color=\"black\">"+department_doctor.get(targetrankOfdoctor+2)+"</td>");

            out.print("<tr><td align=\"center\">"+"<p><font size=\"5\" face=\"STLiti\" color=\"black\">"+"work"+"</td>");
            out.print("<tr><td align=\"center\"><a href=doctorQuery?doctorname="+doctorname+"><button type=\"button\" class=\"btn btn-info\">挂号到此医生</button> </a></td></tr>");
        
        
    }
    else
        out.print("<p><font size=\"5\" face=\"STLiti\" color=\"white\">该医生不存在，确认姓名无误后输入");
    
    
    
    
    
    %>
    </tr>
    
    </table>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
</body>
</html>