<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="asset/css/style-rec.css">

</head>
<body class="h-100">

	<div class="container-fluid h-100  container-more">
		<div class="w-50">
			
		</div>
		
		<image class="position-absolute w-100" id="img" alt="background" src="asset/icon/DSC.png"/>
		
		<div class="row h-100 d-flex align-items-center justify-content-center">
			
			<div class="col-sm-6 h-100 bg-img w-100 col-more">
				<div class="head-line"></div>
				<i class="d-flex justify-content-center align-items-center mt-3
					fa fa-group text-white goo" id="group-icon"></i> <br/>
				
				<div class="box-style">
					
					<h1 class=" d-flex justify-content-center align-items-center text-white">Sign
							in</h1> <br/>
					<c:choose >
						<c:when test="${error == '1'}">
							<div class="text-danger d-flex justify-content-center align-items-center mb-3">
								<strong style="font-size: 20px;">Please enter your username and password</strong>
							</div>
						</c:when>
						<c:when test="${error == '2'}">
							<div class="text-danger d-flex justify-content-center align-items-center mb-3">
								<strong style="font-size: 20px;">Username or password is invalid</strong>
							</div>
						</c:when>
						
					</c:choose>
					
				<div class="d-flex justify-content-center align-items-center text-white">
					<form action="login.html" method="post">
						<input type="hidden" name="action" value="login">
						<div class="form-group input-group d-flex justify-content-center align-items-center w-100">
							<div class="input-group-prepend icon-group-div" 
							style="">
      							 <i class="fa fa-user input-group-text text-white icon-group-style" 
      							 style=""></i>
    						</div>
							<input class="form-control text-white input-style" 
								style="font-size: 20px;" id="username"
								type="text" name="username" placeholder="Enter Username"> <br> 
						</div>
						<div class="input-group form-group d-flex justify-content-center align-items-center w-100">
							<div class="input-group-prepend icon-group-div"  
								style="">
      							 <i class="fa fa-lock input-group-text text-white icon-group-style"  
      							 	style=""></i>
    						</div>
							<input class="form-control text-white abc" 
								style="font-size: 20px;" id="password"
								type="password" name="password" placeholder="Enter password">
						</div>
						
						<div class="d-flex justify-content-center align-items-center">
							<input class="btn btn-primary w-100 btn-style" id="submit-btn" type="submit" value="Login" 
								style="font-size: 20px;"/>
						</div>
					</form>
				</div>
				</div>	
			</div>	
		</div>
	</div>
</body>

</html>