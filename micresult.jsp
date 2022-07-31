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
  String micnum = request.getParameter("rid");
  List<MicGraphBean> mg = MICManager.micgraphList(micnum);
 %>
 <body>
 <!--Header DIV starts here -->
  <%@include file="header.jsp"%>
<!--Hearder Div Ends Here -->
  
 	  <div id="bodyTitle">MIC/MLC Result</div>
   <form action="#" method="post" name="micresult" id="micresult" > 	 
		<div  align="center"> 
			<div width="auto" height="335px" align="center" style="margin-top:30px;">
	<table style="align:center;font-family:'Roboto', sans-serif;text-align: justify ;width:1200px;text-align:center;">
	<%for(int i = 0; i < mg.size(); i++){
                  MicGraphBean mgb = (MicGraphBean) mg.get(i);
					  %>
	<tr style="font-weight:bold;font-size: 14px;">
	<td style="border-bottom:1px solid black;"><%=mgb.getFilepath()%></td>
	</tr >
	<tr style="font-size: 13px;">
      <td style="border-bottom:1px solid black;">
	  <img src="micresult/<%=mgb.getFilepath()%>" alt="" width="600px" height="600px" />
	  </td>
	</tr>
	 <%}%>
	</table>
   </div>            
		    </div>			
		</form>


  <%@include file="bodyAnchors.jsp"%>
 <div width="auto" height="100px" id="footerStyle" style="auto;font-size:12px;font-weight:bold;" align="center">&copy;University Of RhodeIsland | All Rights Reserved | Developed By Amped Team(2020)  
  </div>
 </body>
</html>
<%@include file="common_end.jsp"%>
