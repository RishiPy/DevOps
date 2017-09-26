
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form modelAttribute="cmd" method="post" action="/EcomFrontend/Save">    
        <table >    
        <tr>  
         <td>Product Id : </td>
         <td><form:input  path="id"  readonly="true" style="border:none"/></td>  
         </tr>   
         <tr>    
          <td>Product Name : </td>   
          <td><form:input path="productName"  /></td>  
         </tr>    
         <tr>    
          <td>Quantity :</td>    
          <td><form:input path="productQuantity" /></td>  
         </tr>   
         <tr>  
          <tr>    
          <td>Description :</td>    
          <td><form:input path="productDesc" /></td>  
         </tr>   
         <tr> 
          <tr>    
          <td>Price :</td>    
          <td><form:input path="productPrice" /></td>  
         </tr>   
         <tr>  
                   
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form> 
</body>
</html>