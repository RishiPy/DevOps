<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

    <%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">

.dropdown-toggle {
   
    
    padding: 16px;
    
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-menu {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}


.dropdown-menu a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-menu {
    display: block;
}

.dropdown:hover .dropdown-toggle{
    background-color: hidden;
}
</style>

</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<a class="navbar-brand" href="${pageContext.request.contextPath}/"> <img
			src="${pageContext.request.contextPath}/resources/images/logo.png"
			 style="position: absolute; top:5px; left: 40px;"
			class="img-responsive" />
		</a>
		
		

 <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
     
    </div>

		
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			
			<ul class="nav navbar-nav navbar-right">

				<li><a href="${pageContext.request.contextPath}/index">Home</a></li>
			
			
			
			
			
			
			
				
				<li class="dropdown"><a id="pro" class="dropdown-toggle"
					data-toggle="dropdown" href="#",style="color:white" >ShopByCategory<span class="caret"></span></a>
					<ul class="dropdown-menu">
					
						 <c:forEach items="${cattlist}" var="cat">
           <li><a href="${pageContext.request.contextPath}/custproduct?cid=${cat.cid}">${cat.cname}</a> </li>
		 
										</c:forEach>
        
					</ul></li>
					
				 
				
				
				
				
				
				
				
				<security:authorize  access="hasRole('ROLE_ADMIN')" >
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="/#/">
			
					Admin</a>
				<ul class="dropdown-menu">
				<li><a href="${pageContext.request.contextPath}/admin/addProduct">Product Management</a></li>
					
					
  <li><a href="<c:url value="/logout" />"> 
          <span class="glyphicon glyphicon-log-out"></span>
        Logout</a></li>
				</ul></li>
				</security:authorize> 
				
				
				

<security:authorize  access="hasRole('ROLE_USER')" >

<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="/#/">User</a>
				
					
				<ul class="dropdown-menu">
				 <c:if test="${pageContext.request.userPrincipal.name != null}">
          Hello : ${pageContext.request.userPrincipal.name} 
           
  <li><a href="<c:url value="/logout" />"> 
          <span class="glyphicon glyphicon-log-out"></span>
        Logout</a></li>
          
        </c:if>
					
				</ul>
				
			
 
          
</li> 

</security:authorize>






 
 
<li><a href="${pageContext.request.contextPath}/login">Login</a></li>
<li><a href="${pageContext.request.contextPath}/RegisterPage">Register</a></li>

 <li><a href="${pageContext.request.contextPath}/Cart"><span class="glyphicon glyphicon-shopping-cart"></span>YourCart</a></li>


<li>			
<div>
<form class="navbar-form navbar-right" role="search">
<div class="form-group">
<input type="text" class="form-control" placeholder="eg.T-shirt">
</div>
<button type="submit" class="btn btn-outline">Search</button>
</form>
</div>
</li>
			</ul>



			
		</div>
	</div>
	</nav>
	
</body>
</html>
