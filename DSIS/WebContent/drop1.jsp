<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import=" sis.db.*"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.util.ArrayList"%>
<%@include file="/ajaximp.jsp" %>



<!-- Container for the entire page -->
<div class="panel panel-primary">

	<!-- Screen heading -->
	<div class="panel-heading" align="center">
		<h3>Attendance Sheet</h3>
	</div>
	<div class="panel-body" align="center">

		<!-- Input form -->
		<form class="form-horizontal" method="post"
			enctype="multipart/form-data" name="myform" id="myform">
			<fieldset>
				<!-- 1st row of form -->
				<div class="row">
					<!-- 1st column of 0th row -->
					<div class="col-lg-5" align="right">
						<b>Semester:</b>
					</div>
					<div class="col-lg-1"></div>
					<div class="col-lg-4" align="left">
						<select class="form-control" name="select"
							onchange="ajaxSem2(this.value)" 
							id="select" required>
							<option value="1" selected>Sem 1</option>
							<option value="2" selected>Sem 2</option>
							<option value="3" selected>Sem 3</option>

						</select>
					</div>
				</div>
		</form>
		<br>
		<div class="col-lg-12" id="showCourse2" align="right"></div>
		<br>
		<div class="col-lg-12" id="show2" align="right"></div>
	</div>
</div>
