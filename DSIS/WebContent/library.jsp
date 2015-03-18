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
 
  <h4>LIBRARY</h4>
   <table class="table" >
    <thead>
      <tr>
        <th class="Book_name">Book Name </th>
        <th class="Issue_Date">Issue Date </th>
        <th class="Return_Date">Return Date </th>
		<th class="Fine">Fine </th>
		<th>             </th>
		<th></th>
      </tr>
    </thead>
    <s:iterator value="book_name">
   <tr>
        <th class="Book_name"><s:property value="Book_name"/></th>
        <th class="Issue_Date"><s:property value="Issued_Date"/></th>
        <th class="Return_Date"> <s:property value="Return_Date"/></th>
		<th class="Fine"> <s:property value="Fine"/></th>
      </tr></s:iterator>
    </table>
  
   
   </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script></div></div>
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

