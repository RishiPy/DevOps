<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>


</head>



<style>
.container{
padding-top:60px;
}

.form_bg {
    background-color:#eee;
    color:lightgray;
    padding:20px;
    border-radius:10px;
    position: relative;
    border:1px solid #fff;
    margin:0
     auto;
    top: 3;
    right: 0;
    bottom: 90;
    left: 700;
    width: 320px;
    height: 280px;
}

.align-center {
    
color: white;

font-weight: bold;
    text-align:center;
}

</style>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="container">
    <div class="row">
        <div class="form_bg">
        
            <form action="<c:url value='login'/>"method="POST"> 
                 <h2 class="text-center">Login Please</h2>
                 
                <br/>
                <div class="form-group">
                    <input type="text" name="username" class="form-control" id="userid" placeholder="User id">
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control" id="pwd" placeholder="Password">
                
                    </div>
                    
                    <br/>
                   <div class="align-center">
                   
                <center> <button type="submit" class="btn btn-danger" id="login">Login</button></center>
                
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
            </form>
        </div>
    </div>
</div>

</body>
</html>
 