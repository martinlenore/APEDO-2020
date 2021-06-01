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
  <title>Document</title>
 </head>
 <style>

 </style>
 <body>
 <!--Header DIV starts here -->
  <%@include file="header.jsp"%>
<!--Hearder Div Ends Here -->
  
   <%
	  
	   List<PeptideBean> pp = PeptideManager.peptideList();
	   System.out.println("IN JSP PAGEEEEEEEEEEEEEEE"+pp);
	   
	   %>
		   <div id="bodyTitle" style="font-size:18px;">PEPTIDE Portal</div>
    <div width="auto" height="335px" align="center" style="margin-top:30px;">
	<table style="font-family:'Roboto', sans-serif;text-align: justify ;">
	<tr style="font-weight:bold;font-size: 14px;">
	<td style="border-bottom:1px solid black;"> ID</td>
	  <td style="border-bottom:1px solid black;"> AMP ID</td>
	  <td style="border-bottom:1px solid black">Peptide Name</td>
	  <td style="border-bottom:1px solid black">AA Sequence</td>
	  <td style="border-bottom:1px solid black">Length</td>
	  
	</tr >
	<%for(int i = 0; i < pp.size(); i++){
                  PeptideBean ppb = (PeptideBean) pp.get(i);
					  %>
	<tr style="font-size: 13px;">
      <td style="border-bottom:1px solid black"><%=ppb.getId()%></td>
	  <td style="border-bottom:1px solid black"><%=ppb.getAmpid()%></td>
	  <td style="border-bottom:1px solid black"><%=ppb.getName()%></td>
	  <td style="border-bottom:1px solid black"><%=ppb.getAasequence()%></td>
	  <td style="border-bottom:1px solid black"><%=ppb.getLengthseq()%></td>
	  
	</tr>
	 <%}%>
	</table>
	 
   </div>

<%@include file="bodyAnchors.jsp"%>

  <div width="auto" height="100px" id="footerStyle" style="auto;font-size:12px;font-weight:bold;" align="center;">&copy;University Of RhodeIsland | All Rights Reserved | Developed By Amped Team(2020)  
  </div>
 </body>
</html>
<%@include file="common_end.jsp"%>