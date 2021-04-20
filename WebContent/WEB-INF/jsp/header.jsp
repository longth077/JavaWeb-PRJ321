
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body class="text-font-size" >
	<c:url var="index" value="/login.html"/>

	<div class="container-fluid ">
		<div class="row header-style" style="">
			<div class="col-sm-7 d-flex  align-items-center ">
				<h1 class="text-primary logo">&nbsp;PRJ321x ASM 4</h1>
				
			</div>
			<div class="col-sm-3 d-flex  align-items-center ">
				<span class="text-primary text-font-size">Website for ASM</span>
			</div>
			<div class="col-sm-2 d-flex  align-items-center ">
					<c:if test="${username == null}">
						<div class="border border-primary rounded-lg ">
							<a id="use_link" class="nav-link" href="${index }">Login</a>
						</div>
					</c:if>
					<c:if test="${username != null}">	
						<div class="border border-success rounded-lg">
							<a id="use_link" class="nav-link text-success" 
							href="#">Welcome ${username }</a>
						</div>
						
					</c:if>	
			</div>
		</div>

		<div class="row bg-primary" >
			<div class="col-lg-12">
				<nav class="navbar navbar-expand-sm navbar-dark bg-primary">
					
					<button class="navbar-toggler" 
						type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    					<span class="navbar-toggler-icon"></span>
  					</button>
					<div class="collapse navbar-collapse" id="collapsibleNavbar">
						<ul class="navbar-nav">
							<li class="nav-item"><a href="index.html" class="nav-link active">Home </a></li>
							<li class="nav-item"><a href="#" class="nav-link">Your DIY </a></li>
							<li class="nav-item"><a href="#" class="nav-link">About us </a></li>
							
						</ul>
						
					</div>
					
					<div class="font-size-text collapse navbar-collapse" id="collapsibleNavbar">
						<ul class="navbar-nav ml-auto font-size-text">
							<li class="nav-item">
								<form class="text-font-size"  action="searching">
									<div class="input-group ml-1 text-font-size" >
										<input type="text" class="form-control text-font-size search-style w-50" value="${searchingEL }"
											placeholder="Search" name="searching"
											id="searching" />
										<div class="input-group-append">
											<input type="submit" class="btn btn-light text-white text-font-size" value="&#128269;" />
										</div>
									</div>
								</form>
							</li>
						</ul>
					</div>
				</nav>
			</div>
			
		</div>
		
	</div>
</body>
</html>