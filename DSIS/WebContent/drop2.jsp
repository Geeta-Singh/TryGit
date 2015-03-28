<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags" %>

	<div class="row">
		<div class="col-lg-5" align="right">
			<b>Course Name:</b>
		</div>
		<div class="col-lg-1"></div>
		<div class="col-lg-4" align="left">

			<select class="form-control" name="iname" placeholder="subject name"
				id="iname" required>
				<option value="default" selected>Select below</option>
				<s:iterator value="cname">
					<option value="<s:property/>"> <s:property/> </option>
				</s:iterator>
			</select>

		</div>
	</div>
