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
	  
	   List<AASBean> aas = AASManager.aasquenceList();
	   System.out.println("IN JSP PAGEEEEEEEEEEEEEEE"+aas);
	   
	   %>
		   <div id="bodyTitle" style="font-size:18px;">Amino Acid Sequence Data</div>
    <div width="auto" height="335px" align="center" style="margin-top:30px;">
	<table style="font-family:'Roboto', sans-serif;text-align: justify ;">
	<tr style="font-weight:bold;font-size: 14px;">
	<td style="border-bottom:1px solid black;"> ID</td>
	  <td style="border-bottom:1px solid black;"> Peptide ID</td>
	  <td style="border-bottom:1px solid black">Sequence</td>
	  <td style="border-bottom:1px solid black">Molecular Weight</td>
	  
	</tr >
	<%for(int i = 0; i < aas.size(); i++){
        AASBean aasb = (AASBean) aas.get(i);
					  %>
	<tr style="font-size: 13px;">
      <td style="border-bottom:1px solid black"><%=aasb.getId()%></td>
	  <td style="border-bottom:1px solid black"><%=aasb.getPeptideid()%></td>
	  <td style="border-bottom:1px solid black"><%=aasb.getSequence()%></td>
	  <td style="border-bottom:1px solid black"><%=aasb.getMolecularweight()%></td>
	  
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