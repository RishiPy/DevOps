<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%@ page isELIgnored="false"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products Details</title>

<style>
.container
 
  {
  padding-top:70px
  }
  </style>



</head>





<body>
<jsp:include page="header.jsp"></jsp:include>



<div class="container">
<table>
<tbody>
<c:forEach var="product" items="${prolist}">
									
										<tr>
										<td>${product.productName}</td>
										
										
										<td>${product.productPrice}</td>	
																			
										
										<td>
										 <img src="${pageContext.request.contextPath}/resources/images/${product.id}.png" height="400px" width="400px">
										
										 </td>
										 </tr>
									
								</c:forEach>


</tbody>

</table>
</div>
</body>
</html>