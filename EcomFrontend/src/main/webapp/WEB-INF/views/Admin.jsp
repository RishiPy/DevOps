<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page isELIgnored="false"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
<style>
.cas{
padding-top:20px;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="cas">
	<div class="container">
		<div class="page-header">
			<h1>
				Hello Admin<span class="pull-right label label-default"></span>
			</h1>
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="panel with-nav-tabs panel-default">
					<div class="panel-heading">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#tab1default" data-toggle="tab">Product</a></li>
							<li><a href="#tab2default" data-toggle="tab">Category</a></li>
							<li><a href="#tab3default" data-toggle="tab">Supplier</a></li>
							<li class="dropdown"><a href="#" data-toggle="dropdown">View<span
									class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="view">Products</a></li>
									<li><a href="sup">Suppliers</a></li>
									<li><a href="cat">Categories</a></li>
								</ul></li>

						</ul>
					</div>
					<div class="panel-body">
						<div class="tab-content">




							<div class="tab-pane fade in active" id="tab1default">
								<form method="post" action="<c:url value="/admin/saveProduct"/>"  enctype="multipart/form-data">
									<h4 class="input-title">Product Name</h4>
									<input class="form-control" type="text" name="productName"
										required><br>
									<h4 class="input-title">Product Quantity</h4>
									<input class="form-control" type="text" name="productQuantity"
										required><br>
										
							<h4 class="input-title">Product Description</h4>
									<input class="form-control" type="text" name="productDesc"
										required><br>
									<h4 class="input-title">Product Price</h4>
									<input class="form-control" type="text" name="productPrice"
										required><br/>
										
								
			  <select class="form-control" name="categoryid" id="proCat">
										<option value="">Category</option>
										<c:forEach items="${catlist}" var="cate">
										<option value="${cate.cid}">${cate.cname}</option>
										</c:forEach>
										
										</select>  <br>	 					
			
			
								
										
									 <select 
										class="form-control" id="proSup" name="supplierid">
										<option value="">Supplier</option>
										<c:forEach items="${suplist}" var="supl">
										<option value="${supl.sid}">${supl.sname}</option></c:forEach>
										
										</select>
										<br> 


									<div class="fileinput fileinput-new" data-provides="fileinput">
									
									
										<input class="form-control" type="file" name="image" id="image"
											 placeholder="Select image">
									</div>

									<br>

									<Button type="submit" class="btn btn-primary">Submit</Button>
									<Button type="reset" class="btn btn-danger">Cancel</Button>

								</form>
							</div>












							<div class="tab-pane fade" id="tab2default">
								<form method="post" action="<c:url value="/admin/saveCategory"/>">

									<h4 class="input-title">Category Name</h4>
									<input class="form-control" type="text" name="cname" required><br>

									<Button type="submit" class="btn btn-primary">Submit</Button>
									<Button type="reset" class="btn btn-danger">Cancel</Button>

								</form>


							</div>

							<div class="tab-pane fade" id="tab3default">

								<form method="post" action="<c:url value="/admin/saveSupplier"/>">

									<h4 class="input-title">Supplier Name</h4>
									<input class="form-control" type="text" name="sname" required><br>

									<Button type="submit" class="btn btn-primary">Submit</Button>
									<Button type="reset" class="btn btn-danger">Cancel</Button>

								</form>



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