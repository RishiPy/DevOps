<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page isELIgnored="false"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product List</title>
 <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/search.js"></script>

	<style>
.car{
padding-top:60px;
}
</style>
	
	
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
<div class="car">
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="panel panel-default panel-table">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-3">
								<h3 class="text-center pull-left" style="padding-left: 20px;">
									<span class="glyphicon glyphicon-list-alt"> </span>Products
									
								</h3>
							</div>
							<div class="col-sm-12 col-md-9">
								<div class="col-xs-12 col-sm-12 col-md-12">
									<div class="col-xs-12 col-md-4">
										<label> Search </label>
										<div class="form-group">
											<div class="input-group">
												<input type="text" class="form-control input-md"
													name="search" id="myInput" onkeyup="myFunction()" placeholder="product id">
												
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<table class="table table-striped table-bordered table-list" id="myTable">
							<thead>
								<tr>
									<th class="col-sm-2"><em class="fa fa-cog"></em></th>
									<th>Product Id</th>
									<th>Product Name</th>
									<th>Product Quantity</th>
									<th>Product Description</th>
									<th>Product Price</th>
									<th>Product Supplier</th>
									<th>Product Category</th>
									<th>Product Image</th> 
									
								</tr>
							</thead>
							<tbody>
								<c:forEach var="product" items="${prolist}">
									<tr>
										<td align="center">
										<a href="<c:url value="/admin/edit/${product.id}"/>" >Edit</a>
											
											/
											 <a 
											href="<c:url value="/admin/delete/${product.id}"/>">Delete
												</a></td>

										<td>${product.id}</td>
										<td> <a style="text-decoration:none;" href="<c:url value="/productDescription/${product.id}"/>">${product.productName}</a></td>
										
										<td>${product.productQuantity}</td>
										<td>${product.productDesc}</td>
										<td>${product.productPrice}</td>	
																			
										<td>${product.supplier.sname}</td>										
										<td>${product.category.cname}</td>
										
										 <td>
										
										 <img src="${pageContext.request.contextPath}/resources/images/${product.id}.png" height="70px" width="70px">
										
										 </td>
										
									</tr>
								</c:forEach>
							</tbody>


						</table>

					</div>

				</div>
			</div>
		</div>
	</div>

</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>





