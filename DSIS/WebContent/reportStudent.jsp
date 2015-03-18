<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   

    <title>SIS</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/simple-sidebar.css" rel="stylesheet">

    <!-- HTML5  and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="body">

    <div id="wrapper">

      <%@include file="/Studentsidebar.jsp" %>
   <div class="container">
   <div class="center"><h4><label>Name: Geeta Singh Rajput</label></h4><h4><label>RollN0: MT2014038</label></h4>
   </div>
          <h5>Report generator</h5>
          
          <form action="report">
  <div class="form-group">
  <div class="row">
	<label for="interest" class="col-sm-2 control-label">Enter Interest: </label>
	<div class="col-sm-3">
	<select name="interest" class="form-control"  STYLE="width: 200px">
        <s:iterator value="arr_interest">
        <option value="<s:property value="Interest"/>"><s:property value="Interest"/></option>
		
		</s:iterator>
      </select>
      </div>
      <div class="col-sm-3">
      <button type="submit" class="btn btn-default" disabled>Show Students</button>
     </div>
      </div><div class="row">
     <lable> Details of Student having intesert= "<s:property value="interest"/>" is below:</lable></div></div>
      <table class="table" >
    <thead>
      <tr>
      <th class="sco">Serialn0 </th>
        <th class="scode">Student Id </th>
        <th class="s_name">Student Name </th>
        <th class="grade">photo </th>
		<th class="result">Semester </th>
		<th></th>
		<th></th>
      </tr>
    </thead>
    <%int i=1; %>
    <s:iterator value="name">
    <s:set name="webFramework" value="valid"/> 
    <s:if test="%{#webFramework=='false'}">
     <script type="text/javascript">
     alert("You are not yet enrolled for this semester"); 
     </script> 
     </s:if>
  <tr> <th class="sco"><s:property value="no"/> </th> 
  <th class="scode"> <s:property value="S_ID"/></th>
        <th class="s_name"> <s:property value="frndtry_name"/></th>
        <th class="grade"> <img src= <s:property value="destpath"/> height="120px" width="120px"></th>
		<th class="result"> <s:property value="frnd_Address"/></th>
      </tr>
      </s:iterator>
    </table>
      
      </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </div>
    </div>
   
  </body>
   
        <!-- /#page-content-wrapper -->

    
    <!-- /#wrapper -->
                 
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>
   
 
</html>

        