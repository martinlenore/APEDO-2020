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
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/main.css" rel="stylesheet">
  <title>Document</title>
 </head>
<%
     MICManager.UploadFiles(request,response);
 %>
  
    <body> 
        <div id="result">
            <h3>${requestScope["message"]}</h3>
			
			<img src="images/averageGrowthPP2_mean.png" alt="" width="500px" height="500px"/>
			<img src="images/paverageGrowthPP1_mean.png" alt="" width="500px" height="500px"/>
			<img src="images/averageGrowthPP2_SD.png" alt="" width="500px" height="500px"/>
			<img src="images/MICPP1SD.png" alt="" width="500px" height="500px"/>
        </div>
       
    </body>

</html>
<%@include file="common_end.jsp"%>
