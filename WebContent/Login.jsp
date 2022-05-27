<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" >
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <title>Login Form</title>
    </head>
    <body>
        <div id="logreg-forms">
            <form class="form-signin" action="login" method="post">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
				  <p class="text-danger"> ${mess} </p>
                <input name="user" value="${username}"  type="text" id="inputEmail" class="form-control" placeholder="Username" >
                <input name="pass" value="${password}"  type="password" id="inputPassword" class="form-control" placeholder="Password" >

                <div class="form-group form-check">
                    <input name="remember" value="1" type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Remember me</label>
                </div>
                 <input type = "hidden" name = "csrf" value = "Fijd93djskDsdis9wijdSD938jISdj93jdISdj9s" />

                <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
                <hr>
                <button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Sign up New Account</button>
            </form>

            <form action="signup" method="post" class="form-signup">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign up</h1>
                <input name="user" type="text" id="user-name" class="form-control" placeholder="User name" >
                <input name="pass" type="password" id="user-pass"  class="form-control" placeholder="Password" >
                <input name="repass" type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" >
                <input type = "hidden" name = "csrf" value = "Fijd93djskDsdis9wijdSD938jISdj93jdISdj9s" />
                 
                <button id="btnSignup" class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
                <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
                <p id="message" class="text-danger"></p>
                
            </form>
            <br>

        </div>
        
        
       
        <script>
            function toggleResetPswd(e) {
                e.preventDefault();
                $('#logreg-forms .form-signin').toggle() // display:block or none
                $('#logreg-forms .form-reset').toggle() // display:block or none
            }

            function toggleSignUp(e) {
                e.preventDefault();
                $('#logreg-forms .form-signin').toggle(); // display:block or none
                $('#logreg-forms .form-signup').toggle(); // display:block or none
            }

            $(() => {
                // Login Register Form
                $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
                $('#logreg-forms #cancel_reset').click(toggleResetPswd);
                $('#logreg-forms #btn-signup').click(toggleSignUp);
                $('#logreg-forms #cancel_signup').click(toggleSignUp);
            })
            
            
        </script>
        
        
        <script>
   document.getElementById('user-pass').onkeyup=function(){
      
	   var format = /[!@#$%^&*()_+\-=\[\]{}:\\|,.<>\/?]+/;
	   var formatAlphabetCap = /[ABCDEFGHIJKLMNOPQRSTUVWXYZ]+/;
	   var formatAlphabet = /[abcdefghijklmnopqrstuvwxyz]+/;
	   var formatNumber = /[1234567890]+/;
       var pw = document.getElementById("user-pass").value;  
       //check empty password field  
       if(pw == "") {  
          document.getElementById("message").innerHTML = "**Không để trống !";  
          document.getElementById("btnSignup").disabled = true;
          
       } 
       else
    
      //minimum password length validation  
       if(pw.length < 8) {  
          document.getElementById("message").innerHTML = "**Mật khẩu tối thiểu 8 kí tự";  
          document.getElementById("btnSignup").disabled = true;
         
       }
       
     else
       if(formatNumber.test(pw) == false){
    	 
    	   document.getElementById("message").innerHTML = "**Cần có ít nhất một chữ số ";  
           document.getElementById("btnSignup").disabled = true;
       }
       
       else if(pw.length > 15) {  
           document.getElementById("message").innerHTML = "**Độ dài mật khẩu tối đa là 15 ký tự";  
           document.getElementById("btnSignup").disabled = true;
          
        }
     
       else
           if(formatAlphabet.test(pw) == false){
        	 
        	   document.getElementById("message").innerHTML = "**Cần có ít nhất một chữ cái ";  
               document.getElementById("btnSignup").disabled = true;
           }
       
           else if(pw.length > 15) {  
               document.getElementById("message").innerHTML = "**Độ dài mật khẩu tối đa là 15 ký tự";  
               document.getElementById("btnSignup").disabled = true;
              
            }
         
  
       else
         if(formatAlphabetCap.test(pw) == false){
      	 
      	   document.getElementById("message").innerHTML = "**Cần có ít nhất một chữ cái in hoa ";  
             document.getElementById("btnSignup").disabled = true;
         }
       
         else if(pw.length > 15) {  
             document.getElementById("message").innerHTML = "**Độ dài mật khẩu tối đa là 15 ký tự";  
             document.getElementById("btnSignup").disabled = true;
            
          }
       
         else
             if(format.test(pw) == false){
          	 
          	   document.getElementById("message").innerHTML = "**Cần có một ký tự đặc biệt ";  
                 document.getElementById("btnSignup").disabled = true;
             }
       //maximum length of password validation  
       else if(pw.length > 15) {  
           document.getElementById("message").innerHTML = "**Độ dài mật khẩu tối đa là 15 ký tự";  
           document.getElementById("btnSignup").disabled = true;  
        }
     
       else
       { 
    	   document.getElementById("message").innerHTML = "";  
	       document.getElementById("btnSignup").disabled = false;
       }
  
   }
   
   </script>
        
      
       
    </body>
    
    
    

    
</html>