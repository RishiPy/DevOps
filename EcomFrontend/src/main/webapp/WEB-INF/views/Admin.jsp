<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<link href="https://afeld.github.io/emoji-css/emoji.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

	<div class="container">
		<div class="page-header">
			<h1>
				Hello Admin<span class="pull-right label label-default"><a href="index"><i
					class="em em-us"></i></a></span>
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

						</ul>
					</div>
					<div class="panel-body">
						<div class="tab-content">

	<div class="tab-pane fade in active" id="tab1default">
<form method="post" action="">
									<h4 class="input-title">Category Id</h4>
									<input class="form-control" type="number" name="id" required><br>
									<h4 class="input-title">Category Name</h4>
									<input class="form-control" type="text" name="name" required><br>

									<Button type="submit" class="btn btn-primary">Submit</Button>
									<Button type="reset" class="btn btn-danger">Cancel</Button>

								</form>
                        
                        
                

							<div class="tab-pane fade" id="tab2default">
								<form method="post" action="<c:url value="/saveCategory"/>">
									<h4 class="input-title">Category Id</h4>
									<input class="form-control" type="number" name="cid" required><br>
									<h4 class="input-title">Category Name</h4>
									<input class="form-control" type="text" name="cname" required><br>

									<Button type="submit" class="btn btn-primary">Submit</Button>
									<Button type="reset" class="btn btn-danger">Cancel</Button>

								</form>


							</div>

							<div class="tab-pane fade" id="tab3default">

							<form method="post" action="">
									<h4 class="input-title">Supplier Id</h4>
									<input class="form-control" type="number" name="sid" required><br>
									<h4 class="input-title">Supplier Name</h4>
									<input class="form-control" type="text" name="supplierName" required><br>

									<Button type="submit" class="btn btn-primary">Submit</Button>
									<Button type="reset" class="btn btn-danger">Cancel</Button>

								</form>



						</div>
					</div>
				</div>
			</div>





		</div>
	</div>

















	<h3>Add Products</h3>
	<a href="addProduct">Product Add</a>

	<h4>View Product List</h4>
	<a href="view">Product List</a>
</body>
</html>