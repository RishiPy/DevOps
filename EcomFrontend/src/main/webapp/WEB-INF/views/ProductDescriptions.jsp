<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

	<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products Details</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/productDescription.css"/>

   
   
<style type="text/css">
 
      
        .imgBox{width: 300px;height: 300px;border: 1px solid #222;}
    </style>
    
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/imgZoom.js"></script>

</head>
<body>



<div class="car">
 <form action="${pageContext.request.contextPath}/addtocart/ ${product.id}" method="post" modelAttribute="car"> 
<div class="container">
  

	<div class="row">
   <div class="col-xs-4 item-photo">
   
                   <div class="imgBox"> <img style="max-width:100%;" src="${pageContext.request.contextPath}/resources/images/${id}.png" height="300px" data-origin="${pageContext.request.contextPath}/resources/images/${id}.png" />
               </div>
                </div>
                <div class="col-xs-5" style="border:0px solid gray">
                   
                    <h3>${product.productName}</h3>    
                   

                    
                    <h4 class="title-price"><small>Price</small></h4>
                    <h3 style="margin-top:0px;"> <i class="fa fa-inr"></i>${product.productPrice}</h3>

                  
                    <div class="section">
                        <h4 class="title-attr" style="margin-top:15px; " ><small><b>COLOR</b></small></h4>                    
                        <div>
                            <div class="attr" style="width:25px;background:#5a5a5a;"></div>
                            <div class="attr" style="width:25px;background:white;"></div>
                        </div>
                    </div>
                   
                   
                    <div class="section" style="padding-bottom:20px;">
                        <h4 class="title-attr"><small><b>Quantity</b></small></h4>                    
                        <div>
                      
                            <div class="btn-minus"><span class="glyphicon glyphicon-minus"></span></div>
                            <input value="0" name="quantity"/>
                            <div class="btn-plus"><span class="glyphicon glyphicon-plus"></span></div>
                        </div>
                    </div>           
                    
                    <input class="btn btn-success" type="submit" value="AddToCart">
                                        
                         
                      
                   
                    <div class="section" style="padding-bottom:20px;">
                    <div class="btn-group">
                       <!--  <button class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>AddToCart</button> -->
                   
                     <form method="post" action="<c:url value="/gotocart/${id}"/>">
                  
                   
                  
                   ${quantity}
									    
								</form>
                     
                     
                     
                     
                     
                        
                        <h4><a href="#">  <span class="glyphicon glyphicon-share-alt"></span>Continue Shopping</a></h4>
                   </div>
                    </div>                                        
                </div>                            
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                <div class="col-xs-9">
                  
                    <div style="width:100%;border-top:1px solid silver">
                        <p style="padding:15px;">
                           
                           Description :-
                            <small>
                        ${product.productDesc}
                            </small>
                        </p>
                       
                    </div>
                </div>		
	</div>
</div>
  </form>

</div>
<script type="text/javascript">
$(document).ready(function(){
	   

    //-- Click on QUANTITY
    $(".btn-minus").on("click",function(){
        var now = $(".section > div > input").val();
        
        if ($.isNumeric(now)){
            if (parseInt(now) -1 > 0){ now--;}
            $(".section > div > input").val(now);
        }else{
            $(".section > div > input").val("1");
        }
    })            
    $(".btn-plus").on("click",function(){
        var now = $(".section > div > input").val();
       var limit=${product.productQuantity}
        if ($.isNumeric(now) && now<limit){
            $(".section > div > input").val(parseInt(now)+1);
        }else{
        	alert("out of stock")
            $(".section > div > input").val("0");
        }
    })                        
}) </script>



 <script type="text/javascript">
        $('.imgBox').imgZoom({
            boxWidth: 400,
            boxHeight: 400,
            marginLeft: 5,
            origin: 'data-origin'
        });
    </script>
 </body>
<jsp:include page="footer.jsp"></jsp:include>

</html>