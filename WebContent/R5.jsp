<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.LinkedList,java.util.List,java.net.URLEncoder"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=7" />
<meta name="Author" content="">
<title></title>
<link href="css/css_whir.css" rel="stylesheet" type="text/css" />
<script src="Script/jquery-1.4.2.min.js" type="text/javascript"></script>
<!--[if IE 6]>
<script src="Script/pngAlaph.js"></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->

</head>
<body>
    
    <!--top-->
        <div class="header">
        <h3 class="logo"><a href="index.jsp"><img src="images/Logo.jpg" /></a></h3>
        <div class="frCont" style="z-index:99">
           <dl><%String s = (String)session.getAttribute("user"); String stype = (String)session.getAttribute("type");
            if(s != null)
                {if(stype.equals("1")){
                 out.print("<li class=\"dropdown\">");
            	 out.print("<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\"> "+"您好,"+s+"<span class=\"caret\"></span></a>");
                 out.print("<ul class=\"dropdown-menu\">");
                 out.print("<li><a href=mymessage?nickname="+s+">我的信息</a></li>");
                 out.print("<li><a href=showcare?nickname="+s+">我的事务</a></li>");
                 out.print("<li><a href=\"signout\">退出</a>");
                 out.print("</ul> </li> ");
                 }
                 else{
                 out.print("<li class=\"dropdown\">");
            	 out.print("<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\"> "+"您好,"+s+"医生"+"<span class=\"caret\"></span></a>");
                 out.print("<ul class=\"dropdown-menu\">");
                 out.print("<li><a href=docmessage?nickname="+s+">我的信息</a></li>");
                 out.print("<li><a href=schedule?nickname="+s+">我的时间表</a></li>");
                 out.print("<li><a href=\"signout\">退出</a>");
                 out.print("</ul> </li> ");
                 }
                } 
            else {out.print("<a href=\"login.jsp\">登录</a><a href=\"Reg.jsp\">注册</a>");}%></dl>
        </div>
       <!--   <div class="search"><input name="" type="text" class="text" value="请输入关键字"/><a href="#" class="btn"></a></div>-->
        <div class="mainnav">
              <ul>
                    <li id="nav1"><span><a href="index.jsp">网站首页</a></span></li>
                    <li id="nav2"><span><a href="about.html">医院概括</a></span></li>
                    <li id="nav3"><span><a href="guide.html">就医指南</a></span></li>
                    <li id="nav4"><span><a href="news.html">新闻中心</a></span></li>
                    <li id="nav5"><span><a href="specialist.html">专科介绍</a></span></li>
                    <li id="nav6"><span><a href="experts.html">专家介绍</a></span></li>
                    <li id="nav7"><span><a href="onlineAdvisory.html">网上咨询</a></span></li>
                    <li id="nav8"><span><a href="health.html">健康知识</a></span></li>
                    <li id="nav9"><span><a href="partyWork.html">党群工作</a></span></li>
                    <li id="nav10"><span><a href="careWorld.html">护理天地</a></span></li>
              </ul>
        </div>
    </div>
    <!--top End-->
    
    <!--Star-->
    <div style="background:url(images/temp/Ban_news.jpg) no-repeat center top">
    <div class="H193"><span class="leftBg"></span><span class="rightBg"></span></div>
    <div class="Content">
    
              
            <!--左边-->
            <div class="Sidebar">
                           <div class="Menu">
                    <h4>新闻中心<span>news</span></h4>
                    <ul>
                            <li id="menu1"><a href="#">医院新闻</a></li>
                            <li id="menu2"><a href="#">媒体报道</a></li>
                            <li id="menu3"><a href="#">院内活动</a></li>
                    </ul>
               </div>

                           <div class="Sub">
                    <h4 class="H_title02"><a href="#" class="more"></a><b>就医指南</b></h4>
                    <ul>
                             <li><span><img src="images/H_guide02.jpg" /></span><a href="#">开诊科目表</a></li>
                             <li><span><img src="images/H_guide03.jpg" /></span><a href="#">开诊时间表</a></li>
                             <li><span><img src="images/H_guide05.jpg" /></span><a href="#">专家出诊表</a></li>
                             <li><span><img src="images/H_guide07.jpg" /></span><a href="#">方位指南</a></li>
                             <li><span><img src="images/H_guide01.jpg" /></span><a href="#">住院病人就诊流程</a></li>
                             <li><span><img src="images/H_guide06.jpg" /></span><a href="#">门急诊就诊流程</a></li>
                             <li><span><img src="images/H_guide04.jpg" /></span><a href="#">预约挂号</a></li>
                             <li><span><img src="images/H_guide08.jpg" /></span><a href="#">楼层指引</a></li>
                    </ul>
                    <div class="clear"></div>
               </div>

            </div>
            <!--左边 End-->
            <!--右边-->
            <div class="RightSidebar">
                  <div class="Current">
                        <dl>你现在的位置:  首页 > 医院概括 > <span>医院概括</span></dl>
                        <h1>集团简介</h1>
                  </div>
                  <div class="mianContent">
                  
                  
                           <!--Star-->
                          <div class="container">
    <center>
        <s:form role="form" action="recommend">
            <s:checkbox name="yourillness" fieldValue="睡病" label="睡病"/>
            <s:checkbox name="yourillness" fieldValue="软组织感染" label="软组织感染"/>
            <s:checkbox name="yourillness" fieldValue="颈椎病" label="颈椎病"/>
            <s:checkbox name="yourillness" fieldValue="头疼" label="头疼"/>
            <s:checkbox name="yourillness" fieldValue="头晕" label="头晕"/>
            <s:checkbox name="yourillness" fieldValue="其他" label="其他"/>
            <button type="submit" class="home-subbtn">为我推荐医生</button> 
        </s:form>
    </center>
    </div>
                           
                           <!--Pages-->
                           <div class="Pages">
                                  <span class="p_cur">目前在第<b>1</b>页,</span>
                                  <span class="p_count">共有<b>3</b>页,</span>
                                  <span class="p_total">共有<b>3</b>条记录</span>
                                  <span class="p_page">
                                  <a href="#" class="a_first">首页</a><a href="#" class="a_prev">上一页</a>
                                  <em class="num"><a href="#" class="a_cur">1</a><a href="#">2</a><a href="#">3</a></em>
                                  <a href="#" class="a_next">下一页</a><a href="#" class="a_end">末页</a> 
                                  <b class="f1">跳转到</b>
                                  <input class="i_text" type="text" name="textfield" id="textfield" />
                                  <b class="f2">页</b>
                                  <input class="i_button" type="submit" name="button" id="button" value="" />
                              </span>
                           </div>
                           <!--Pages-->
                           <!--End-->
                           
                         
                  <div class="clear"></div>
                  </div>
                  
            <div class="clear"></div>
            </div>
            <!--右边 End-->
          
           
    <div class="clear"></div>
    </div>
    </div>
    <!--End-->
    
    <!--Bottom-->
         <div class="Footer">
     <div class="box">
           <div class="txt">地址：<Br />医院电话： 020-12345678 传真： 020-12345678 粤ICP备00000000号</div>
           <h5>
                  <a href="#">流量统计</a>|
                  <a href="#">网站地图</a>|
                  <a href="#">法律申明</a>|
                  <a href="#">友情链接</a>
           </h5>
           <dl>Copyright 2014 All Rights Reserved © .ed by</dl>
     </div>
     </div>
    <!--Bottom End-->
    
    <script type="text/javascript" language="javascript">
       jQuery("#nav4").attr("class","onnav");
       jQuery("#menu1").attr("class","acur");
    </script>
    
</body>
</html>
>