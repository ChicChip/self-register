<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<title>自助挂号系统</title>
</head>
<body>
    <h1>欢迎来到本系统</h1>
    <div class="container">
    <center>
        <s:form role="form" action="doctorQuery">
        <div class="form-group">
        <label for="name">输入需查询医生</label>
        <input type="text" name="doctorname" class="form-control" id="name" placeholder="医生名字">
        </div>
        <button type="submit" class="btn btn-info">查询</button>
        </s:form>
        <s:form role="form" action="showroomDoc">
        <div class="form-group">
        <s:select class="form-control" name="room" list="#{1:'内科',2:'外科',3:'妇产科',4:'儿科',5:'康复医学科',6:'中医科',7:'肿瘤科',8:'五官科',9:'传染科',10:'男科',11:'精神心理科'}" listKey="key" listValue="value" headerKey="0" headerValue="请选择科室"></s:select> 
        <button type="submit" class="btn btn-info">进入此科室</button>
        </div>
        </s:form>
    </center>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
    <script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
</body>
</html>