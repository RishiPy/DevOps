<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Invoice</title>
</head>
<jsp:include page="header.jsp"></jsp:include>

<body>
<div class="container">
   <div class=" panel panel-heading">
         <h4 class="panel-title">Invoice</h4>
    </div>
     
    <div class="panel-body">
     <form   action="${pageContext.request.contextPath}/Thankyou" method="post">                            
     <div class="form-group">
        <label class="col-md-4 control-label" for="textinput">User Name:</label> ${use.name} 
          </div>
           <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">Phone no. :</label> ${use.phone} 
          </div>
          <div class="form-group">
          <label class="col-md-4 control-label" for="textinput">Address :</label> ${use.address}
          
         </div>
        <div class="form-group">
         <label class="col-md-4 control-label" for="textinput">Total Amount :</label> ${order.totalamt} 
         </div >
         
          <button type="submit" class="btn btn-success btn-lg" style="width:100%;"> Confirm                                        
          </button>
          <br/>
          </form>
          </div>
           </div>                     
</body>

<jsp:include page="footer.jsp"></jsp:include>
</html>