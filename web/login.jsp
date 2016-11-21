<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
<head>
  <title>Sign in</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link href="/css/login.css" rel="stylesheet" type="text/css" />
</head>


<body  style="background:url('/img/library.jpg') no-repeat;">
<div class="login-content" >
  <br><br><br><br><br>
  <table width="300" border="0" cellspacing="0" cellpadding="0" align="center" >
    <tr>
      <td height="292" align="center" valign="top" background="Images/Login_back.png">
      <table width="300" height="201" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="72" align="center" ><img src="img/logo.png" alt="" width="160" height="80"></td>
        </tr>
        <tr>
          <td align="center" valign="top">
             <form name="form1" action="login" method="post" >
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="30" colspan="2" align="center" class="STYLE2"><span style="color:red;">


                  </span></td>
                  </tr>
                <tr>
                  <td height="30" align="right" class="STYLE2" style="font-size: 14px">identity：</td>
                  <td align="left"><select name="Type" id="Type">
                   <!-- <option value="">select</option> -->
                      <option value="student">student</option>
                      <option value="admin">admin</option>
                  </select></td>
                  </tr>
                <tr>
                  <td width="37%" height="30" align="right" class="STYLE2" style="font-size: 14px">username：</td>
                  <td width="300" align="left">
                      <input type="text" name="username" id="username" class=""  /></td>
                  </tr>
                <tr>
                  <td height="30" align="right" class="STYLE2" style="font-size: 14px">password：</td>
                  <td align="left">
                      <input type="text" name="password" id="password" class="" /></td>
                  </tr>
                 <tr>
                 <td></td>
                 <td></td>
                 </tr>
                <tr>
                  <td height="60" colspan="2" align="center"><label>
                    <input type="submit" name="login" id="login" value="login" class="btn" >

                  </label></td>
                  </tr>
              </table>
              </form>
          <tr>
              <td height="90" colspan="1" ><label>
                 <a href="sign.jsp" class="sign" >Sign up</a>

              </label></td>
          </tr>
          
          </td>
        </tr>
      </table></td>
    </tr>
  </table>


</div>
</body>
</html>
