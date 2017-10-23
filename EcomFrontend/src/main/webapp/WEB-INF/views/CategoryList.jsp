<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page isELIgnored="false"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category List</title>
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
									<span class="glyphicon glyphicon-list-alt"> </span>Category
									
								</h3>
							</div>
							<div class="col-sm-12 col-md-9">
								<div class="col-xs-12 col-sm-12 col-md-12">
									<div class="col-xs-12 col-md-4">
										<label> Search </label>
										<div class="form-group">
											<div class="input-group">
												<input type="text" class="form-control input-md"
													name="search" id="myInput" onkeyup="myFunction()" placeholder="category id">
												
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
									<th>Action</th>
									<th>Category Id</th>
									<th>Category Name</th>
									
									
									
								</tr>
							</thead>
							<tbody>
								<c:forEach var="category" items="${catlist}">
									<tr>
									<td align="center">
										
											 <a 
											href="<c:url value="/admin/dele/${category.cid}"/>">Delete
												</a></td>
										
										<td>${category.cid}</td>
										<td>${category.cname}</td>
										
									
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