<%@ page import="entity.Person" %>
<%@ page import="entity.Video" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="DatabaseHelper.DB" %><%--
  Created by IntelliJ IDEA.
  User: Jarvie
  Date: 5/7/2016
  Time: 9:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%Person person  = (Person) session.getAttribute("person");%>
    <link rel="stylesheet" href="css/style.css">
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/hux-blog.css">
    <!-- Pygments Github CSS -->
    <link rel="stylesheet" href="css/syntax.css">
    <title>iLearner</title>
</head>
<body>
<%
    DB db=new DB();
    ArrayList<Video> videos = new ArrayList<Video>();
    if (!(person==null)){
        String label=person.getLabel();
        String sql="select * from video where label ='"+label+"'";
        videos=db.readVideo(sql);

    }
    else {
        String sql="select * from video";
        videos=db.readVideo(sql);      //此处读取所有视频列表,若较多复杂度比较高,得改
    }
%>
<script type="text/javascript">
    var i=0;
    function checkname() {
        if (i == 0) {
            document.getElementById("info").style.display = 'block';
            i = 1;
        }
        else {
            document.getElementById("info").style.display = 'none';
            i=0;
        }
    }
</script>



<nav class="navbar navbar-default navbar-custom navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/"><img src="img/logo.png" width="160" height="60"></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <!-- Known Issue, found by Hux:
            <nav>'s height woule be hold on by its content.
            so, when navbar scale out, the <nav> will cover tags.
            also mask any touch event of tags, unfortunately.
        -->
        <div id="huxblog_navbar">
            <div class="navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/index.jsp">Home</a></li>
                    <li><a href="/survey.jsp">Survey</a></li>
                    <!--以上为是否跳转到问卷界面,以下为检测是否登录-->
                    <%
                        if(person==null)
                        {
                    %>
                    <li><a href="/login.jsp">Login</a></li>
                    <%
                        }
                        else{
                           //修改登录者姓名
                    %>
                    <li><a href="javascript:void (0)" onclick="checkname()" style="margin-left: -5px" ><%=person.getName()%>&nbsp;&nbsp;&nbsp; </a></li>
                    <%
                        }
                    %>
                </ul>
                <div  id="info" style="padding-left: 1180px;display: none">
                    <a href="personInfo.jsp" style="display: block;color: white;font-size: 10px;">个人信息</a>
                    <a href="signOut.jsp" style="display: block;color: white;font-size: 10px">退出登录</a>
                </div>
            </div>
        </div>
        <!-- /.navbar-collapse -->

    </div>
    <!-- /.container -->
</nav>

<header class="intro-header" style="background-image: url('/img/home-bg.jpg')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 ">
                <div class="site-heading">
                    <h1>iLearner</h1>
                    <!--<hr class="small">-->
                    <span class="subheading">Personalized Vocational Education</span>
                </div>
            </div>
        </div>
    </div>
</header>




<div class="outwrap-recomend">
    <div class="contentwrap">
        <div class="recomend">Personalized Content <a class="fr" href="/" target="_blank"><span class="more">More</span><i class="icon-right2"></i></a> </div>
        <div class="recomendContent">


            <div class="box js-upAni">

                <%
                    int kk = 0;
                    String name = null;
                    if(0<videos.size())
                    {
                        kk = videos.get(0).getId();
                        name = videos.get(0).getName();
                    }
                    else
                    {
                        kk = videos.get(0).getId();
                        name = videos.get(0).getName();
                    }
                %>


                <a href="/video.jsp?pageNo=<%=kk%>" target="_blank" data-ast="xiaomutj_1_513">
                    <div class="pr h100">
                        <img src="http://static.vecteezy.com/system/resources/previews/000/094/491/original/polygonal-texture-background-vector.jpg" height="124" width="100%">
                        <div class="box_body js-upBox">
                            <p class="ml20 title"> <%=name%> </p>
                            <p class="summary ml20"> <%=name%></p>
                        </div>
                        <div class="box_bottom "><span class="ml20 fl color-red">4:00</span><span class="fr mr20">1005 Views</span></div>
                    </div>
                </a>
            </div>


            <div class="box js-upAni">

                <%
                    kk = 1;
                    name = null;
                    if(kk<videos.size())
                    {
                        kk = videos.get(1).getId();
                        name = videos.get(1).getName();
                    }
                    else
                    {
                        kk = videos.get(0).getId();
                        name = videos.get(0).getName();
                    }
                %>

                <a href="/video.jsp?pageNo=<%=kk%>" target="_blank" data-ast="xiaomutj_1_507">
                    <div class="pr h100">
                        <img src="http://static.vecteezy.com/system/resources/previews/000/094/491/original/polygonal-texture-background-vector.jpg" height="124" width="100%">
                        <div class="box_body js-upBox">
                            <p class="ml20 title"><%=name%></p>
                            <p class="summary ml20"><%=name%></p>
                        </div>
                        <div class="box_bottom "><span class="ml20 fl color-red">4:00</span><span class="fr mr20">637 Views</span></div>
                    </div>
                </a>
            </div>


            <div class="box js-upAni">

                <%
                    kk = 2;
                    name = null;
                    if(kk<videos.size())
                    {
                        kk = videos.get(2).getId();
                        name = videos.get(2).getName();
                    }
                    else
                    {
                        kk = videos.get(0).getId();
                        name = videos.get(0).getName();
                    }
                %>
                <a href="/video.jsp?pageNo=<%=kk%>" target="_blank" data-ast="xiaomutj_1_511">
                    <div class="pr h100">
                        <img src="http://static.vecteezy.com/system/resources/previews/000/094/491/original/polygonal-texture-background-vector.jpg" height="124" width="100%">
                        <div class="box_body js-upBox">
                            <p class="ml20 title"> <%=name%> </p>
                            <p class="summary ml20"><%=name%></p>
                        </div>
                        <div class="box_bottom "><span class="ml20 fl color-red">4:00</span><span class="fr mr20">245 Views</span></div>
                    </div>
                </a>
            </div>


            <div class="box js-upAni">
                <%
                    kk = 3;
                    name = null;
                    if(kk<videos.size())
                    {
                        kk = videos.get(3).getId();
                        name = videos.get(3).getName();
                    }
                    else
                    {
                        kk = videos.get(0).getId();
                        name = videos.get(0).getName();
                    }
                %>
                <a href="/video.jsp?pageNo=<%=kk%>" target="_blank" data-ast="xiaomutj_1_505">
                    <div class="pr h100">
                        <img src="http://static.vecteezy.com/system/resources/previews/000/094/491/original/polygonal-texture-background-vector.jpg" height="124" width="100%">
                        <div class="box_body js-upBox">
                            <p class="ml20 title"><%=name%> </p>
                            <p class="summary ml20"><%=name%></p>
                        </div>
                        <div class="box_bottom "><span class="ml20 fl color-red">4:00</span><span class="fr mr20">147 Views</span></div>
                    </div>
                </a>
            </div>


            <div class="box js-upAni">
                <%
                    kk = 4;
                    name = null;
                    if(kk<videos.size())
                    {
                        kk = videos.get(4).getId();
                        name = videos.get(4).getName();
                    }
                    else
                    {
                        kk = videos.get(0).getId();
                        name = videos.get(0).getName();
                    }
                %>
                <a href="/video.jsp?pageNo=<%=kk%>" target="_blank" data-ast="xiaomutj_1_509">
                    <div class="pr h100">
                        <img src="http://static.vecteezy.com/system/resources/previews/000/094/491/original/polygonal-texture-background-vector.jpg" height="124" width="100%">
                        <div class="box_body js-upBox">
                            <p class="ml20 title"> <%=name%> </p>
                            <p class="summary ml20"> <%=name%></p>
                        </div>
                        <div class="box_bottom "><span class="ml20 fl color-red">4:00</span><span class="fr mr20">802 Views</span></div>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>






