<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

    <%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
  <style>
  .nav.navbar-nav li a {
    color: white;
    }
    
    .navbar-nav > li > .dropdown-menu { background-color: #FF0000; }
 
 
 
 
 
 
 
 
 
  </style>

</head>
<body>

<div class="container">
<div class="row">
<div class="navbar navbar-fixed-top" style="background-color:#e53935;" role="navigation">

<div>
<form class="navbar-form navbar-right" role="search">
<div class="form-group">
<input type="text" class="form-control" placeholder="eg.T-shirt">
</div>
<button type="submit" class="btn btn-outline">Search</button>
</form>
</div>



<div>
<ul class="nav navbar-nav navbar-right">
<li><a href="${pageContext.request.contextPath}/index">Home</a></li>

 <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">ShopByCategories<span class="caret"></span></a>
          <ul class="dropdown-menu" >
           <c:forEach items="${cattlist}" var="cat">
           <li><a href="${pageContext.request.contextPath}/custproduct?cid=${cat.cid}">${cat.cname}</a> </li>
		 
										</c:forEach>
           
          </ul>
          
            </li> 
          
      
          
          
          
          
          
      
        
        
        
        
    <!--   
<li><a href="${pageContext.request.contextPath}/admin/addProduct">Admin</a></li>

 -->  
<security:authorize  access="hasRole('ROLE_ADMIN')" >
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="/#/"><span
					class="glyphicon glyphicon-user"></span>
			
					<span class="caret"></span></a>
				<ul class="dropdown-menu">
				<li><a href="${pageContext.request.contextPath}/admin/addProduct">Product Management</a></li>
					
				</ul></li>
				</security:authorize> 


<li> 
  <c:if test="${pageContext.request.userPrincipal.name != null}">
          Hello : ${pageContext.request.userPrincipal.name} <%--  ${pageContext.request.remoteUser} --%>
           
            <li><a href="<c:url value="/logout" />"> 
          <span class="glyphicon glyphicon-log-out"></span>
        Logout</a></li>
        </c:if>
          
</li> 




<%-- <li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="/#/"><span
					class="glyphicon glyphicon-user"></span>
			
					<span class="caret"></span></a>
				<ul class="dropdown-menu">
				
				
				   
            <li>${pageContext.request.userPrincipal.name}<a href="<c:url value="/logout" />"> 
          <span class="glyphicon glyphicon-log-out"></span>
        Logout</a></li>	
        
				</ul></li>
 --%>


 
                   
             










<%--  <li><a href="${pageContext.request.contextPath}/gotocart/${id}"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
 --%>
<li><a href="${pageContext.request.contextPath}/login">Login</a></li>
<li><a href="${pageContext.request.contextPath}/RegisterPage">Register</a></li>

 <li><a href="${pageContext.request.contextPath}/Cart"><span class="glyphicon glyphicon-shopping-cart"></span>YourCart</a></li>
</ul>
</div>
 

</div>
</div>
</div>
























</body>
</html>