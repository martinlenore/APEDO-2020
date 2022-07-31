<%@include file="common_start.jsp"%>
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
  <link rel="stylesheet" href="css/style_2.css" >
  <link href="css/mpSkLayout.css" rel="stylesheet" type="text/css" />
<link href="css/mpSkStyle_cl.css" rel="stylesheet" type="text/css" />
  <title>AMPED MIC</title>
 </head>
 <style>
 </style>
  <%
if (user == null) {
  response.sendRedirect("index.jsp");
  return;
}
%>
 <%
 int rid = MICManager.UploadFiles(request,user);
 System.out.println("RIDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD"+rid);
 %>
 <body>
 
  <!--Header DIV starts here -->
  <%@include file="header.jsp"%>
<!--Hearder Div Ends Here -->
  <div id="bodyTitle">MIC Meta Data</div>
   <div width="auto" height="auto" align="center" style="margin-top:30px;">
	<form action="mic_result.jsp" method="post" name="Login" class="form">
<input type="hidden" name="login" value=""/>
<input type="hidden" name="rid" value="<%=rid%>"/>
		   <ul class="form_list">
		     <li >
			   <label >Concentration UOM</label>
			   <input type="text" name="ConUOM" id="ConUOM" />
			 </li>
			 <li >
			   <label>Control Antibiotic</label>
			   <input type="text" name="conAnt" id="conAnt" />
			 </li>
			 <li >
			   <label >Control Antibiotic Concentration:</label>
			   <input type="text" name="ConAnCon" id="ConAnCon" />
			 </li>
			 <li >
			   <label >Dilution Start:</label>
			   <input type="text" name="DS" id="DS" />
			 </li>
			 <li >
			   <label >Dilution End:</label>
			   <input type="text" name="DE" id="DE" />
			 </li>
			 <li >
			   <label >Growthassay Method:</label>
			   <input type="text" name="gm" id="gm" />
			 </li>
			 <li >
			   <label >Medium:</label>
			   <input type="text" name="med" id="med" />
			 </li>
			 <li >
			   <label >Suplements:</label>
			   <input type="text" name="sup" id="sup" />
			 </li>
			 <li >
			   <label >Doi:</label>
			   <input type="text" name="doi" id="doi" />
			 </li>
			 <li >
				<label >Bad Well Position:</label>
				<input type="text" name="BWP" id="BWP" />
			  </li>
			 <li>
			   <input type="submit" id="botton" value="Submit" onClick="javascript:validateForm(); return false"/>
			 </li>
		   </ul>		  


	</form>
	 
   </div>
   <%@include file="bodyAnchors.jsp"%>

  <div width="auto" height="100px" id="footerStyle" style="auto;" align="center">&copy;University Of RhodeIsland | All Rights Reserved | Developed By Amped Team(2020)  
  </div>
 </body>
</html>
<%@include file="common_end.jsp"%>