<script>
function loadattendancesheet()
{
	$('#center').load('./ajeax.jsp');
}

function ajaxCourses2(cname)
{
	//alert("im here1");
	
	var xmlhttp;
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
		xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
			 console.log(xmlhttp.responseText);
		     document.getElementById("show2").innerHTML=xmlhttp.responseText;
		    //event.preventDefault();		   
	    }
	  }
	xmlhttp.open("POST","showstudent2?cname="+cname,true);
	xmlhttp.send();
	return true;
	// event.preventDefault();
	//event.preventDefault();
}

function ajaxSem2(select)
{
	//alert(semname);
	
	var xmlhttp;
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
			 console.log(xmlhttp.responseText);
		    document.getElementById("showCourse2").innerHTML=xmlhttp.responseText;
		    //event.preventDefault();
		   
	    }
	  }
xmlhttp.open("GET","ShowSem2?select="+select,true);
	xmlhttp.send();
	return true;
	// event.preventDefault();
	//event.preventDefault();
}
</script>