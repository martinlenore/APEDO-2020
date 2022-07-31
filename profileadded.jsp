<%@include file="common_start.jsp"%>
<!DOCTYPE html>
<html lang="en">
 <head>
  <TITLE>Signup</TITLE>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus�">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <link rel="short cut" href="fav.ico" type="image/x-icon">
  <link rel="stylesheet" href="css/style.css" >
 </head>
 <style>

 </style>

 <body>
 <!--Header DIV starts here -->
  <%@include file="header.jsp"%>
<!--Hearder Div Ends Here -->
   <% 
   String aType= request.getParameter("actionType");
     System.out.println("actionType is !!!!!!!!!!!!!!!!!!!!!!!!!!!"+aType);
     if( !UserManager.isNullOrEmptyString(aType) && aType.equals("NewClient")){
       System.out.println("DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD");
       UserManager.addNewClient(request);
     }
 %>
  
		   <div id="bodyTitle" style="font-size:18px;">Profile Creation</div>
    <div width="auto" height="335px" align="center" style="margin-top:30px;font-family:'Roboto', sans-serif;">
	<h4>Thanks for signing Up. You will recieve a confirmation email soon.</h4>
    <meta http-equiv="refresh" content="25;url=index.jsp" />
   </div>

<%@include file="bodyAnchors.jsp"%>

  <div width="auto" height="100px" id="footerStyle" style="auto;font-size:12px;font-weight:bold;" align="center;">&copy;University Of RhodeIsland | All Rights Reserved | Developed By Anusha Singamaneni  
  </div>
 </body>
</html>
<%@include file="common_end.jsp"%>