<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page isELIgnored="false"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier List</title>
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
									<span class="glyphicon glyphicon-list-alt"> </span>Suppliers
									
								</h3>
							</div>
							<div class="col-sm-12 col-md-9">
								<div class="col-xs-12 col-sm-12 col-md-12">
									<div class="col-xs-12 col-md-4">
										<label> Search </label>
										<div class="form-group">
											<div class="input-group">
												<input type="text" class="form-control input-md"
													name="search" id="myInput" onkeyup="myFunction()" placeholder="supplier name">
												
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
									<th>Supplier Name</th>
									<th>Supplier Id</th>
									
									
								</tr>
							</thead>
							<tbody>
								<c:forEach var="supplier" items="${suplist}">
									<tr>
									<td align="center">
										
											 <a 
											href="<c:url value="/admin/del/${supplier.sid}"/>">Delete
												</a></td>
									<td>${supplier.sname}</td>
										<td>${supplier.sid}</td>
										
									
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



<script>

function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}

</script>



</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>