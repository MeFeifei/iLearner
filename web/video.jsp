<%@ page import="entity.Guestbook" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="DatabaseHelper.DB" %><%--
  Created by IntelliJ IDEA.
  User: feifei
  Date: 16/7/12
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <meta charset="utf-8" />
        <title>iLearner-Video</title>
        <meta name="description" content="A simple HTML5 media player with custom controls and WebVTT captions.">
        <meta name="author" content="Sam Potts">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Docs styles -->
        <link rel="stylesheet" href="/dist/demo.css">
        <link rel="stylesheet" href="/css/guestbook.css">
</head>
<body>

<%
    //dedao shiping id
    String pageNo = request.getParameter("pageNo");
    DB db=new DB();
    int pageNume = 0;
    if(pageNo != null) {
        pageNume = Integer.parseInt(pageNo);
    }//dedao videoid
    else
    {
        pageNume = (Integer) session.getAttribute("vid");
    }

    ArrayList<Guestbook> guestbooks = new ArrayList<Guestbook>();
    guestbooks=db.readReply(pageNume);
    String url=db.getVideoUrl(pageNume);

%>

<header>
    <h1>iLearner</h1>
    <p>Struggle for your better future </p>

</header>

<main role="main" id="main">

    <section>
        <video poster="https://cdn.selz.com/plyr/1.5/View_From_A_Blue_Moon_Trailer-HD.jpg" controls crossorigin>
            <!-- Video files -->
            <source src="<%=url+".mp4"%>" type="video/mp4">
            <source src="<%=url+".webm"%>" type="video/webm">

            <!-- Text track file -->
            <track kind="captions" label="English" srclang="en" src="https://cdn.selz.com/plyr/1.5/View_From_A_Blue_Moon_Trailer-HD.en.vtt" default>

            <!-- Fallback for browsers that don't support the <video> element -->
            <a href="https://cdn.selz.com/plyr/1.5/View_From_A_Blue_Moon_Trailer-HD.mp4" download>Download</a>
        </video>

    </section>
</main>

<!-- Plyr core script -->
<script src="../dist/plyr.js"></script>

<!-- Docs script -->
<script src="dist/demo.js"></script>

<!-- Rangetouch to fix <input type="range"> on touch devices (see https://rangetouch.com) -->
<script src="https://cdn.rangetouch.com/0.0.9/rangetouch.js" async></script>

<!-- Sharing libary (https://shr.one) -->
<script src="https://cdn.shr.one/0.1.9/shr.js"></script>
<script>if(window.shr) { window.shr.setup({ count: { classname: 'btn__count' } }); }</script>
<div style="float: left">
    <div class="upideas_content clear_fix">
        <div class="up_content clear_fix">
            <div class="up_bar">
                <h3>评论须知</h3>
                <ol style="padding:0;">
                    <li>评论的内容需不浮夸、有意义，不含政治、色情、广告、诽谤、歧视等内容。</li>
                    <li>你可以在这里写写学习时的心得、疑问以及自己的想法。</li>
                    <li>请不要恶意踩别人的评论,如果误点可以顶回。</li>
                    <li>管理员有权删除不合适的评论内容。</li>
                </ol>
            </div>
            <div class="up_content_text">
                <form method="post" action="reply?pageNo=<%=pageNume%>" >
                    <textarea id="idea_text" name="idea_text" class="up_idea_text" rows="23" required placeholder="留下你的足迹..." ></textarea>
                    <span class="up_idea_err"></span><button type="submit" class="up_idea_btn" id="idea_btn" >评论</button>
                </form>
            </div>
        </div>
    </div>
</div>
<%
    for (int i=0;i<guestbooks.size();i++){

    %>


<div class="content">
    <div class="cell">
        <div class="cell_author" >

            <a href="/>"><%=guestbooks.get(i).getUsername()%></a>
            <span class="cell_loc" title="1楼" style="font-size: 10px"><%=(i+1)+"#"%></span>
        </div>
        <div class="cell_text" title='' >
            <%=guestbooks.get(i).getText()%>
        </div>
        <div class="cell_bar" title=""><%=guestbooks.get(i).getTime()%>
            <!--<ul style="padding:0">
                <li><a id="putgoods" name="putgoods" href="#" title="10个赞" >赞[10]</a></li>
                <li><a id="putbads" name="putbads" href="j#" title="10个踩">踩[10]</a></li>
            </ul>-->


        </div>
    </div>
</div>
<%
    }

%>


</body>
</html>
