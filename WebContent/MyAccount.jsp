<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name = "viewport" content = "width = device-width, initial-scale = 1">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
		
          
</head>




<body>
<style>
.card-body{
background-color: #fff;
}
</style>

	 <jsp:include page="Menu.jsp"></jsp:include>
  <div class="main-content">
    <div class="container mt-7">
      <!-- Table -->
      <h2 class="mb-5">My Account Card</h2>
      <div class="row">
        <div class="col-xl-8 m-auto order-xl-1">
          <div class="card bg-secondary shadow">
            <div class="card-header bg-white border-0">
              <div class="row align-items-center">
                <div class="col-8">
                  <h3 class="mb-0">My account</h3>
                </div>
                
              </div>
            </div>
            <div class="card-body">
              <form action="save" method="post" >
                <h6 class="heading-small text-muted mb-4">User information</h6>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused" >
                        <label class="form-control-label" for="input-username" >Name(*)</label>
                        <input type="text" id="input-username" name="name" value="${myacc.name}"  class="form-control form-control-alternative" placeholder="Name" >
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-email">Email address(*)</label>
                        <input type="email" id="input-email" name="email" value="${myacc.email}" class="form-control form-control-alternative" placeholder="Email">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-first-name">Age(*)</label>
                        <input type="text" id="input-first-name" name="age" class="form-control form-control-alternative" placeholder="Age" value="${myacc.age}" >
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-last-name">Phone(*)</label>
                        <input type="text" id="input-last-name" name="phone" class="form-control form-control-alternative" placeholder="Phone" value="${myacc.phone}" >
                      </div>
                    </div>
                  </div>
                </div>
                <hr class="my-4">
                <!-- Address -->
                <h6 class="heading-small text-muted mb-4">Contact information</h6>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-address">Address(*)</label>
                        <input id="input-address" name="address" class="form-control form-control-alternative" placeholder="Home Address"  type="text" value="${myacc.address}">
                      </div>
                    </div>
                  </div>
                 
                </div>
                <hr class="my-4">
                <!-- Description -->
               
                   <input type = "hidden" name = "csrf" value = "Fijd93djskDsdis9wijdSD938jISdj93jdISdj9s" />
                
                 <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Save Information</button>
                 <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> See Information</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <footer class="footer">
    <div class="row align-items-center justify-content-xl-between">
      <div class="col-xl-6 m-auto text-center">
        <div class="copyright">
          <p>Made with <a href="https://www.creative-tim.com/product/argon-dashboard" target="_blank">Argon Dashboard</a> by Creative Tim</p>
        </div>
      </div>
    </div>
  </footer>


</body>
</html>