<%@include file="common_start.jsp"%>
<!DOCTYPE html>
<html lang="en">
 <head>
  <TITLE>AMPed Home</TITLE>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <link rel="short cut" href="fav.ico" type="image/x-icon">
  <link rel="stylesheet" href="css/style.css" >
  <title>Document</title>
  <script language="javascript"> 
  function validateForm(){
	  var emailValue = document.Login.email.value;	  	  
    if(emailValue == ''){
      alert('Please enter username to continue!');
      document.Login.email.focus();
      return false;
    }

    if(document.Login.phoneno.value == ''){
      alert('Please enter password to continue!');
      document.Login.phoneno.focus();
      return false;
    }
    if(emailValue != '' && document.Login.phoneno.value != ''){
         document.Login.submit();
	}
    return true;
  }
</script>
 </head>
 <%
String login = request.getParameter("email");
String password = request.getParameter("phoneno");
if (user == null && login != null && login != "" && password != null ) {
    System.out.println("JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ");
   UserBean newClient = UserManager.getClientByUserName(login, password);
   vsession.setUser(newClient);
   response.sendRedirect("index.jsp");
   return;
   }
   
 
%>
 <body>
 <!--Header DIV starts here -->
  <%@include file="header.jsp"%>
<!--Hearder Div Ends Here -->
  <div id="bodyTitle">AMPed Database</div>
   <div width="auto" height="335px" align="center" style="margin-top:30px;">
	<form action="#" method="post" name="Login" class="form">
<input type="hidden" name="login" value=""/>
<div id="shout_box_header" >		   
		     <table style="font-family:arial;color:#ffffff;margin-top:4px;font-size:12px;" align="center"><tr><td>PLEASE LOGIN HERE</td></tr></table>
		 </div>
		 <div id="shout_body">
		   <ul>
		     <li class="email">
			   <label for="email" style="font-size:13px;">UserName:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
			   <input type="text" name="email" id="email" />
			 </li>
			 <li class="website">
			   <label for="phoneno" style="font-size:13px;">Password:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
			   <input type="password" name="phoneno" id="phoneno" />
			 </li>				
			 <span><p>Double Check everything! I won't want to respond to the wrong information!</p></span></br>
			 <li>
			   <input type="submit" id="botton" value="LOGIN" onClick="javascript:validateForm(); return false"/>
			 </li>
		   </ul>		  
		 </div>

	</form>
	 
   </div>
   <%@include file="bodyAnchors.jsp"%>

  <div width="auto" height="100px" id="footerStyle" style="auto;" align="center">&copy;University Of RhodeIsland | All Rights Reserved | Developed By Amped Team(2020)  
  </div>
 </body>
</html>
<%@include file="common_end.jsp"%>
