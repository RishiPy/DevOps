<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ page isELIgnored="false"%>
    <jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HomePage</title>
 
 <style>
 .con{
 padding-top:55px;
 }
 
 body  {
    background: url("resources/images/12.png") no-repeat center center fixed;
     -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
   
}
 
 
    h4{
    	font-weight: 600;
	}
	p{
		font-size: 12px;
		margin-top: 5px;
	}
	.price{
		font-size: 30px;
    	margin: 0 auto;
    	color: #333;
	}
	.right{
		float:right;
		border-bottom: 2px solid #4B8E4B;
	}
	.thumbnail{
		opacity:0.70;
		-webkit-transition: all 0.5s; 
		transition: all 0.5s;
	}
	.thumbnail:hover{
		opacity:1.00;
		box-shadow: 0px 0px 10px #4bc6ff;
	}
	.line{
		margin-bottom: 5px;
	}
	
 </style>
 
</head>
<body>



<div class="con">


  <div id="myCarousel" class="carousel slide" data-ride="carousel">
   
    <div class="carousel-inner">
      <div class="item active">
     
        <img src="resources/images/banner2.jpg" alt="Discount"  >
      </div>

      <div class="item">
        <img src="resources/images/banner1.jpg" alt="GroomingOffer" >
      </div>
      <div class="item">
        <img src="resources/images/banner3.jpg" alt="LaptopOffers" >
      </div>
    <div class="item">
        <img src="resources/images/banner4.jpg" alt="Discount On Mobail Accessories" >
      </div>
    
  
   <a class="left carousel-control" href="#myCarousel"  data-slide="prev">
  <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
 
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
</div> 


<h2>Best Deals For Today</h2>
 <div class="container">
	<div class="row">
	
<c:forEach var="product" items="${productlist}">
	
    	<!-- BEGIN PRODUCTS -->
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      			
            <a href="<c:url value="/productDescription/${product.id}"/>"> <img
			src="${pageContext.request.contextPath}/resources/images/${product.id}.png"
			height="50px" width="200px" class="img-responsive"
			alt="Product Image" />
		</a>
      			<h4>${product.productName}</h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>
      			<p>${product.productDesc} </p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price"><i class="fa fa-inr"></i>${product.productPrice}</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					<button class="btn btn-success right" > BUY ITEM</button>
      				</div>
      				
      			</div>
      		
    		</span>
    		</div>
    		
    		</c:forEach>
    		
    		

  		</div>
  		
  		
  		

  		</div>
		
  





</body>
<jsp:include page="footer.jsp"></jsp:include>
</html> 