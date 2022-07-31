<%@include file="common_start.jsp"%>
<%@page import="java.io.*"%>
<%@page import="java.net.*"%>
<%@page import="java.text.*"%>
<%@page import="java.util.*"%>
<%@page import="org.hibernate.*"%>
<%@page import="com.amp.amp.buslogic.*"%>
<%@page import="com.amp.amp.buslogic.MICManager"%>
<%@page import="com.amp.amp.amp.beans.*"%>
<%@page import="com.amp.amp.util.*"%>
<!DOCTYPE html>
<html lang="en">
 <head>
  <TITLE>AMPed Home</TITLE>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus�">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <link rel="short cut" href="fav.ico" type="image/x-icon">
  <link rel="stylesheet" href="css/style.css" >
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/main.css" rel="stylesheet">
  <title>Document</title>
 </head>
 <%
if (user == null) {
  response.sendRedirect("index.jsp");
  return;
}
%>
 <%
 String srid = request.getParameter("rid");
 int irid = Integer.parseInt(srid);
 String ConUOM = request.getParameter("ConUOM");
 if(ConUOM != null){
 MICManager.UploadMetaData(request,user);
 }
 
 %>
 <body>
 <!--Header DIV starts here -->
  <%@include file="header.jsp"%>
<!--Hearder Div Ends Here -->
  
 	  <div id="bodyTitle">MIC/MLC Result</div>
	  	<div class="container">
   <form action="#" method="post" name="micresult" id="micresult" > 	 
		<div class="row" align="center"> 
			<div class="col-sm-6">
                <div>
<table>
	<tr style="font-size: 13px;"> 
	  <td style="border-bottom:1px solid black"><h4>MIC is yet to be trigerred. Please wait, you wil be redirected to Next Page.</h4></td>
	 </tr>
	 </table>	  
			    </div>
		        <br>
		    </div>			
		</form>

		<meta http-equiv="refresh" content="1;url=mic2result.jsp?rid=<%=irid%>" />
		</div>
		</div>
  <%@include file="bodyAnchors.jsp"%>
 <div width="auto" height="100px" id="footerStyle" style="auto;font-size:12px;font-weight:bold;" align="center">&copy;University Of RhodeIsland | All Rights Reserved | Developed By Amped Team(2020)  
  </div>
 </body>
</html>
<%@include file="common_end.jsp"%>
