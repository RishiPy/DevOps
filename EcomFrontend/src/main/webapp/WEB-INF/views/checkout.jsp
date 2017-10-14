<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>

<%@ page isELIgnored="false"%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Checkout</title>
<style>
.car{
padding-top:50px;
}
</style>
</head>
<body>
<div class="car">
<div>${user.name }</div>
Address: ${user.address}
<div><table id="cart" class="table table-hover table-condensed">
			<thead>
				<tr>
					<th style="width: 50%">Product</th>
					<th style="width: 10%">Price</th>
					<th style="width: 8%">Quantity</th>
					<th style="width: 22%" class="text-center">Subtotal</th>
					<th style="width: 10%"></th>
				</tr>
			</thead>
			<tbody>

				<c:forEach var="c" items="${cartDetails}">
					<div class="row">

						<tr>
							<td data-th="Product">


								<div class="col-sm-2 ">
									<img
										src="${pageContext.request.contextPath}/resources/image/${c.productId}.png" height="100px" width="100px"  />
								</div>
								<div class="col-sm-10">
									<h3>${c.cartProductName}</h3>
									<p>${c.cartProductDescription}</p>
								</div>

							</td>
							<td data-th="Price">${c.price}</td>
							<td data-th="Quantity">${c.totalItems}</td>
							<td data-th="Subtotal" class="text-center">${c.finalAmount}</td>
						</tr>

					</div>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr class="visible-xs">
					<td class="text-center"><strong>......</strong></td>
				</tr>
				<tr>
					<td><a href="${pageContext.request.contextPath}/"
						class="btn btn-warning"><i class=""></i> Continue Shopping</a></td>
					<td colspan="2" class="hidden-xs"></td>
					<td class="hidden-xs text-center"><strong>Total $1.99</strong></td>
					<td><a
						href="${pageContext.request.contextPath}/CheckOut"
						class="btn btn-success btn-block">Checkout <i
							class="fa fa-angle-right"></i></a></td>
				</tr>
			</tfoot>
		</table></div>
		</div>
</body>
</html>