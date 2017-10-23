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
 body  {
    background: url("resources/images/backi.jpg") no-repeat center center fixed;
     -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
   
}
 
.con
 
  {
  padding-top:70px;
  }
  
    
	
	p{
		font-size: 12px;
		margin-top: 5px;
	}
	.price{
		font-size: 20px;
    	
    	color: #333;
	
	.thumbnail{
		opacity:0.70;
		-webkit-transition: all 0.5s; 
		transition: all 0.5s;
        
   width:auto;
   height:340px;;

	}
	
	
	
	
 
 
 
 
 
 
  </style>



</head>





<body>
<jsp:include page="header.jsp"></jsp:include>


<h3>Products</h3>
<div class="con">
<div class="container">

	
      <div class="row">
	
<c:forEach var="product" items="${prolist}">
	
    	
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      			
            <a href="<c:url value="/productDescription/${product.id}"/>"> <img style="width: 200px; height: 200px"
			src="${pageContext.request.contextPath}/resources/images/${product.id}.png"
			 class="img-responsive"
			alt="Product Image" />
		</a>
      			
      			
      			
      			
      			
      			
      			<div class="row">
      				<div class="col-md-7 col-sm-8">
      					${product.productName}
      				</div>
      				<div class="col-md-5 col-sm-4">
      					<p class="price"><i class="fa fa-inr"></i>${product.productPrice}</p>
      				</div>
      				
      			</div>
      		
    		</span>
    		</div>
    		
    		</c:forEach>
    		
    		

  		</div>
  		
  		
  		

  		</div>
		
 
      
      
      
      
      
      
      
      
      
      

    <%-- 
        <div class="col-sm-3">
       
      
        <c:forEach var="product" items="${prolist}">
       
        	<article class="col-item">
        		
        		
        	
        	
        			 <a href="<c:url value="/productDescription/${product.id}"/>">   <img src="${pageContext.request.contextPath}/resources/images/${product.id}.png" height="400px" width="400px" class="img-responsive" alt="Product Image" />  </a>
        		
        		<div class="info">
        			<div class="row">
        				<div class="price-details col-md-6">
        					
        					<h5>${product.productName}</h5>
        					<span class="price-new"> <i class="fa fa-inr"></i>${product.productPrice}</span>
        				</div>
        			</div>
        			
        		</div>
        		
        	</article>
        	
        	</c:forEach>
        	
        	
        </div>
      
 --%>	
	</div>
	

</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>