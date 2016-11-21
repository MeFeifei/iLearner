<%@ page import="entity.Person" %><%--
  Created by IntelliJ IDEA.
  User: feifei
  Date: 16/7/8
  Time: 18:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <% Person person  = (Person) session.getAttribute("person");%>
  <title>
    所罗门学习风格测试问卷
  </title>
  <script>
      function che() {
          var a;
          a = check();
            document.getElementById("label").value=a;
      }
      function  check(){
          var m;
          var n;
          var i=0;
          var a1=0;
          var a2=0;
          var b1=0;
          var b2=0;
          var c1=0;
          var c2=0;
          var d1=0;
          var d2=0;
          for(i=4;i<48;i++) {
              var j ="q"+i.toString();
              var obj = document.getElementsByName(j);
              if(i%4==0){
                  if(obj[0].checked==true){
                      a1++;
                  }else{
                      a2++;
                  }
              }
              else if (i%4==1){
                  if(obj[0].checked==true){
                      b1++;
                  }else{
                      b2++;
                  }
              }
              else if (i%4==2){
                  if(obj[0].checked==true){
                      c1++;
                  }else{
                      c2++;
                  }
              }
              else if (i%4==3){
                  if(obj[0].checked==true){
                      d1++;
                  }else{
                      d2++;
                  }
              }
          }

            for(m=11;m>5;m-1){
                if(a1==m){
                    return "a1";
                }else
                if(a2==m){
                    return"a2";
                }else
                if(b1==m){
                    return"b1";
                }else
                if(b2==m){
                    return"b2";
                }else
                if(c1==m){
                    return"c1";
                }else
                if(c2==m){
                    return"c2";
                }else
                if(d1=m){
                    return"d1";
                }else
                if(d2==m){
                    return"d2";
                }
            }
      }
  </script>
  <meta http-equiv="Pragma" content="no-cache" />
  <meta http-equiv="Cache-Control" content="no-cache" />
  <meta http-equiv="Expires" content="0" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <meta name="renderer" content="webkit|ie-comp|ie-stand" />
  <link id="ctl00_linkDefault" type="text/css" rel="stylesheet" href="/css/NewDefault.css" />
  <link href="/css/survey.css" rel="stylesheet" type="text/css" />
  <link href="/css/NewSolid.css" rel="stylesheet" type="text/css" />
</head>

<body style="">

