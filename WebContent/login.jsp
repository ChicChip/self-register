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
<title>登录</title>
</head>
<body>
    <h1>欢迎</h1>
    <div class="container"  align ="center">
        <s:form role="form" action="login">
        <div class="form-group">
          <label for="name">用户名</label>
          <input type="text" name="nickname" style="width:30%" class="form-control" id="name" placeholder="昵称" required="required">
        </div>
        <div class="form-group">
          <label for="key">密码</label>
          <input type="password" name="password" style="width:30%" class="form-control" id="key" placeholder="密码" required="required">
        </div>
        <div class="form-group">
          <s:select class="form-control" name="type" list="#{1:'普通用户',2:'医生',3:'管理员'}" listKey="key" listValue="value" headerKey="0" headerValue="请选择类型"></s:select> 
        </div>
          <button type="submit" class="btn btn-info">登录</button>
        </s:form>
        <a href="Reg.jsp">还没有账号？点我注册</a>
        
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
    <script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
</body>
</html>