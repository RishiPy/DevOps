<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page isELIgnored="false"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"
	rel='stylesheet' type='text/css'>
	
	
	
	
</head>
<body>
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
													name="search">
												<div class="input-group-btn">
													<button type="button" class="btn btn-md btn-warning">
														<span class=" glyphicon glyphicon-search"></span>
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<table class="table table-striped table-bordered table-list">
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
										<td align="center"><a 
											href="edit/${product.id}">Edit
											</a>/
											 <a 
											href="delete/${product.id}">Delete
												</a></td>


										<td>${product.id}</td>
										<td>${product.productName}</td>
										
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


</body>
</html>