<div id="divNotRun" style="height:100px; text-align:center; display:none;"></div>
<div id="jqContent" class="" style="text-align: left; ">
  <div id="headerCss" style="overflow-x: hidden; overflow-y: hidden; ">
    <div id="ctl00_header">
    </div>
  </div>
    <div id="mainCss">
        <div id="mainInner">
            <div id="box">


            <div class="survey" style="margin:0px auto;">

          <div id="ctl00_ContentPlaceHolder1_JQ1_divHead" class="surveyhead" style="border: 0px;">
            <h1 id="ctl00_ContentPlaceHolder1_JQ1_h1Name" style="position:relative;">
              <span id="ctl00_ContentPlaceHolder1_JQ1_lblQuestionnaireName">所罗门学习风格测试问卷</span>
        <span id="ctl00_ContentPlaceHolder1_JQ1_lblMobile" style="position:absolute; right:-10px; top:6px;">
        </span>

            </h1>
            <!--答卷题目格式 -->
            <div id="ctl00_ContentPlaceHolder1_JQ1_divMob">
              <div id="divMa" style="display:none; position:absolute; z-index:100;border:1px solid #DBDBDB;width:200px; height:220px; background:white;" onclick="showData(event);">
                <div style="text-align:center;">
                  <a href="javascript:" style="border:none;"><img src="" alt="" width="200" height="200"/></a>
                </div>
              </div>

            </div>
            <div style="clear: both;">
            </div>

            <div id="ctl00_ContentPlaceHolder1_JQ1_divDec" class="surveydescription">
              <span id="ctl00_ContentPlaceHolder1_JQ1_lblQuestionnaireDescription" style="vertical-align: middle;">说明：本问卷用于测试个体的学习风格类型。认真填写才能为您推荐合适的学习资源！</span>
            </div>
            <div style="clear: both;">
            </div>

          </div>

           <!-- 问题 -->
          <div id="ctl00_ContentPlaceHolder1_JQ1_question" class="surveycontent">
            <div id='divMaxTime' style="text-align: center; display: none; width:80px; background:white; position:fixed;top:135px;border:1px solid #dbdbdb; padding:8px;z-index:10;">
              <div style="color: Red;font-size:16px; height:30px; line-height:30px;" id='spanMaxTime'></div></div>

            <div id="ctl00_ContentPlaceHolder1_JQ1_surveyContent">
                <fieldset class='fieldset' id='fieldset1' >

                    <div class='div_question' id='div4'  >
                        <div class='div_title_question_all'>
                            <div id='divTitle4' class='div_title_question'>1. 为了较好地理解某些事物，我首先<span style='color:red;'>&nbsp;*</span></div>
                            <div style='clear:both;'></div></div>
                        <div class='div_table_radio_question' id='divquestion4'><div class='div_table_clear_top'></div>
                            <ul class='ulradiocheck' ><li style='width:99%;' >
                                <input  type='radio' name='q4' id='q4_1' value='1'/><label for='q4_1'>a) 试试看。</label></li><li style='width:99%;' >
                                <input  type='radio' name='q4' id='q4_2' value='2'/><label for='q4_2'>b). 深思熟虑。</label></li>
                                <div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div>
                        <div class='errorMessage'></div></div>

                    <div class='div_question' id='div5'  >
                        <div class='div_title_question_all'>
                            <div id='divTitle5' class='div_title_question'>2. 我办事喜欢<span style='color:red;'>&nbsp;*</span></div>
                            <div style='clear:both;'></div></div>
                        <div class='div_table_radio_question' id='divquestion5'><div class='div_table_clear_top'></div>
                            <ul class='ulradiocheck'><li style='width:99%;' >
                                <input  type='radio' name='q5' id='q5_1' value='1' /><label for='q5_1'>a) 讲究实际。</label></li><li style='width:99%;' >
                                <input  type='radio' name='q5' id='q5_2' value='2' /><label for='q5_2'>b) 标新立异。</label></li>
                                <div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div>
                        <div class='errorMessage'></div></div>


                    <div class='div_question' id='div6'  ><div class='div_title_question_all'><div id='divTitle6' class='div_title_question'>3. 当我回想以前做过的事，我的脑海中大多会出现<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion6'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q6' id='q6_1' value='1' /><label for='q6_1'>a) 一幅画面。</label></li><li style='width:99%;' ><input  type='radio' name='q6' id='q6_2' value='2' /><label for='q6_2'>b) 一些话语。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div>

                    <div class='div_question' id='div7'  ><div class='div_title_question_all'><div id='divTitle7' class='div_title_question'>4. 我往往会<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion7'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q7' id='q7_1' value='1' /><label for='q7_1'>a) 明了事物的细节但不明其总体结构.。</label></li><li style='width:99%;' ><input  type='radio' name='q7' id='q7_2' value='2' /><label for='q7_2'>b) 明了事物的总体结构但不明其细节。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div8'  ><div class='div_title_question_all'><div id='divTitle8' class='div_title_question'>5. 在学习某些东西时, 我不禁会<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion8'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q8' id='q8_1' value='1' /><label for='q8_1'>a) 谈论它。</label></li><li style='width:99%;' ><input  type='radio' name='q8' id='q8_2' value='2' /><label for='q8_2'>b) 思考它。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div9'  ><div class='div_title_question_all'><div id='divTitle9' class='div_title_question'>6. 如何我是一名教师，我比较喜欢教<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion9'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q9' id='q9_1' value='1' /><label for='q9_1'>a) 关于事实和实际情况的课程。</label></li><li style='width:99%;' ><input  type='radio' name='q9' id='q9_2' value='2' /><label for='q9_2'>b) 关于思想和理论方面的课程。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div10'  ><div class='div_title_question_all'><div id='divTitle10' class='div_title_question'>7. 我比较偏爱的获取新信息的媒体是<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion10'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q10' id='q10_1' value='1' /><label for='q10_1'>a) 图画、图解、图形及图象。.</label></li><li style='width:99%;' ><input  type='radio' name='q10' id='q10_2' value='2' /><label for='q10_2'>b) 书面指导和言语信息。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div11'  ><div class='div_title_question_all'><div id='divTitle11' class='div_title_question'>8. 一旦我了解了<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion11'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q11' id='q11_1' value='1' /><label for='q11_1'>a) 事物的所有部分, 我就能把握其整体。</label></li><li style='width:99%;' ><input  type='radio' name='q11' id='q11_2' value='2' /><label for='q11_2'>b) 事物的整体，我就知道其构成部分。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div12'  ><div class='div_title_question_all'><div id='divTitle12' class='div_title_question'>9. 在学习小组中遇到难题时，我通常会<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion12'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q12' id='q12_1' value='1' /><label for='q12_1'>a) 挺身而出，畅所欲言。</label></li><li style='width:99%;' ><input  type='radio' name='q12' id='q12_2' value='2' /><label for='q12_2'>b) 往后退让，倾听意见。.</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div13'  ><div class='div_title_question_all'><div id='divTitle13' class='div_title_question'>10. 我发现比较容易学习的是<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion13'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q13' id='q13_1' value='1' /><label for='q13_1'>a) 事实性内容。</label></li><li style='width:99%;' ><input  type='radio' name='q13' id='q13_2' value='2' /><label for='q13_2'>b) 概念性内容。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div14'  ><div class='div_title_question_all'><div id='divTitle14' class='div_title_question'>11. 在阅读一本带有许多插图的书时，我一般会<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion14'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q14' id='q14_1' value='1' /><label for='q14_1'>a) 仔细观察插图。</label></li><li style='width:99%;' ><input  type='radio' name='q14' id='q14_2' value='2' /><label for='q14_2'>b) 集中注意文字。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div15'  ><div class='div_title_question_all'><div id='divTitle15' class='div_title_question'>12. 当我解决数学题时，我常常<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion15'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q15' id='q15_1' value='1' /><label for='q15_1'>a) 思考如何一步一步求解。</label></li><li style='width:99%;' ><input  type='radio' name='q15' id='q15_2' value='2' /><label for='q15_2'>b) 先看解答，然后设法得出解题步骤。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div16'  ><div class='div_title_question_all'><div id='divTitle16' class='div_title_question'>13. 在我修课的班级中，<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion16'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q16' id='q16_1' value='1' /><label for='q16_1'>a) 我通常结识许多同学。</label></li><li style='width:99%;' ><input  type='radio' name='q16' id='q16_2' value='2' /><label for='q16_2'>b) 我认识的同学寥寥无几。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div17'  ><div class='div_title_question_all'><div id='divTitle17' class='div_title_question'>14. 在阅读非小说类作品时，我偏爱<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion17'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q17' id='q17_1' value='1' /><label for='q17_1'>a) 那些能告诉我新事实和教我怎么做的东西。</label></li><li style='width:99%;' ><input  type='radio' name='q17' id='q17_2' value='2' /><label for='q17_2'>b) 那些能启发我思考的东西。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div18'  ><div class='div_title_question_all'><div id='divTitle18' class='div_title_question'>15. 我喜欢的教师是<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion18'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q18' id='q18_1' value='1' /><label for='q18_1'>a) 在黑板上画许多图解的人。</label></li><li style='width:99%;' ><input  type='radio' name='q18' id='q18_2' value='2' /><label for='q18_2'>b) 花许多时间讲解的人。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div19'  ><div class='div_title_question_all'><div id='divTitle19' class='div_title_question'>16. 当我在分析故事或小说时，<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion19'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q19' id='q19_1' value='1' /><label for='q19_1'>a) 我想到各种情节并试图把他们结合起来去构想主题。</label></li><li style='width:99%;' ><input  type='radio' name='q19' id='q19_2' value='2' /><label for='q19_2'>b) 当我读完时只知道主题是什么，然后我得回头去寻找有关情节。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div20'  ><div class='div_title_question_all'><div id='divTitle20' class='div_title_question'>17. 当我做家庭作业时，我比较喜欢<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion20'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q20' id='q20_1' value='1' /><label for='q20_1'>a) 一开始就立即做解答。</label></li><li style='width:99%;' ><input  type='radio' name='q20' id='q20_2' value='2' /><label for='q20_2'>b) 首先设法理解题意。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div21'  ><div class='div_title_question_all'><div id='divTitle21' class='div_title_question'>18. 我比较喜欢<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion21'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q21' id='q21_1' value='1' /><label for='q21_1'>a) 确定性的想法。</label></li><li style='width:99%;' ><input  type='radio' name='q21' id='q21_2' value='2' /><label for='q21_2'>b) 推论性的想法。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div22'  ><div class='div_title_question_all'><div id='divTitle22' class='div_title_question'>19. 我记得最牢是<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion22'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q22' id='q22_1' value='1' /><label for='q22_1'>a) 看到的东西。</label></li><li style='width:99%;' ><input  type='radio' name='q22' id='q22_2' value='2' /><label for='q22_2'>b) 听到的东西。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div23'  ><div class='div_title_question_all'><div id='divTitle23' class='div_title_question'>20. 我特别喜欢教师<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion23'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q23' id='q23_1' value='1' /><label for='q23_1'>a) 向我条理分明地呈示材料。</label></li><li style='width:99%;' ><input  type='radio' name='q23' id='q23_2' value='2' /><label for='q23_2'>b) 先给我一个概貌，再将材料与其他论题相联系。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div24'  ><div class='div_title_question_all'><div id='divTitle24' class='div_title_question'>21. 我喜欢<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion24'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q24' id='q24_1' value='1' /><label for='q24_1'>a) 在小组中学习。</label></li><li style='width:99%;' ><input  type='radio' name='q24' id='q24_2' value='2' /><label for='q24_2'>b) 独自学习。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div25'  ><div class='div_title_question_all'><div id='divTitle25' class='div_title_question'>22. 我更喜欢被认为是：<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion25'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q25' id='q25_1' value='1' /><label for='q25_1'>a) 对工作细节很仔细。</label></li><li style='width:99%;' ><input  type='radio' name='q25' id='q25_2' value='2' /><label for='q25_2'>b)对工作很有创造力。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div26'  ><div class='div_title_question_all'><div id='divTitle26' class='div_title_question'>23. 当要我到一个新的地方去时，我喜欢<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion26'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q26' id='q26_1' value='1' /><label for='q26_1'>a) 要一幅地图。</label></li><li style='width:99%;' ><input  type='radio' name='q26' id='q26_2' value='2' /><label for='q26_2'>b) 要书面指南。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div27'  ><div class='div_title_question_all'><div id='divTitle27' class='div_title_question'>24. 我学习时<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion27'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q27' id='q27_1' value='1' /><label for='q27_1'>a) 总是按部就班，我相信只要努力，终有所得。</label></li><li style='width:99%;' ><input  type='radio' name='q27' id='q27_2' value='2' /><label for='q27_2'>b) 我有时完全糊涂，然后恍然大悟。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div28'  ><div class='div_title_question_all'><div id='divTitle28' class='div_title_question'>25. 我办事时喜欢<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion28'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q28' id='q28_1' value='1' /><label for='q28_1'>a) 试试看。</label></li><li style='width:99%;' ><input  type='radio' name='q28' id='q28_2' value='2' /><label for='q28_2'>b) 想好再做。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div29'  ><div class='div_title_question_all'><div id='divTitle29' class='div_title_question'>26. 当我阅读趣闻时, 我喜欢作者<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion29'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q29' id='q29_1' value='1' /><label for='q29_1'>a) 以开门见山的方式叙述。</label></li><li style='width:99%;' ><input  type='radio' name='q29' id='q29_2' value='2' /><label for='q29_2'>b) 以新颖有趣的方式叙述。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div30'  ><div class='div_title_question_all'><div id='divTitle30' class='div_title_question'>27. 当我在上课时看到一幅图, 我通常会清晰地记着<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion30'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q30' id='q30_1' value='1' /><label for='q30_1'>a) 那幅图。</label></li><li style='width:99%;' ><input  type='radio' name='q30' id='q30_2' value='2' /><label for='q30_2'>b) 教师对那幅图的解说。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div31'  ><div class='div_title_question_all'><div id='divTitle31' class='div_title_question'>28. 当我思考一大段信息资料时，我通常<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion31'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q31' id='q31_1' value='1' /><label for='q31_1'>a) 注意细节而忽视概貌。</label></li><li style='width:99%;' ><input  type='radio' name='q31' id='q31_2' value='2' /><label for='q31_2'>b) 先了解概貌而后深入细节。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div32'  ><div class='div_title_question_all'><div id='divTitle32' class='div_title_question'>29. 我最容易记住<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion32'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q32' id='q32_1' value='1' /><label for='q32_1'>a) 我做过的事。</label></li><li style='width:99%;' ><input  type='radio' name='q32' id='q32_2' value='2' /><label for='q32_2'>b) 我想过的许多事。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div33'  ><div class='div_title_question_all'><div id='divTitle33' class='div_title_question'>30. 当我执行一项任务是，我喜欢<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion33'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q33' id='q33_1' value='1' /><label for='q33_1'>a) 掌握一种方法。</label></li><li style='width:99%;' ><input  type='radio' name='q33' id='q33_2' value='2' /><label for='q33_2'>b) 想出多种方法。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div34'  ><div class='div_title_question_all'><div id='divTitle34' class='div_title_question'>31. 当有人向我展示资料时，我喜欢<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion34'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q34' id='q34_1' value='1' /><label for='q34_1'>a) 图表。</label></li><li style='width:99%;' ><input  type='radio' name='q34' id='q34_2' value='2' /><label for='q34_2'>b) 概括其结果的文字。.</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div35'  ><div class='div_title_question_all'><div id='divTitle35' class='div_title_question'>32. 当我写文章时，我通常<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion35'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q35' id='q35_1' value='1' /><label for='q35_1'>a) 先思考和着手写文章的开头，然后循序渐进。</label></li><li style='width:99%;' ><input  type='radio' name='q35' id='q35_2' value='2' /><label for='q35_2'>b) 先思考和写作文章的不同部分，然后加以整理。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div36'  ><div class='div_title_question_all'><div id='divTitle36' class='div_title_question'>33. 当我必须参加小组合作课题时，我要<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion36'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q36' id='q36_1' value='1' /><label for='q36_1'>a) 大家首先“集思广益”，人人贡献主意。</label></li><li style='width:99%;' ><input  type='radio' name='q36' id='q36_2' value='2' /><label for='q36_2'>b) 各人分头思考，然后集中起来比较各种想法。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div37'  ><div class='div_title_question_all'><div id='divTitle37' class='div_title_question'>34. 当我要赞扬他人时，我说他是<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion37'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q37' id='q37_1' value='1' /><label for='q37_1'>a)  很敏感的。</label></li><li style='width:99%;' ><input  type='radio' name='q37' id='q37_2' value='2' /><label for='q37_2'>b)  想象力丰富的。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div38'  ><div class='div_title_question_all'><div id='divTitle38' class='div_title_question'>35. 当我在聚会时与人见过面，我通常会记得<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion38'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q38' id='q38_1' value='1' /><label for='q38_1'>a) 他们的模样。</label></li><li style='width:99%;' ><input  type='radio' name='q38' id='q38_2' value='2' /><label for='q38_2'>b) 他们的自我介绍。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div39'  ><div class='div_title_question_all'><div id='divTitle39' class='div_title_question'>36. 当我学习新的科目时, 我喜欢<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion39'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q39' id='q39_1' value='1' /><label for='q39_1'>a) 全力以赴，尽量学得多学得好。</label></li><li style='width:99%;' ><input  type='radio' name='q39' id='q39_2' value='2' /><label for='q39_2'>b) 试图建立该科目与其他有关科目的联系。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div40'  ><div class='div_title_question_all'><div id='divTitle40' class='div_title_question'>37. 我通常被他人认为是<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion40'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q40' id='q40_1' value='1' /><label for='q40_1'>a) 外向的。</label></li><li style='width:99%;' ><input  type='radio' name='q40' id='q40_2' value='2' /><label for='q40_2'>b) 保守的。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div41'  ><div class='div_title_question_all'><div id='divTitle41' class='div_title_question'>38. 我喜欢的课程内容主要是<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion41'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q41' id='q41_1' value='1' /><label for='q41_1'>a) 具体材料(事实、数据)。</label></li><li style='width:99%;' ><input  type='radio' name='q41' id='q41_2' value='2' /><label for='q41_2'>b) 抽象材料 (概念、理论)。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div42'  ><div class='div_title_question_all'><div id='divTitle42' class='div_title_question'>39. 在娱乐方面，我喜欢<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion42'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q42' id='q42_1' value='1' /><label for='q42_1'>a) 看电视。</label></li><li style='width:99%;' ><input  type='radio' name='q42' id='q42_2' value='2' /><label for='q42_2'>b) 看书。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div43'  ><div class='div_title_question_all'><div id='divTitle43' class='div_title_question'>40. 有些教师讲课时先给出一个提纲，这种提纲对我<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion43'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q43' id='q43_1' value='1' /><label for='q43_1'>a) 有所帮助。</label></li><li style='width:99%;' ><input  type='radio' name='q43' id='q43_2' value='2' /><label for='q43_2'>b) 很有帮助。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div44'  ><div class='div_title_question_all'><div id='divTitle44' class='div_title_question'>41. 我认为只给合作的群体打一个分数的想法<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion44'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q44' id='q44_1' value='1' /><label for='q44_1'>a) 吸引我。</label></li><li style='width:99%;' ><input  type='radio' name='q44' id='q44_2' value='2' /><label for='q44_2'>b) 不吸引我。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div45'  ><div class='div_title_question_all'><div id='divTitle45' class='div_title_question'>42. 当我长时间地从事计算工作时<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion45'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q45' id='q45_1' value='1' /><label for='q45_1'>a) 我喜欢重复我的步骤并仔细地检查我的工作。</label></li><li style='width:99%;' ><input  type='radio' name='q45' id='q45_2' value='2' /><label for='q45_2'>b) 我认为检查工作非常无聊，我是在逼迫自己这么干。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div46'  ><div class='div_title_question_all'><div id='divTitle46' class='div_title_question'>43. 我能画下我去过的地方<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion46'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q46' id='q46_1' value='1' /><label for='q46_1'>a) 很容易且相当精确。</label></li><li style='width:99%;' ><input  type='radio' name='q46' id='q46_2' value='2' /><label for='q46_2'>b) 很困难且没有许多细节。</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div><div class='div_question' id='div47'  ><div class='div_title_question_all'><div id='divTitle47' class='div_title_question'>44. 当在小组中解决问题时，我更可能是<span style='color:red;'>&nbsp;*</span></div><div style='clear:both;'></div></div><div class='div_table_radio_question' id='divquestion47'><div class='div_table_clear_top'></div><ul class='ulradiocheck'><li style='width:99%;' ><input  type='radio' name='q47' id='q47_1' value='1' onclick="che()"/><label for='q47_1'>a) 思考解决问题的步骤。</label></li><li style='width:99%;' ><input  type='radio' name='q47' id='q47_2' value='2' onclick="che()"/><label for='q47_2'>b) 思考可能的结果及其在更广泛的领域内的应用</label></li><div style='clear:both;'></div></ul><div style='clear:both;'></div><div class='div_table_clear_bottom'></div></div><div class='errorMessage'></div></div></fieldset></div>

            <!-- 提交按钮 -->
            <div class="survey_div" align="center">
                <form action="survey" method="post" onsubmit="return che()">
                    <input type="text" id="label" name="label" style="display: none"/>
                    <input type="text" id="name" name="name" style="display: none" value="<%=person.getName()%>"/>
              <input type="submit"  class="submitbutton" value="提交" id="submit_button" style="padding:0 24px;height:32px;"/>
              <div style="clear:both;"></div>

                </form>

            </div>
            <hr>


</div>
</div>
            </div>
        </div>
    </div>
</div>
<footer>
    <div class="container">
        <div class="footer-copyright">
            Copyright &copy; iLearner 2016
        </div>
    </div>
</footer>
</body>
</html>


