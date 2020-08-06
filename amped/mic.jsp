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
 <body>
 <!--Header DIV starts here -->
  <%@include file="header.jsp"%>
<!--Hearder Div Ends Here -->
  
 	  <div id="bodyTitle">MIC/MLC Calculator</div>
   <form action="mic_upload_process.php" method="post" enctype="multipart/form-data" name="mic" id="mic" onSubmit=""> 	 
		<div class="row">
            <div class="col-sm-6">
              &nbsp;
            </div>
            <div align="center";>
              <p style="text-align: center;"> Please answer few question to get started</p>
              <hr>
            </div>
        </div>
		  <div class="row" >
			<div class="col-sm-4">
		     <h4 style="text-align: left;"><span style="font-weight: normal;">What Bacteria your peptide fight against?</span><br>
              </h4>
			</div>
		    <div class="col-sm-6">
              <div style="text-align: left;"><input style="height: 35px; width: 100%;" placeholder="Please enter bacteria you used." title="What species/strain of bacteria are you trying to inhibit? E.g., S. aureus, E. coli, etc." name="Bacteria_Name" id="Bacteria_Name" required type="text" value=""><br>
              </div>
			  <br>
		    </div>
		   </div>
		   <div class="row" >
			<div class="col-sm-4">
              <h4 style="text-align: left;"><span style="font-weight: normal;">What Kind of Assay you are using?</span><br>
              </h4>
			</div>
		    <div class="col-sm-6">
              <div style="text-align: left;"><input style="height: 35px; width: 100%;" placeholder="Please enter Assay you used." title="By what means are you assaying bacterial growth? E.g., light scattering, zone of inhibition, etc." name="Assay_Name" id="Assay_Name" required type="text" value="">
              </div>
			   <br>
		    </div>
		   </div>
		    <div class="row" >
			<div class="col-sm-4">
              <h4 style="text-align: left;"><span style="font-weight: normal;">What is your Medium?</span><br>
              </h4>
			</div>
		    <div class="col-sm-6">
              <div style="text-align: left;"><input style="height: 35px; width: 100%;" placeholder="Enter medium you used." title="What is your Bacteria growing in? E.g., LB, TSY, M9 minimal, etc," name="Medium_Name" id="Medium_Name" required type="text" value="">
              </div>
			   <br>
		    </div>
		   </div>
		   <div class="row" >
			<div class="col-sm-4">
			  <h4 style="text-align: left;"><span style="font-weight: normal;">What would you like to name Test Peptide 1?</span><br>
              </h4>
			</div>
		    <div class="col-sm-6">
              <div style="text-align: left;"><input style="height: 35px; width: 100%;" placeholder="Enter Peptide1 name." name="Peptide1_Name" id="Peptide1_Name" required type="text" value="">
              </div>
			     <br>
		    </div>
		   </div>
		   <div class="row" >
			<div class="col-sm-4">
			  <h4 style="text-align: left;"><span style="font-weight: normal;">What would you like to name Test Peptide 2?</span><br>
              </h4>
			</div>
		    <div class="col-sm-6">
              <div style="text-align: left;"><input style="height: 35px; width: 100%;" placeholder="Enter peptide2 name." name="Peptide2_Name" id="Peptide2_Name" required type="text" value="">
              </div>
			  <br>
		    </div>
		   </div>
		   <div class="row" >
			<div class="col-sm-4">
			  <h4 style="text-align: left;"><span style="font-weight: normal;">What control antibiotic did you use? </span><br>
              </h4>
			</div>
		    <div class="col-sm-6">
              <div style="text-align: left;"><input style="height: 35px; width: 100%;" placeholder="Enter concentration Control Antibiotic used." name="Antibiotic_Name" id="Antibiotic_Name" required type="text" value="">
              </div>
			  <br>
		    </div>
		   </div>
		   
		   <div class="row" >
			<div class="col-sm-4">
			  <h4 style="text-align: left;"><span style="font-weight: normal;">What concentration of control antibiotic did you use?  </span><br>
              </h4>
			</div>
		    <div class="col-sm-6">
              <div style="text-align: left;"><input style="height: 35px; width: 100%;" placeholder="Enter concentration used." name="Con_Name" id="Con_Name" required type="text" value="">
              </div>
			  <br>
		    </div>
		   </div>
		   <div class="row" >
			<div class="col-sm-4">
			  <h4 style="text-align: left;"><span style="font-weight: normal;">How many time points does your data have? </span><br>
              </h4>
			</div>
		    <div class="col-sm-6">
              <div style="text-align: left;"><input style="height: 35px; width: 100%;" placeholder="How many time points do you have." name="Time_Point" id="Time_Point" required type="text" value="">
				<br />
				<div id="container"></div>
			  </div>
			  <br>
		    </div>
		   </div> 
           <div class="row">
            <div class="col-sm-4">
			<img src="images/tem1.png" style="width:500px;height:150px;">
              <h5>Upload your .csv file in format shown in the template</br>with one row blank inbetween blocks</h5>
            </div>
			<div class="col-sm-6">
				<div style="text-align: left; padding-left: 150px"><input style="height: 35px;" name="upload_file" type="file" accept= " .csv" id="upload_file" value=""/>
				</div>
			<div class="col-sm-6">
				<div style="text-align: left; padding-left: 150px"><input style="height: 35px;" name="upload_file" type="file" accept= " .csv" id="upload_file" value=""/>
				</div>
			    <div style="text-align: left; padding-left: 150px"><input style="height: 35px; width: 150px; font-size: 14px;"
                  value="Submit" id="Submit" name="Submit" type="Submit">
			    </div>
		        <br>
		    </div>
		   </div>			
		</form>
  <%@include file="bodyAnchors.jsp"%>
 <div width="auto" height="100px" id="footerStyle" style="auto;" align="center">&copy;University Of RhodeIsland | All Rights Reserved | Developed By Amped Team(2020)  
  </div>
 </body>
</html>
<%@include file="common_end.jsp"%>
