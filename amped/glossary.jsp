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
 </head>
 <style>

 </style>
 <body>
 <!--Header DIV starts here -->
  <%@include file="header.jsp"%>
<!--Hearder Div Ends Here -->
  
  <!-- <%
	  
	   List<PeptideBean> pp = PeptideManager.peptideList();
	   System.out.println("IN JSP PAGEEEEEEEEEEEEEEE"+pp);
	   
	   %>-->
		   <div id="bodyTitle" style="font-size:18px;">Glossary</div>
    <div width="auto" height="335px" align="center" style="margin-top:30px;">
	<table style="font-family:'Roboto', sans-serif;text-align: justify ;">
	<tr style="font-weight:bold;font-size: 14px;">
	<td style="border-bottom:1px solid black;"> Name</td>
	  <td style="border-bottom:1px solid black;"> Abbreviation</td>
	  <td style="border-bottom:1px solid black">URL</td>
	</tr >
	<!--<for(int i = 0; i < pp.size(); i++){
                  PeptideBean ppb = (PeptideBean) pp.get(i);
					  %>-->
	<tr style="font-size: 13px;">
      <td style="border-bottom:1px solid black">AMPED</td>
	  <td style="border-bottom:1px solid black">Antimicrobial peptide database </td>
	  <td style="border-bottom:1px solid black"><a href="http://amped.uri.edu" style="color:black;" target="_blank">http://amped.uri.edu</a></td>
	  
	</tr>

	<tr style="font-size: 13px;">
      <td style="border-bottom:1px solid black">MIC</td>
	  <td style="border-bottom:1px solid black">Minimum Inhibitory Concentration </td>
	  <td style="border-bottom:1px solid black"><a href="https://en.wikipedia.org/wiki/Minimum_inhibitory_concentration" style="color:black;" target="_blank">https://en.wikipedia.org/wiki/Minimum_inhibitory_concentration</a></td>
	  
	</tr>

	</table>
	 
   </div>

<%@include file="bodyAnchors.jsp"%>

  <div width="auto" height="100px" id="footerStyle" style="auto;font-size:12px;font-weight:bold;" align="center;">&copy;University Of RhodeIsland | All Rights Reserved | Developed By Amped Team(2020)  
  </div>
 </body>
</html>
<%@include file="common_end.jsp"%>