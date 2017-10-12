<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HomePage</title>
 
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>




<div class="Car">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    Indicators 
    
    Wrapper for slides
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
</body>
</html> 