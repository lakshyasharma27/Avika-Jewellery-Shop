
<%@page import="java.util.ArrayList"%><head>
		<title>Avika Jewellers</title>
		<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="css/style.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
   		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts--->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,700,800,400,600' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Satisfy' rel='stylesheet' type='text/css'>
		<!---//webfonts--->
		<script type="text/javascript">
			
    
		</script>
		
	</head>

<div class="header">

				<div class="container">
				<!-- logo -->
				<div class="logo">
					<a href="index.jsp"><img src="images/avika.png" title="avika" style=" height: 111px; width:250px;"></a>
				</div>
				<script type="text/javascript">
        
		function search(a)
		{
		var ajx;
 
 	   if (window.XMLHttpRequest)
 	   {
 	     ajx=new XMLHttpRequest();
 	   }
 	  else
 	   {
 	     ajx=new ActiveXObject("Microsoft.XMLHTTP");
 	   }
	ajx.onreadystatechange=function()
	{
	  if (ajx.readyState==4 && ajx.status==200)
	  { 
	    document.getElementById("ind").innerHTML=ajx.responseText;
	   }
	}
	ajx.open("GET","search.jsp?ok="+a,true);
	ajx.send();
      return false;
	} 
	
	</script>
				<!-- logo -->
				<!-- cart-info -->
				<div class="cart-info">
					<ul>
					<%String email=(String)session.getAttribute("email");
					if(email==null)
					{%>
					<li><a href="login.jsp">Login</a></li>
					<li><a href="register.jsp">Register</a></li>
					<%}
					else
					{%>
					<jsp:useBean id="t1" class="com.bean.LoginBean" scope="session"/>
					<li><a><%=t1.getEmail() %></a></li>
					<li><a href="logout.jsp">Logout</a></li>
					<%}
					 %>

						<%
						ArrayList al=(ArrayList)session.getAttribute("cartdetail");
						if(al==null){
						%>
						<li style="margin-top: 3px;" class="cartinfo"><a href="showcart.jsp"><span> </span>My bag (0) items</a></li>
						<%}else{
						int count=al.size();
						%>
						<li  style="margin-top: 3px;"	 class="cartinfo"><a href="showcart.jsp"><span> </span>My bag (<%=count%>) items</a></li>
						<%} %>
						<div class="clearfix"> </div>
					</ul>
				</div>
				<!-- /cart-info -->
			</div>
			<!-- header -->
		</div>
		<div class="sub-header">
			<div class="container">
				<!-- top-nav -->
				<div class="top-nav">
					<span class="menu"> </span>
					<ul>
						<li class=""><a href="index.jsp">Home</a></li>
						<li><a href="about.jsp">Company Profile</a></li>
					
						<li><a href="collections.jsp">Collections</a></li>
						<li><a href="whatsnew.jsp">Whats New</a></li>
						<li><a href="club.jsp">Avika Club</a></li>
						<li><a href="store.jsp">Store Location</a></li>
					    <li><a href="contact.jsp">Contact</a></li>
						<div class="clearfix"> </div>
					</ul>
				</div>
				<!-- top-nav -->
				<!-- script-for-nav -->
				<script>
					$(document).ready(function(){
						$("span.menu").click(function(){
							$(".top-nav ul").slideToggle(300);
						});
					});
				</script>
				<!-- script-for-nav -->
				<!-- search-form -->
				<div class="search-form">
					<form onsubmit="return search(aa.value);">
					<input id="aa" type="text"><input type="submit" value="Search" />
				</form>
				</div>

				<div class="clearfix"> </div>
				<!-- /search-form -->
			</div>
		</div>
						<div id="mydiv1">	</div>
		