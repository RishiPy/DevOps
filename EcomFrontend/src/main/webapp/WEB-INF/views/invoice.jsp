<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>

<title>Invoice</title>
<style type="text/css">
 body  {
    background: url("resources/images/backi.jpg") no-repeat center center fixed;
     -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
   
}
 
.car{
padding-top:50px;
padding-bottom:40px;
}
.container{
padding-top:20px;
}

#main{
    padding:12px;
    
}
.offset-margin{
    margin-top:-10px;
}
td{
    padding-left:5px;
}
.description{
    min-height:120px;
    margin-bottom:90px;
}
.blank{
    border-top:solid 1px #eee;
    border-left:solid 1px #eee;
    min-height:120px;
    padding:0px !important;
}
.panel-body{
    padding-bottom:0 !important;
}
.content{
   margin-top:40px; 
   padding-bottom:20px !important;
}
.table{
    margin-bottom: 0px !important;
}


</style>
</head>
<jsp:include page="header.jsp"></jsp:include>

<body>



<div class="car">
<form   action="${pageContext.request.contextPath}/Thankyou" method="post">
<button type="submit" class="btn btn-default " style="width:100%; "><strong> Confirm to deliver your order</strong>                                    
          </button>
		</form>
		
<div class="container">


<div class="row">


	<div class="col-lg-8 col-md-8 col-sm-8 col-lg-offset-2">
		
		
		
		
		<div class="panel panel-default main">
 
 
 
		    <div class="panel-body">
		  
		        <div class="row">
		            
		            <div class="col-lg-9 col-md-9 col-sm-9">
		            
		            <div>
  <p><strong>Shopper.com</strong> Computer Generated Invoice</p>
	</div>  
		            
		                <h3>From</h3>
		                <p>Shopper ltd.</p>
		                <p class="offset-margin">713,Preet Vihar </p>
		                <p class="offset-margin"> Delhi-110006,India </p>
		                <p class="offset-margin">Phone : (123) 456-7890</p>
		                <p class="offset-margin">Email : shopper_ltd@gmail.com</p>
		                
		            </div>
		            
		            <div class="col-lg-3 col-md-3 col-sm-3">
		                <h1>Invoice</h1>
		            </div>
		            
		        </div>
		        <!--row-->
		        
		        <hr>
		        <div class="row">
		            <div class="col-lg-9 col-md-9 col-sm-9">
		                <h3>To</h3>
		                <p><label>Buyer :</label> ${use.name}</p>
		                <p class="offset-margin"><label>Address :</label> ${use.address}</p>
		                <p class="offset-margin"><label>Phone :</label> ${use.phone}</p> 
		                
		                
		            </div>
		            
		            <div class="col-lg-3 col-md-3 col-sm-3">
		                <p><label>Invoice#:</label> 0068913</p>
		                <p><label>Invoice Date: </label>26/12/20..</p>
		                <p><label>Payment type :</label> ${order.paymentType}</p>
		                
		            </div>
		        </div>
		        <!--row-->
		        
		        
		        <div class="row">
		            <div class="col-lg-10 col-md-10 col-sm-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 content">
		                <div class="panel panel-default">
		                   
		                    <div class="panel-body">
		                        
		                        <div class="row">
    		                        <div class=" col-lg-12 col-md-12 col-sm-12 description">
            		              <table class="table">
                                   <thead>
								<tr>
									
									<th>Products Name</th>
									<th>Quantity</th>
									<th>Price-Single product</th>
									<th>Total</th>
									
									
									
								</tr>
							</thead>
							<tbody>
								<c:forEach var="pro" items="${cart}">
									<tr>
									
											
										<td>${pro.cartProductName}</td>
										<td>${pro.totalItems}</td>
										<td><i class="fa fa-inr"></i>${pro.price}</td>
										<td><i class="fa fa-inr"></i>${pro.finalAmount}</td>
										
									
									</tr>
								</c:forEach>
							</tbody>

                                      
                                      </table>
		                       
    		                       
    		                       <div class="col-lg-8 pull-left" style="border-top:solid #ddd 1px;"></div>
    		                        
        		                        <div class="col-lg-4 col-md-4 col-sm-4 pull-right blank">
        		                            
        		                  <table class="table table bordered">
        		                      <tbody>
        		                         <tr>
		                                    <td><label>Subtotal:</label><span class="pull-right"><i class="fa fa-inr"></i>${order.totalamt}</span></td>
		                                </tr>
		                                <tr>
		                                    <td><label>Final Amount:</label><span class="pull-right"><i class="fa fa-inr"></i>${order.totalamt}</span></td>
		                                </tr>
		                                <tr>
		                                    <td><label>Amount Paid:</label><span class="pull-right"><i class="fa fa-inr"></i>${order.totalamt}</span></td>
		                                </tr>
		                              <tr style="background-color:#eee;">
		                                    <td><label>Amount Due:</label><span class="pull-right"><i class="fa fa-inr"></i>0.00</span></td>
		                                </tr>
        		                      </tbody>

		                            </table>
        		                        </div>
    		                        </div>
		                        <!--row-->
		                    </div>
		                    
		                </div>
		            </div>
		        </div>
		        
		        
		    </div>
		    
		</div>
		 
	</div>
</div>

</div>
</div>
</div>







           
           
           
                     
</body>

<jsp:include page="footer.jsp"></jsp:include>
</html>