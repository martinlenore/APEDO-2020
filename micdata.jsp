<%@include file="common_start.jsp"%>
<!DOCTYPE html>
<html lang="en">
 <head>
  <TITLE>MIC History Pages</TITLE>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
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
	 
	   String micnum = request.getParameter("micnumber");
	    List<MicInputFileBean> mif = MICManager.micinputfileList(micnum);

	   MicEdataBean med = MICManager.micedatafileList(micnum);
	   List<MicMeanDataBean> mmd = MICManager.micmeandataList(micnum);
	   List<MicGraphBean> mg = MICManager.micgraphList(micnum);

	   %>
  
		   <div id="bodyTitle" style="font-size:18px;">MIC Data</div>
    <div width="auto" height="335px" align="center" style="margin-top:30px;">
	<table style="font-family:'Roboto', sans-serif;text-align: justify ;width:1200px;text-align:center;">
	<tr style="font-weight:bold;font-size: 14px;">
	<td style="border-bottom:1px solid black;">MIC Run Id</td>
	  <td style="border-bottom:1px solid black;">Data Type</td>
	  <td style="border-bottom:1px solid black">Input Files</td>
	  <td style="border-bottom:1px solid black">Upload Date</td>
	
	  
	</tr >
	<%for(int i = 0; i < mif.size(); i++){
                  MicInputFileBean mifb = (MicInputFileBean) mif.get(i);
					  %>
	<tr style="font-size: 13px;">
      <td style="border-bottom:1px solid black;"><%=mifb.getMicrunnum()%></td>
	  <td style="border-bottom:1px solid black"><%=mifb.getFiletype()%></td>
	  <td style="border-bottom:1px solid black"><a href="micdisplaydata.jsp?filepath=/micinputfiles/<%=mifb.getFilepath()%>" style="color:Black;" method="post"><%=mifb.getFilepath()%></a></td>
	  <td style="border-bottom:1px solid black"><%=mifb.getDateupload()%></td> 
	</tr>
	 <%}%>
	
	</table>
	 
   </div>

   <div width="auto" height="335px" align="center" style="margin-top:30px;">
	<table style="font-family:'Roboto', sans-serif;text-align: justify ;width:1200px;text-align:center;">
	<tr style="font-weight:bold;font-size: 14px;">
	<td style="border-bottom:1px solid black;">MIC Run Id</td>
	  <td style="border-bottom:1px solid black;">Data Type</td>
	  <td style="border-bottom:1px solid black">Extracted Data File</td>
	  <td style="border-bottom:1px solid black">Extracted Date</td>
	
	  
	</tr >
	<%
	if(med != null){
	
					  %>
	<tr style="font-size: 13px;">
      <td style="border-bottom:1px solid black;"><%=med.getMicrunid()%></td>
	  <td style="border-bottom:1px solid black"><%=med.getFiletype()%></td>
	  <td style="border-bottom:1px solid black"><a href="micdisplayEdata.jsp?filepath=<%=med.getFilepath()%>" style="color:Black;"><%=med.getFilepath()%></a></td>
	  <td style="border-bottom:1px solid black"><%=med.getDateextracted()%></td> 
	</tr>
	 <%}%>
	
	</table>
	 
   </div>

   <div width="auto" height="335px" align="center" style="margin-top:30px;">
	<table style="font-family:'Roboto', sans-serif;text-align: justify ;width:1200px;text-align:center;">
	<tr style="font-weight:bold;font-size: 14px;">
	<td style="border-bottom:1px solid black;">MIC Run Id</td>
	  <td style="border-bottom:1px solid black">Mean and SD</td>
	  <td style="border-bottom:1px solid black">Created Date</td>
	
	  
	</tr >
	<%for(int i = 0; i < mmd.size(); i++){
                  MicMeanDataBean mmdb = (MicMeanDataBean) mmd.get(i);
					  %>
	<tr style="font-size: 13px;">
      <td style="border-bottom:1px solid black;"><%=mmdb.getMicrunid()%></td>
	  <td style="border-bottom:1px solid black"><a href="micdisplayMSdata.jsp?filepath=<%=mmdb.getFilepath()%>" style="color:Black;" method="post"><%=mmdb.getFilepath()%></a></td>
	  <td style="border-bottom:1px solid black"><%=mmdb.getDatecreated()%></td> 
	</tr>
	 <%}%>
	
	</table>
	 
   </div>

<div width="auto" height="335px" align="center" style="margin-top:30px;">
	<table style="font-family:'Roboto', sans-serif;text-align: justify ;width:1200px;text-align:center;">
	<tr style="font-weight:bold;font-size: 14px;">
	<td style="border-bottom:1px solid black;">MIC Run Id</td>
	  <td style="border-bottom:1px solid black">Graph Name</td>
	  <td style="border-bottom:1px solid black">Generated Date</td>
	
	  
	</tr >
	<%for(int i = 0; i < mg.size(); i++){
                  MicGraphBean mgb = (MicGraphBean) mg.get(i);
					  %>
	<tr style="font-size: 13px;">
      <td style="border-bottom:1px solid black;"><%=mgb.getMicrunid()%></td>
	  <td style="border-bottom:1px solid black"><a href="micdisplaygraph.jsp?filepath=<%=mgb.getFilepath()%>" style="color:Black;" method="post"><%=mgb.getFilepath()%></a></td>
	  <td style="border-bottom:1px solid black"><%=mgb.getDategenerated()%></td> 
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