<!-- More Content -->
<div class="outwrap-content">
    <div class="contentwrap allshadow web pt28">
        <div class="classify">
            <p class="title">iLearner<br>Learning <br>resource</p>
            <p class="fs14">Struggle for your better future</p>
        </div>




        <a target="_blank" href="/" data-ast="webtuijian_1_515">
            <div class="longer" style="background-image: url(http://img.mukewang.com/5774bdad000186f304680172.jpg)">
                <p>Video resource</p>
            </div>
        </a>


        <div class="heigher js-upAni mr0">
            <div class="pr h100">
                <a target="_blank" href="/">
                    <img src="http://img.mukewang.com/52ce87010001b92806000338-228-128.jpg" height="124" width="100%">
                    <div class="box_body js-upBox">
                        <p class="ml20 title">Personal course</p>
                        <p class="summary ml20"> 个性化学习计划 </p>
                    </div>
                    <div class="box_bottom "><span class="ml20">12503 人在学</span></div>
                </a>
                <div class="list">


                    <a target="_blank" href="/"><p class="w180andH30">List 1</p></a>

                    <a target="_blank" href="/"><p class="w180andH30">List 2</p></a>

                    <a target="_blank" href="/"><p class="w180andH30">List 3</p></a>

                   <!-- <a target="_blank" href="/"><p class="w180andH30">List 4</p></a>

                    <a target="_blank" href="/"><p class="w180andH30">List 5</p></a>  -->

                </div>
            </div>
        </div>


        <a target="_blank" href="/ " data-ast="webtuijian_1_517">
            <div class="normal js-upAni">
                <div class="pr h100">
                    <img src="http://img.mukewang.com/5774daca0001646506000338-228-128.jpg" height="124" width="100%">
                    <div class="box_body js-upBox">
                        <p class="ml20 title">PPT resource</p>
                        <p class="summary ml20"> PPT资源 </p>
                    </div>
                    <div class="box_bottom "><span class="ml20"> 48426 人在学</span></div>
                </div>
            </div>
        </a>


        <a target="_blank" href="/" data-ast="webtuijian_1_519">
            <div class="longer" style="background-image: url(http://img.mukewang.com/5774c1ee00019e9004680172.jpg)">
                <p>Courseware</p>
            </div>
        </a>


        <a target="_blank" href="/" data-ast="webtuijian_1_521">
            <div class="normal js-upAni">
                <div class="pr h100">
                    <img src="http://img.mukewang.com/5774db480001229006000338-228-128.jpg" height="124" width="100%">
                    <div class="box_body js-upBox">
                        <p class="ml20 title">Personal Info</p>
                        <p class="summary ml20"> 个人信息 </p>
                    </div>
                    <div class="box_bottom "><span class="ml20"> 95218 人在学</span></div>
                </div>
            </div>
        </a>




        <div class="cb">  </div>
    </div>
    </div>




<!-- Footer -->
<footer>
    <div class="container">
        <div class="footer-copyright">
            Copyright &copy; iLearner 2016
        </div>
    </div>
</footer>
</body>
</html>