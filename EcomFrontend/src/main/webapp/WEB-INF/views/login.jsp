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
 body  {
    background: url("resources/images/backi.jpg") no-repeat center center fixed;
     -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
   
}
 
  
.car{
padding-top:60px;
}


.form_bg {
    
    color:black;
    padding:20px;
    
    position: relative;
    
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

<div class="car">
<div class="container">
    <div class="row">
        <div class="form_bg">
        
            <form action="<c:url value='login'/>"method="POST"> 
                 <h2 class="text-center">Login Please</h2>
                 
                <br/>
                <div class="form-group">
                    <input type="text" name="username" class="form-control" id="userid" placeholder="email id">
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control" id="pwd" placeholder="Password">
                
                    </div>
                    
                    <br/>
                   <div class="align-center">
                   
                <center> <button type="submit" class="btn btn-danger" id="login">Login</button></center>
                
                    </div>
                   
            </form>
        </div>
    </div>
</div>
</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
 