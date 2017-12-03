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
<title></title>
</head>
<body>
    <h1></h1>
    <div class="container">
    <center>
        <s:form class="form-horizontal" role="form" action="registerInfo">
  <div class="form-group">
    <label for="patientname" class="col-sm-2 control-label">姓名</label>
    <div class="col-sm-10">
      <input type="text" name="patientname" class="form-control" id="patientname" placeholder="请输入姓名">
    </div>
  </div>
  <div class="form-group">
    <label for="sex" class="col-sm-2 control-label">性别</label>
    <div class="col-sm-10">
      <input type="text" name="sex" class="form-control" id="sex" placeholder="性别">
    </div>
  </div>
  <div class="form-group">
    <label for="age" class="col-sm-2 control-label">年龄</label>
    <div class="col-sm-10">
      <input type="text" name="age" class="form-control" id="age" placeholder="请输入年龄">
    </div>
  </div>
  <div class="form-group">
    <label for="id" class="col-sm-2 control-label">身份证号</label>
    <div class="col-sm-10">
      <input type="text" name="id" class="form-control" id="id" placeholder="请输入身份证号">
    </div>
  </div>
  <div class="form-group">
    <label for="tel" class="col-sm-2 control-label">联系方式</label>
    <div class="col-sm-10">
      <input type="text" name="tel" class="form-control" id="tel" placeholder="请输入联系方式">
    </div>
  </div>
  
  <div class="form-group">
    <label for="doctorname" class="col-sm-2 control-label">所挂医生</label>
    <div class="col-sm-10">
      <input type="text" name="doctorname" value='<s:property value="doctorname"/>' class="form-control" id="doctorname" readonly="true">
    </div>
  </div>
  
  <div class="form-group">
    <label for="selecteddate" class="col-sm-2 control-label">挂号日期</label>
    <div class="col-sm-10">
      <input type="text" name="selecteddate" value='<s:property value="selecteddate"/>' class="form-control" id="selecteddate" readonly="true">
    </div>
  </div>
  <div class="form-group">
    <label for="timeseg" class="col-sm-2 control-label">时间段</label>
    <div class="col-sm-10">
      <input type="text" name="timeseg" value=<%String timeseg = (String)session.getAttribute("timeseg");if (timeseg.equals("up")) {out.print("上午");} else {out.print("下午"); }%> class="form-control" id="timeseg" readonly="true">
    </div>
  </div>
  <div class="form-group">
    <label for="rank" class="col-sm-2 control-label">排号</label>
    <div class="col-sm-10">
      <input type="text" name="rank" value=<%String rank = (String)session.getAttribute("rank");out.print(rank); %> class="form-control" id="rank" readonly="true">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">确认</button>
    </div>
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