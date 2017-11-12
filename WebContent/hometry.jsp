<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
    <head>
    <meta charset="utf-8">
    <title>演示网站</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <link rel="stylesheet" href="css/jquery.css">
    <link rel="stylesheet" href="css/main.css">
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/jquery.fullPage.min.js"></script>
    <script src="js/jquery.SuperSlide.2.1.1.js"></script>
    <script>
        $(function () {
            $('#dowebok').fullpage({
                sectionsColor: ['#fff', '#4BBFC3', '#7BAABE', '#f90', '#f90', '#f90','','#7640D4'],
                anchors: ['page1', 'page2', 'page3', 'page4', 'page5', 'page6', 'page7', 'page8'],
                menu: '#menu',
                'navigation': true,
                "scrollingSpeed": 500,
                afterLoad: function (anchorLink, index) {
                    if (index == 2) {
                        $('.section2').find('h3').delay(200).animate({
                            left: '0'
                        }, 1500, 'easeOutExpo');
                        $('.section2').find('.s2_img').delay(300).animate({
                            right: '0'
                        }, 1500, 'easeOutExpo');
                    }
                    if (index == 3) {
                        
                         $('.section4').find('h5').delay(500).animate({
                            left: '105px'
                        }, 1500, 'easeOutExpo');
                       
                    }
                    if (index == 4) {
                         $('.section3').find('.bbskl').delay(200).animate({
                            left: '0'
                        }, 1500, 'easeOutExpo');
                         $('.section3').find('.bbskr').delay(300).animate({
                            right: '0'
                        }, 1500, 'easeOutExpo');
                        
                    
                    }
                    if (index == 5) {


                    }
                    if (index == '6') {
                        $('.cont_l').find('.s6_li1').delay(300).animate({
                            left: '0'
                        }, 1500, 'easeOutExpo');
                        $('.cont_l').find('.s6_li2').delay(400).animate({
                            left: '0'
                        }, 1500, 'easeOutExpo');
                        $('.cont_l').find('.s6_li3').delay(500).animate({
                            left: '0'
                        }, 1500, 'easeOutExpo');
                        $('.cont_l').find('.s6_li4').delay(600).animate({
                            left: '0'
                        }, 1500, 'easeOutExpo');
                        $('.cont_l').find('.s6_li5').delay(700).animate({
                            left: '0'
                        }, 1500, 'easeOutExpo');


                    }
              
                    if (index == '8') {
                        $('.section8').find('h3').delay(500).animate({
                            top: '0'
                        }, 1500, 'easeOutExpo');

                        $('.section8').find('.cont1').delay(500).animate({
                            left: '0'
                        }, 1500, 'easeOutExpo');
                        $('.section8').find('.cont2').delay(500).animate({
                            right: '0'
                        }, 1500, 'easeOutExpo');
                        $('.section8').find('h5').delay(500).animate({
                            right: '0'
                        }, 1500, 'easeOutExpo');
                    }

                },
                onLeave: function (index, direction) {
                    if (index == '2') {
                        $('.section2').find('h3').delay(200).animate({
                            left: '-120%'
                        }, 1500, 'easeOutExpo');
                        $('.section2').find('.s2_img').delay(300).animate({
                            right: '-120%'
                        }, 1500, 'easeOutExpo');
                    }
                    if (index == '3') {
                        $('.section4').find('h5').delay(500).animate({
                            left: '0'
                        }, 1500, 'easeOutExpo');
                
                    }
                    if (index == '4') {
                         $('.section3').find('.bbskl').delay(200).animate({
                            left: '-120%'
                        }, 1500, 'easeOutExpo');
                        $('.section3').find('.bbskr').delay(300).animate({
                            right: '-120%'
                        }, 1500, 'easeOutExpo');
                        
                    }
                    if (index == '5') {
                    }
                    if (index == '6') {
                        $('.cont_l').find('s6_li1').delay(500).animate({
                            left: '-120%'
                        }, 1500, 'easeOutExpo');
                    }
                    if (index == '6') {
                        $('.cont_l').find('s6_li1').delay(300).animate({
                            left: '-120%'
                        }, 1500, 'easeOutExpo');
                        $('.cont_l').find('s6_li2').delay(400).animate({
                            left: '-120%'
                        }, 1500, 'easeOutExpo');
                        $('.cont_l').find('s6_li3').delay(500).animate({
                            left: '-120%'
                        }, 1500, 'easeOutExpo');
                        $('.cont_l').find('s6_li4').delay(600).animate({
                            left: '-120%'
                        }, 1500, 'easeOutExpo');
                        $('.cont_l').find('s6_li5').delay(700).animate({
                            left: '-120%'
                        }, 1500, 'easeOutExpo');

                    }  
                    if (index == '8') {
                        $('.section8').find('h3').delay(500).animate({
                            top: '-100px'
                        }, 1500, 'easeInQuart');
            $('.section8').find('h5').delay(500).animate({
                            right: '-120%'
                        }, 1500, 'easeInQuart');
                    }
                }

            });

            function autoScrolling() {
                var $ww = $(window).height();
                if ($ww < 768) {
                    $.fn.fullpage.setAutoScrolling(false);
                   /* $('#fp-nav').find('ul').fadeOut(2000);*/

                } else {
                    $.fn.fullpage.setAutoScrolling(true);
                }
            }

            autoScrolling();
        });
        setTimeout(closeMdp, 20000);
        function closeMdp() {
            $('#close_dp').fadeOut(2000);
            $('#footer-notice').fadeOut(2000);

        }
    </script>
    <base target="_blank">
    </head>
    <body>
