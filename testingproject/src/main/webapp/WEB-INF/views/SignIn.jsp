<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="footer.jsp"></jsp:include>

<header class="page-header">
<h4 style="padding:10px">Sign In Page</h4>
</header>
<div class="container">
<form role="form">
<div class="form-group col-xs-5">
<input type="text" class="form-control" id="name" placeholder="UserName" required>
<input type="password" class="form-control" id="pass" placeholder="Password" required>
</div>


<div class="col-sm-10">
<div class="checkbox">
<label>
<input type="checkbox"> Remember me
</label>
</div>
</div>

<div class="col-sm-10">
<button type="submit" class="btn btn-primary">Sign in</button>
</div>

</div>





            






</form>

 </div>










</table>
</body>





</html>