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
          <h5>BirthPlace</h5>
          
          <form action="BirthPlace" >
          <div class="form-group">
          <div class="row">
   <div class="col-sm-3">
	
		<input type="text" class="form-control" name="birth" placeholder="ENTER Student ID" disabled/>
      </div>
      
      <div class="col-sm-3">
      <button type="submit" class="btn btn-default"  >birth place</button>
      </div>
      </div>
      </div>
      <table class="table" >
    <thead>
      <tr>
        <th class="scode">S.N0</th>
        <th class="s_name">Student Id </th>
        <th class="grade">Studen name </th>
		<th class="result">Semester </th>
		<th class="link">Add Friend</th>
		<th></th>
		<th></th>
      </tr>
    </thead>
    
    <s:iterator value="name">
    <s:set name="webFramework" value="valid"/> 
    <s:if test="%{#webFramework=='false'}">
     <script type="text/javascript">
     alert("You are not yet enrolled for this semester"); 
     </script> 
     </s:if>
  <tr> <th class="scode"><s:property value="no"/></th>
        <th class="s_name"> <s:property value="S_ID"/></th>
        <th class="grade"> <s:property value="frndtry_name"/></th>
          <th class="result"> <s:property value="frnd_Address"/></th>
		<th class="link">  <a href="BirthPlace?param1=<s:property value="S_ID"/>">Add freind</a></th>
      </tr>
      </s:iterator>
    </table>
      
      </form>
      
      
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
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

        