<div class="heard">
      <div class="nav">
    <div id="logo" class="left"> <a href="#" target="_blank"> <img src="images/logo.png"></a> </div>
    <div class="topnav">
          <ul>
        <li><a href="#">首页</a></li>
        <li><a href="#">专家团队</a></li>
        <li><a href="#">前沿技术</a></li>
        <li><a href="#">康复案例</a></li>
        <li><a href="#">来院路线</a> </li>
      </ul>
        </div>
    <div class="tel right"> <a href="#" class="navItem01" target="_blank"> <img src="images/tel.png"></a> </div>
  </div>
    </div>
<div id="dowebok">
      <div id="footer-notice"> 小提示：滑动鼠标或按键盘上/下键翻页浏览</div>
      <div id="close_dp" onClick="javascript:closeMdp()"> X</div>
      <div class="section section1"> </div>
      <div class="section section2">
    <div class="cont">
          <h3> <img src="images/hg_06.png"></h3>
          <div class="c_text">
        <p> 动脉是由心室发出的血管（简称为“离心”）。动脉在行径中不断分支，愈分愈细，小动脉最后移行为毛细血管。动脉管壁较厚，平滑肌较发达，弹力纤维较多，管腔断面呈圆形，具有舒缩性和一定的弹性，可随心脏的收缩、血压的高低而明显的搏动。动脉管壁的功能是，心室射血时，管壁扩张；心室舒张时，管壁回缩，促使血液继续向前流动。中小动脉，在神经支配下收缩舒张，以改变管腔的大小，从而影响局部血流量和血液阻力，维持和调节血压。 </p>
      </div>
          <div class="c_text">
        <p> 动脉的器质性疾病（炎症、狭窄或闭塞），或功能性疾病（动脉痉挛），都将引起缺血性临床表现，病程呈进展性，后果严重。动脉扩张则形成动脉瘤。 </p>
      </div>
          <div class="s2_img"> <img src="images/hg_07.png"></div>
        </div>
  </div>
      <div class="section section4">
    <div class="mt20"></div>
    <div class="cont">
          <h3> <img src="images/hg_14.png"> </h3>
          <div class="c_text_s">
        <p>我国下肢动脉疾病的发病率为43%，仅有1.4%确诊。20%的下肢动脉疾病患者5年内出现心梗或脑中风，30%的患者在五年内死亡。病发大多为三高“高血压、高血脂、高血糖”等人群。最初为间歇性跛行，即走路后小腿肚子疼痛，休息后好转，随时间推移一次行走的距离越来越短，最终行走几十米就需要休息一次。最后休息时同样出现疼痛。最终肢体严重缺血、截肢。</p>
      </div>
          <div class="c_text"> </div>
          <div class="adfsdf2">
          <div class="next"> <span>&#8250;</span></div>
              <div class="prev"> <span>&#8249;</span></div>
          <div class="bd">
          <div>
          <div class="cont1">
        <div class="cont1_l left">
              <h3> <span>脉管炎</span>--一般指血栓闭塞性脉管炎</h3>
              <div class="mt10"> </div>
              <div class="c1_01">
            <h5> <span></span>介绍</h5>
            <p> 血栓闭塞性脉管炎是一种少见的慢性复发性中、小动脉和静脉的节段性炎症性疾病，下肢多见。表现为患肢缺血、疼痛、间歇性跛行、足背动脉搏动减弱或消失和游走性表浅静脉炎，严重者有肢端溃疡和坏死。</p>
          </div>
              <div class="c1_02">
            <h5> <span></span>临床表现</h5>
            <p>患肢呈现一时性或持续性苍白、发绀、灼热、麻木及刺痛，小腿肌肉疼痛，行走时激发，休息时消失；小腿部常发生浅表性静脉炎和水肿。</p>
          </div>
              <div class="c1_03">
            <h5> <span></span>危害</h5>
            <p> 阿斯顿<a href="#">【立即在线咨询】</a></p>
          </div>
            </div>
        <div class="cont1_r right">
              <ul>
            <li> <img src="images/hg_15.jpg" width="280" height="226"></li>
            <li> <img src="images/hg_16.jpg" width="190" height="226"></li>
            <li class="mr0"> <img src="images/hg_17.jpg" width="200" height="226"></li>
            <li> <img src="images/hg_18.jpg" width="350" height="206"></li>
            <li class="mr0"> <img src="images/hg_19.jpg" width="329" height="206"></li>
          </ul>
            </div>
      </div>
          </div>
          <div>
          <div class="cont1">
        <div class="cont1_l left">
              <h3> <span>脉管炎</span>--一般指血栓闭塞性脉管炎</h3>
              <div class="mt10"> </div>
              <div class="c1_01">
            <h5> <span></span>介绍</h5>
            <p> 血栓闭塞性脉管炎是一种少见的慢性复发性中、小动脉和静脉的节段性炎症性疾病，下肢多见。表现为患肢缺血、疼痛、间歇性跛行、足背动脉搏动减弱或消失和游走性表浅静脉炎，严重者有肢端溃疡和坏死。</p>
          </div>
              <div class="c1_02">
            <h5> <span></span>临床表现</h5>
            <p>患肢呈现一时性或持续性苍白、发绀、灼热、麻木及刺痛，小腿肌肉疼痛，行走时激发，休息时消失；小腿部常发生浅表性静脉炎和水肿。</p>
          </div>
              <div class="c1_03">
            <h5> <span></span>危害</h5>
            <p> 阿斯顿<a href="#">【立即在线咨询】</a></p>
          </div>
            </div>
        <div class="cont1_r right">
              <ul>
            <li> <img src="images/hg_15.jpg" width="280" height="226"></li>
            <li> <img src="images/hg_16.jpg" width="190" height="226"></li>
            <li class="mr0"> <img src="images/hg_17.jpg" width="200" height="226"></li>
            <li> <img src="images/hg_18.jpg" width="350" height="206"></li>
            <li class="mr0"> <img src="images/hg_19.jpg" width="329" height="206"></li>
          </ul>
            </div>
      </div>
          </div>
          <div>
          <div class="cont1">
        <div class="cont1_l left">
              <h3> <span>脉管炎</span>--一般指血栓闭塞性脉管炎</h3>
              <div class="mt10"> </div>
              <div class="c1_01">
            <h5> <span></span>介绍</h5>
            <p> 血栓闭塞性脉管炎是一种少见的慢性复发性中、小动脉和静脉的节段性炎症性疾病，下肢多见。表现为患肢缺血、疼痛、间歇性跛行、足背动脉搏动减弱或消失和游走性表浅静脉炎，严重者有肢端溃疡和坏死。</p>
          </div>
              <div class="c1_02">
            <h5> <span></span>临床表现</h5>
            <p>患肢呈现一时性或持续性苍白、发绀、灼热、麻木及刺痛，小腿肌肉疼痛，行走时激发，休息时消失；小腿部常发生浅表性静脉炎和水肿。</p>
          </div>
              <div class="c1_03">
            <h5> <span></span>危害</h5>
            <p> 阿斯顿<a href="#">【立即在线咨询】</a></p>
          </div>
            </div>
        <div class="cont1_r right">
              <ul>
            <li> <img src="images/hg_15.jpg" width="280" height="226"></li>
            <li> <img src="images/hg_16.jpg" width="190" height="226"></li>
            <li class="mr0"> <img src="images/hg_17.jpg" width="200" height="226"></li>
            <li> <img src="images/hg_18.jpg" width="350" height="206"></li>
            <li class="mr0"> <img src="images/hg_19.jpg" width="329" height="206"></li>
          </ul>
            </div>
      </div>
          </div>
          <div>
          <div class="cont1">
        <div class="cont1_l left">
              <h3> <span>脉管炎</span>--一般指血栓闭塞性脉管炎</h3>
              <div class="mt10"> </div>
              <div class="c1_01">
            <h5> <span></span>介绍</h5>
            <p> 血栓闭塞性脉管炎是一种少见的慢性复发性中、小动脉和静脉的节段性炎症性疾病，下肢多见。表现为患肢缺血、疼痛、间歇性跛行、足背动脉搏动减弱或消失和游走性表浅静脉炎，严重者有肢端溃疡和坏死。</p>
          </div>
              <div class="c1_02">
            <h5> <span></span>临床表现</h5>
            <p>患肢呈现一时性或持续性苍白、发绀、灼热、麻木及刺痛，小腿肌肉疼痛，行走时激发，休息时消失；小腿部常发生浅表性静脉炎和水肿。</p>
          </div>
              <div class="c1_03">
            <h5> <span></span>危害</h5>
            <p> 阿斯顿<a href="#">【立即在线咨询】</a></p>
          </div>
            </div>
        <div class="cont1_r right">
              <ul>
            <li> <img src="images/hg_15.jpg" width="280" height="226"></li>
            <li> <img src="images/hg_16.jpg" width="190" height="226"></li>
            <li class="mr0"> <img src="images/hg_17.jpg" width="200" height="226"></li>
            <li> <img src="images/hg_18.jpg" width="350" height="206"></li>
            <li class="mr0"> <img src="images/hg_19.jpg" width="329" height="206"></li>
          </ul>
            </div>
      </div>
          </div>
          </div>
           <div class="hd">
            <ul>
                  <li></li>
                  <li></li>
                  <li></li>
                  <li></li>
                </ul>
          </div>
      </div>
                <script id="jsZhuanjia" type="text/javascript">
                    jQuery(".adfsdf2").slide({ effect: "left", autoPlay: false, pnLoop: false });
          </script> 
        </div>
    <div class="mt20"></div>
  </div>
      <div class="section section3">
    <div class="mt20"></div>
    <div class="cont">
          <div class="s3 left">
        <div class="s3_info">
              <div class="cont1">
            <ul>
                  <li>
                <div class="c1_div1"> </div>
                <p style="font-size:24px;"> 我院治疗技术与传统治疗技术的优势</p>
                <div class="c1_div2"> </div>
              </li>
                </ul>
          </div>
          
          <div class="adfsdf3">
          <div class="next"> <span>&#8250;</span></div>
              <div class="prev"> <span>&#8249;</span></div>
          <div class="bd">
          <div>
              <ul class="cont2 clear ">
            <li class="bbskl">
                  <div class="cont2_china1"> <span>【我院技术】</span>超导靶向定位消融术 </div>
                  <div class="cont2_china3">
                <div class="cont2_china32"> <img src="images/chaodao.jpg" width="157" height="214"> </div>
                <div class="cont2_china31">
                      <h3>技术优势<span></span></h3>
                      <p><span>★</span>独家研发</p>
                      <p><span>★</span>阿斯顿</p>
                      <p><span>★</span>独家研发</p>
                      <p><span>★</span>阿斯顿</p>
                      <p><span>★</span>独家研发</p>
                    </div>
              </div>
                  <div class="cont2_china2">通过精准的靶向定位，能够直接将药物作用于血管内的血栓和斑块，迅速达到扩张血管、改善微循环、抗凝溶栓、祛斑、降纤，控制疼痛和感染的疗效。采用纯生物因子药物，安全无副作用，轻松解决脉管炎给你带来的困扰。</div>
                  <div class="cont2_china4"> <img src="images/chaodao1.jpg" width="535" height="200"> </div>
                </li>
            <li class="bbskr">
                  <div class="cont2_china1"> <span>【传统技术】</span>某院消融术</div>
                  <div class="cont2_china3">
                <div class="cont2_china32"> <img src="images/yinchengri.jpg" width="157" height="214"> </div>
                <div class="cont2_china31">
                      <h3>印阿斯顿日<span>【阿斯顿师 】</span></h3>
                      <p><span>★</span>阿斯顿</p>
                      <p><span>★</span>阿斯顿</p>
                      <p><span>★</span>阿斯顿</p>
                      <p><span>★</span>阿斯顿员</p>
                      <p><span>★</span>大电饭锅员</p>
                    </div>
              </div>
                  <div class="cont2_china2"> 阿四大时代阿斯顿 </div>
                  <div class="cont2_china4"> <img src="images/hanyisheng.jpg" width="535" height="200"> </div>
                </li>
          </ul>
                      </div>
                               <div>
              <ul class="cont2 clear ">
            <li class="bbskl">
                  <div class="cont2_china1"> <span>【我院技术】</span>超导靶向定位消融术 </div>
                  <div class="cont2_china3">
                <div class="cont2_china32"> <img src="images/chaodao.jpg" width="157" height="214"> </div>
                <div class="cont2_china31">
                      <h3>技术优势<span></span></h3>
                      <p><span>★</span>独家研发</p>
                      <p><span>★</span>阿斯顿</p>
                      <p><span>★</span>独家研发</p>
                      <p><span>★</span>阿斯顿</p>
                      <p><span>★</span>独家研发</p>
                    </div>
              </div>
                  <div class="cont2_china2">通过精准的靶向定位，能够直接将药物作用于血管内的血栓和斑块，迅速达到扩张血管、改善微循环、抗凝溶栓、祛斑、降纤，控制疼痛和感染的疗效。采用纯生物因子药物，安全无副作用，轻松解决脉管炎给你带来的困扰。</div>
                  <div class="cont2_china4"> <img src="images/chaodao1.jpg" width="535" height="200"> </div>
                </li>
            <li class="bbskr">
                  <div class="cont2_china1"> <span>【传统技术】</span>某院消融术</div>
                  <div class="cont2_china3">
                <div class="cont2_china32"> <img src="images/yinchengri.jpg" width="157" height="214"> </div>
                <div class="cont2_china31">
                      <h3>印阿斯顿日<span>【阿斯顿师 】</span></h3>
                      <p><span>★</span>阿斯顿</p>
                      <p><span>★</span>阿斯顿</p>
                      <p><span>★</span>阿斯顿</p>
                      <p><span>★</span>阿斯顿员</p>
                      <p><span>★</span>大电饭锅员</p>
                    </div>
              </div>
                  <div class="cont2_china2"> 阿四大时代阿斯顿 </div>
                  <div class="cont2_china4"> <img src="images/hanyisheng.jpg" width="535" height="200"> </div>
                </li>
          </ul>
                      </div>
          </div>
           <div class="hd">
            <ul>
                  <li></li>
                  <li></li>

                </ul>
          </div>
      </div>
                <script id="jsZhuanjia" type="text/javascript">
                    jQuery(".adfsdf3").slide({ effect: "left", autoPlay: false, pnLoop: false });
          </script> 
            </div>
      </div>
        </div>
    <div class="cont_s"> </div>
    <div class="mt20"></div>
  </div>
      <div class="section section5">
    <div class="mt20"></div>
    <div class="cont">
          <h3> <img src="images/hg_20.png"></h3>
          <p class="text"> 专业致力于下肢周围血管病的研究和治疗，最大程度的保证了优质医疗服务和权利，让更多人得到健康的专业的呵护</p>
          <div class="cont1">
        <div>
              <p class="p1"> 北方血管病的专家团队</p>
              <span></span> </div>
        <ul>
              <li class="case_li"> <img src="images/zhxyxg_09.jpg">
            <div class="case_li_txt">
                  <div class="span_mr_txt">
                <h5>我是姓名</h5>
                斯蒂芬、斯蒂芬院<br/>
                斯蒂芬斯蒂芬术; </div>
                </div>
          </li>
              <li class="case_li"> <img src="images/zhxyxg_07.jpg">
            <div class="case_li_txt">
                  <div class="span_mr_txt">
                <h5>阿斯达是</h5>
                阿斯顿爱上、阿斯顿;<br/>
                阿斯顿阿阿斯顿<br/>
                fdg dfgsd阿斯蒂芬 </div>
                </div>
          </li>
              <li class="case_li"> <img src="images/zhxyxg_05.jpg">
            <div class="case_li_txt">
                  <div class="span_mr_txt">
                <h5>电饭锅</h5>
                电饭锅<br/>
                阿斯蒂芬备出现<br/>
                斯蒂芬斯蒂芬似的 </div>
                </div>
          </li>
              <li class="case_li"> <img src="images/zhxyxg_03.jpg">
            <div class="case_li_txt">
                  <div class="span_mr_txt">
                <h5>主任医师-韩永斌</h5>
                <div style="font-size:16px; line-height:50px;">韩永彬(外科主任)</div>
                毕业于大连铁道医学院，是黑龙江省著名血管病专家，曾受聘于上海武警总队医院、武汉空军蓝天医院、山东新安总医院等多家知名医院的客座会诊专家，现任北方血管病医院血管外科学科带头人。 <a href="#">[点击查看详情]</a></div>
                </div>
          </li>
            </ul>
        <ul>
              <li class="case_li"> <img src="images/zhxyxg_18.jpg">
            <div class="case_li_txt">
                  <div class="span_mr_txt">
                <h5>成本放心</h5>
                权威<br/>
                权威权威<br/>
                前妻权威爱的 </div>
                </div>
          </li>
              <li class="case_li"> <img src="images/zhxyxg_17.jpg">
            <div class="case_li_txt">
                  <div class="span_mr_txt">
                <h5>阿斯顿</h5>
                阿斯顿 </div>
                </div>
          </li>
              <li class="case_li"> <img src="images/zhxyxg_16.jpg">
            <div class="case_li_txt">
                  <div class="span_mr_txt">
                <h5>自行车</h5>
                自行车需排队等候<br/>
                30分钟<br/>
                快速恢复<br/>
                以上<br/>
                时间; </div>
                </div>
          </li>
              <li class="case_li"> <img src="images/zhxyxg_15.jpg">
            <div class="case_li_txt">
                  <div class="span_mr_txt">
                <h5>恢复</h5>
                创口加速恢复<br/>
                身心全面恢复<br/>
                营养<br/>
                务; </div>
                </div>
          </li>
            </ul>
      </div>
          <div class="cont2 mt10">
        <p class="text"> 阿斯顿</p>
        <script>
                        $(function () {
                            $(".case_li").hover(function () {
                                $(".case_li_txt", this).stop().animate({ top: "0px" }, { queue: false, duration: 160 });
                                $(".case_li_txt h5", this).css("display", "none");
                                $(".case_li_txt", this).css("background-color", "#000000");
                                $(".case_li_txt .span_mr_txt", this).attr("class", "span_font");
                            }, function () {
                                $(".case_li_txt", this).stop().animate({ top: "165px" }, { queue: false, duration: 160 });
                                $(".case_li_txt h5", this).css("display", "block");
                                $(".case_li_txt", this).css("background-color", "#464648");
                                $(".case_li_txt .span_font", this).attr("class", "span_mr_txt");
                            })
                        })
                    </script> 
      </div>
        </div>
    <div class="mt20"></div>
  </div>
      <div class="section section6">
    <div class="mt20"></div>
    <div class="cont">
          <div class="cont_l left">
        <ul>
              <li class="s6_li1"><a href="#"><span></span>
                <p> 在线咨询</p>
                </a></li>
              <li class="s6_li2"><a href="#"><span></span>
                <p> 电话咨询</p>
                </a></li>
              <li class="s6_li3"><a href="#"><span></span>
                <p> 微信咨询</p>
                </a></li>
              <li class="s6_li4"><a href="#"><span></span>
                <p> QQ咨询</p>
                </a></li>
              <li class="s6_li5"><a href="#"><span></span>
                <p> 在线预约</p>
                </a></li>
            </ul>
      </div>
          <div class="cont_r right">
        <div class="cr_01 mt10"> <img src="images/hg_29.png"> </div>
        <div class="cr_02">
              <p> 阿斯顿</p>
            </div>
        <div class="c_text"> </div>
        <div class="cr_03">
              <ul class="mt10">
            <li> <img src="images/hg_30.jpg">
                  <p> <span>治疗前</span>自行车</p>
                </li>
            <li> <img src="images/hg_31.jpg">
                  <p> <span>诊疗中</span>自行车</p>
                </li>
            <li> <img src="images/hg_32.jpg">
                  <p> <span>术后三天</span>自行车</p>
                </li>
            <li> <img src="images/hg_33.jpg">
                  <p> <span>术后七天</span>自行车</p>
                </li>
          </ul>
            </div>
        <div class="cr_04 adfsdf mt10">
              <div class="next"> <span>&#8250;</span></div>
              <div class="prev"> <span>&#8249;</span></div>
              <div class="bd">
            <div>
                  <div class="cr4_l left"> <img src="images/hg_34.jpg"><img src="images/hg_35.jpg"></div>
                  <div class="cr4_r right">
                <h4> 治疗案例</h4>
                <dl>
                      <dt>患者资料</dt>
                      <dd> 自行车</dd>
                      <dt>就诊病史</dt>
                      <dd> 自行车</dd>
                      <dt>治疗技术</dt>
                      <dd> 自行车</dd>
                      <dt>患者情况</dt>
                      <dd> 自行车<a href="#">【详情查询】</a></dd>
                    </dl>
              </div>
                </div>
            <div>
                  <div class="cr4_l left"> <img src="images/al_01.jpg"><img src="images/al_02.jpg"></div>
                  <div class="cr4_r right">
                <h4> 治疗案例</h4>
                <dl>
                      <dt>患者资料</dt>
                      <dd> 岁</dd>
                      <dt>就诊病史</dt>
                      <dd> 123</dd>
                      <dt>治疗技术</dt>
                      <dd> 位消融术</dd>
                      <dt>患者情况</dt>
                      <dd> <a href="#">【详细】</a></dd>
                    </dl>
              </div>
                </div>
            <div>
                  <div class="cr4_l left"> <img src="images/al_03.jpg"><img src="images/al_04.jpg"></div>
                  <div class="cr4_r right">
                <h4> 遗传性腋臭治疗案例</h4>
                <dl>
                      <dt>患者资料</dt>
                      <dd> 刘X</dd>
                      <dt>就诊病史</dt>
                      <dd> 遗臭</dd>
                      <dt>治疗技术</dt>
                      <dd> 定位消融术</dd>
                      <dt>患者情况</dt>
                      <dd> …<a href="/swt/?anli">【详细】</a></dd>
                    </dl>
              </div>
                </div>
          </div>
              <div class="hd">
            <ul>
                  <li></li>
                  <li></li>
                  <li></li>
                </ul>
          </div>
            </div>
      </div>
          <script id="jsZhuanjia" type="text/javascript">
                    jQuery(".adfsdf").slide({ effect: "left", autoPlay: false, pnLoop: false });
          </script> 
        </div>
    <div class="mt20"></div>
  </div>
      <div class="section section7">
    <div class="mt20"></div>
    <div class="cont">
          <h3> <img src="images/hg_36.png"></h3>
          <p class="text">北方血管病医院是一家集科研、教学、临床医疗，预防保健为一体的非营利性医保定点医疗机构，隶属于卫生局的直属单位。医院坚持以科技为先导、以人才为基础、以医疗为根本、以服务为生存、以创新品牌，加强学科建设，勉励技术骨干和归国人才。我院致力于将国际、国内先进医学诊疗技术、设备引入，以追求高品质的医疗质量和服务质量，作为医院发展的永恒主题，坚持以病人为中心，以精湛技术为基础，以优质服务为载体，全心全意服务于大众。……<a href="javascript:void(0)">【详细】</a> </p>
          <div class="cont1">
        <ul>
              <li><span></span>患者至上</li>
              <li><span></span>专病专治</li>
              <li><span></span>隐私就诊</li>
              <li><span></span>合理收费</li>
            </ul>
      </div>
          <div class="cont2">
        <ul>
              <li> <img src="images/hg_37.jpg">
            <p> 引进国际医学领域前沿"精准化诊疗模式"细 分血管类疾病，特设脉管炎、静脉曲张、动脉硬化 老烂腿等血管病诊疗中心，为血管病患者提供正规 的诊疗服务。</p>
            <div>精细血管病分型 准确治疗疾病</div>
          </li>
              <li> <img src="images/hg_38.jpg">
            <p> 北方坚持"一切为了患者"的理念，率先采取 国际先进的"诊疗-治疗-康复"一体化诊疗模式， 加强病情检查、病历管理、愈后随访等等专业化服 务，多方位维护每一位患者的治疗效果。</p>
            <div> 重新定义血管病诊疗标准</div>
          </li>
              <li> <img src="images/hg_39.jpg">
            <p> 北方血管病医院的专家独创了"靶向超导 动脉消融术"、"微创瓣膜修复术"等一些 独有的疗法。让患者从此摆脱静脉疾病的困扰。</p>
            <div> 北方医院独家首创新疗法</div>
          </li>
            </ul>
      </div>
        </div>
    <div class="mt20"></div>
  </div>
      <div class="section section8">
    <div class="mt20"></div>
    <div class="cont">
          <div class="qqlh1">
        <h3> 联系方式 </h3>
        <div class="cont1">
              <div class="c1_r left"> <img src="images/luxian.jpg" width="410" height="380"></div>
              <div class="c1_l right">
            <p class="c1_ldl"></p>
            <p> <span>联系电话</span>：0451-82521356</p>
            <p> <span>联系地址</span>：哈尔滨市道里区经纬街18号（哈尔滨儿童电影院旁）</p>
            <p> <span>来院路线</span>：乘坐13路；16路；47路；64路；74路；94路；98路；101路；103路；到哈一百下车; 乘坐111路；14路；14空调；在经纬街（临时站）下车。 </p>

          </div>
            </div>
      </div>
         
        </div>
    <div class="mt20"></div>
  </div>
    </div>
</body>
</html>
