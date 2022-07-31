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
table {
  border-spacing: 15px;
}
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
    <div height="335px" align="center" style="margin-top:30px;">
	<table style="font-family:'Roboto', sans-serif;text-align: justify ;border-spacing: 15px" width="1000px" >
	<tr style="font-weight:bold;font-size: 14px;">
	<td style="border-bottom:1px solid black;"> Name</td>
	  <td style="border-bottom:1px solid black;padding-left:10px"> Description</td>
	  
	</tr >
	<!--<for(int i = 0; i < pp.size(); i++){
                  PeptideBean ppb = (PeptideBean) pp.get(i);
					  %>-->
	<tr style="font-size: 13px;">
      <td style="border-bottom:1px solid black">AMPED</td>
	  <td style="border-bottom:1px solid black">The Antimicrobial Peptide Editable Database developed at the University of Rhode Island under the direction of Professor Lenore Martin. </td>
	  
	  
	</tr>

	<tr style="font-size: 13px;">
      <td style="border-bottom:1px solid black">MIC</td>
	  <td style="border-bottom:1px solid black">Minimum Inhibitory Concentration </td>
	</tr>

	<tr style="font-size: 13px;">
		<td style="border-bottom:1px solid black">Antimicrobial</td>
		<td style="border-bottom:1px solid black">An antimicrobial is an agent that kills microorganisms or inhibits their growth, which includes antibacterial, antiviral, antifungal and antiprotozoal agents. </td>
	  </tr>
  
	  <tr style="font-size: 13px;">
		<td style="border-bottom:1px solid black">Amino acid</td>
		<td style="border-bottom:1px solid black">Organic compound that serves as the building blocks of proteins.. </td>
	  </tr>

	  <tr style="font-size: 13px;">
		<td style="border-bottom:1px solid black">AWI</td>
		<td style="border-bottom:1px solid black">AMPed Web Interface; the group of web pages and forms that access the AMPed database. </td>
	  </tr>

	  <tr style="font-size: 13px;">
		<td style="border-bottom:1px solid black">Broth</td>
		<td style="border-bottom:1px solid black">The liquid media in which bacteria grow. The media contains nutrients and minerals needed for allowing the grow of the organism. </td>
	  </tr>

	  <tr style="font-size: 13px;">
		<td style="border-bottom:1px solid black">DBS</td>
		<td style="border-bottom:1px solid black">Database Structure; the structure of the tables conforming the AMPed database. </td>
	  </tr>

	  <tr style="font-size: 13px;">
		<td style="border-bottom:1px solid black">MIC</td>
		<td style="border-bottom:1px solid black">Minimum inhibitory concentration (MIC) is the lowest concentration of the peptide that will inhibit the growth of a targeted microorganism. </td>
	  </tr>

	  <tr style="font-size: 13px;">
		<td style="border-bottom:1px solid black">MLC</td>
		<td style="border-bottom:1px solid black">Minimal Lethal Concentration (MLC)is the lowest concentration of a drug at which bacteria are killed. </td>
	  </tr>

	  <tr style="font-size: 13px;">
		<td style="border-bottom:1px solid black">MOLECULAR WEIGHT</td>
		<td style="border-bottom:1px solid black">Molecular weight is the total mass of a given peptide as determined by the sum of the composite amino acids (as determined by NIST) minus the mass of water for each peptide bond in the peptide. </td>
	  </tr>

	  <tr style="font-size: 13px;">
		<td style="border-bottom:1px solid black">MySQL</td>
		<td style="border-bottom:1px solid black">MySQL is an open-source relational database management system (RDBMS) created by a Swedish company, MySQL AB. </td>
	  </tr>

      <tr style="font-size: 13px;">
		<td style="border-bottom:1px solid black">MASS SPECTROMETRY</td>
		<td style="border-bottom:1px solid black">An analytical technique used to characterize the structure of a molecule. During the process of mass spectrometry, the molecule of interest is fragmented and the mass/charge ratio of these fragments are determined via instrumentation. </td>
	  </tr>

	  <tr style="font-size: 13px;">
		<td style="border-bottom:1px solid black">NaOH</td>
		<td style="border-bottom:1px solid black">Sodium hydroxide, a basic chemical used as a control in the experiment. The NaOH will be lethal to the bacteria. </td>
	  </tr>

	  <tr style="font-size: 13px;">
		<td style="border-bottom:1px solid black">NCBI</td>
		<td style="border-bottom:1px solid black">National Center for Biotechnology Information (NCBI) is a US government resource that develops, distributes, supports, and coordinates access to a variety of databases and software for the scientific and medical communities.
		</td>
	  </tr>

	  <tr style="font-size: 13px;">
		<td style="border-bottom:1px solid black">PDB</td>
		<td style="border-bottom:1px solid black">Protein Data Bank (PDB) is a repository of curated 3D biological structures, usually proteins, populated by direct input from an international community of scientists. PDB utilizes different file formats (mmCif/XML) to display protein structure information.. </td>
	  </tr>

	  <tr style="font-size: 13px;">
		<td style="border-bottom:1px solid black">Peptide</td>
		<td style="border-bottom:1px solid black">A small protein usually less than 100 amino acids in length. </td>
	  </tr>

	  <tr style="font-size: 13px;">
		<td style="border-bottom:1px solid black">Perl</td>
		<td style="border-bottom:1px solid black">Perl (short for "Practical Extraction and Report Language") is a highly capable, feature-rich programming language with over 29 years of development. Perl runs on over 100 platforms from portables to mainframes and is suitable for both rapid prototyping and large scale development projects. </td>
	  </tr>

      <tr style="font-size: 13px;">
		<td style="border-bottom:1px solid black">Pseudomonas aeruginosa (PA)</td>
		<td style="border-bottom:1px solid black">A Gram negative rod-shaped bacteria that may be used to assess the properties of the AMP. </td>
	  </tr>

	  <tr style="font-size: 13px;">
		<td style="border-bottom:1px solid black">R</td>
		<td style="border-bottom:1px solid black">R is a language and environment for statistical computing and graphics. It is available as free software, compiles and runs on a wide variety of UNIX platforms.One of R’s strengths is the ease with which well-designed publication-quality plots can be produced, including mathematical symbols and formulae where needed. </td>
	  </tr>

      <tr style="font-size: 13px;">
		<td style="border-bottom:1px solid black">R Studio</td>
		<td style="border-bottom:1px solid black">RStudio is an integrated development environment (IDE) for R. It includes a console, syntax-highlighting editor that supports direct code execution, as well as tools for plotting, history, debugging and workspace management. It is available in open source </td>
	  </tr>

	  <tr style="font-size: 13px;">
		<td style="border-bottom:1px solid black">Staphylococcus aureus (SA)</td>
		<td style="border-bottom:1px solid black">A Gram positive round-shaped bacteria that may be used to assess the inhibitory/lethal properties of the AMP. </td>
	  </tr>

	</table>
	 
   </div>

<%@include file="bodyAnchors.jsp"%>

  <div width="auto" height="100px" id="footerStyle" style="auto;font-size:12px;font-weight:bold;" align="center;">&copy;University Of RhodeIsland | All Rights Reserved | Developed By Amped Team(2020)  
  </div>
 </body>
</html>
<%@include file="common_end.jsp"%>