<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
             <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page isELIgnored="false" %>
<jsp:include page="header.jsp"></jsp:include>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
body  {
    background: url("resources/images/12.png") no-repeat center center fixed;
     -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
   
}

.car{
padding-top:70px;
}
</style>
</head>
<body>
<div class="car">
<div class='container'>
    <div class='row' style='padding-top:25px; padding-bottom:25px;'>
        <div class='col-md-12'>
            <div id='mainContentWrapper'>
                <div class="col-md-8 col-md-offset-2">
                   
                  
                    <div class="shopping_cart">
                    
                    <!-- user view starts here -->
                         
                             <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                            <b>User Information</b>
                                        </a>
                                    </h4>
                                </div>
                              
                                <div id="collapseOne" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <span class='payment-errors'></span>
                                         <div class="form-group">
                                         <label class="col-md-4 control-label" for="textinput">User Name:</label> ${user.name} 
                                         </div>
                                          <div class="form-group">
                                         <label class="col-md-4 control-label" for="textinput">Phone no. :</label> ${user.phone} 
                                         </div>
                                         <div class="form-group">
                                         <label class="col-md-4 control-label" for="textinput">Address :</label> ${user.address} 
                                         </div>
                                       
                                        <br/>
                                       
                                    </div>
                                </div>
                            </div>
                            
                            
                            
                            <!-- order summary starts here -->
                            <div class="panel-group" id="accordion">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Review
                                                Your Order</a>
                                        </h4>
                                    </div>
                                    <div id="collapseTwo" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <div class="items">
                                                <div class="col-md-9">
                                                    <table class="table table-striped">
                          
                          
                                                     <tr>
                         
      <c:set var="calc" value="0"></c:set> 
     <c:forEach var="ci" items="${cartDetails}">    
     <c:set var="calc" value="${calc+ci.totalItems*ci.price}"></c:set>
     </c:forEach>  
      <c:forEach var="cart" items="${cartDetails}">
	<div class="row">

						<tr>
							<td data-th="Product">


								<div class="col-sm-2 ">
									<img
										src="${pageContext.request.contextPath}/resources/images/${cart.productId}.png" height="100px" width="100px"  />
								</div>
								
								

							</td>
							<td><h6>${cart.cartProductName}</h6></td>
							<td data-th="Price"><h4><i class="fa fa-inr"></i>${cart.price}</h4></td>
							<td data-th="Quantity"><h4>${cart.totalItems}</h4></td>
							<td data-th="Subtotal" class="text-center"><h4><i class="fa fa-inr"></i>${cart.totalItems*cart.price}</h4></td>
							

						</tr>

					</div>
				</c:forEach>
                                                        </tr>
                                                        
                                                    </table>
                                                </div>
                                                <div class="col-md-3">
                                                    <div style="text-align: center;">
                                                        <h3>Order Total</h3>
                                                        <h3><span style="color:green;"><i class="fa fa-inr"></i>${calc}</span></h3>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                           
                           
                           
                           
                           
                           
                           
                          
                           <form   action="${pageContext.request.contextPath}/invoice" method="post">                            
                           <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                            <b>Payment Information</b>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <span class='payment-errors'></span>
                                        <fieldset>
                                            <legend>What method would you like to pay with today?</legend>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label" for="card-holder-name">Payment Type</label>
                                                <div class="col-sm-9">
                                                <select name="paymentType" id="paymentType" required>
                                                <option label="--Select--" /> 
                                                  
                                                <option value="CreditCard">Credit Card</option>
                                                <option value="DeditCard">Debit Card</option>
                                                 <option value="COD">COD</option>
                                                  
                                                
                                                  </select>
                                                 
                                                </div>
                                            </div>
                                           <input type="hidden" name="total" value="${calc}">
                                               
                                                <div class="form-group">
                                                    <div class="col-sm-offset-3 col-sm-9">
                                                    </div>
                                                </div>
                                        </fieldset>
                                        <button type="submit" class="btn btn-default btn-lg" style="width:100%;">Pay
                                            Now
                                        </button>
                                        <br/>
                                       
                                    </div>
                                </div>
                            </div>
                            </form>
                           
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