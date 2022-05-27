<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
        
</head>
<body>
 <jsp:include page="Menu.jsp"></jsp:include>
 

 <div class="col-md-6 offset-md-3">
                    <span class="anchor" id="formChangePassword"></span>
                    <hr class="mb-5">

                    <!-- form card change password -->
                    
                    <div class="card card-outline-secondary">
                    
                    <c:if test="${messuccess != null }" >
                    	<div class="alert alert-success" role="alert">
						 SUCCESS !
						</div>
					</c:if>
					
					<c:if test="${meswrong != null }" >
                    	<div class="alert alert-danger" role="alert">
						 Wrong current password or verify !
						</div>
					</c:if>
					
					
                        <div class="card-header">
                            <h3 class="mb-0">Change Password </h3>
                        </div>
                        <div class="card-body">
                            <form action="changepass" method="post" autocomplete="off">
                                <div class="form-group">
                                    <label for="inputPasswordOld">Current Password</label>
                                    <input type="password" class="form-control" id="inputPasswordOld" name="curpass" required="">
                                </div>
                                <div class="form-group">
                                    <label for="inputPasswordNew">New Password</label>
                                    <input type="password" class="form-control" id="inputPasswordNew" name="newpass" required="">
                                    <span class="form-text small text-muted">
                                           
                                        </span>
                                </div>
                                <div class="form-group">
                                    <label for="inputPasswordNewVerify">Verify</label>
                                    <input type="password" class="form-control" id="inputPasswordNewVerify" name="verpass" required="">
                                    <span class="form-text small text-muted">
                                            To confirm, type the new password again.
                                        </span>
                                </div>
                                <div class="form-group">
                                 	<input type = "hidden" name = "csrf" value = "Fijd93djskDsdis9wijdSD938jISdj93jdISdj9s" />
                                    <button type="submit" class="btn btn-success btn-lg float-right">Save</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    </div>
                     <jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>