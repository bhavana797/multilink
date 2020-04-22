<?php
session_start();
?>
<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css" rel="stylesheet" />
   <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
   <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>

<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

.modal-body{
	text-align:center;
}

/* Full-width input fields */
.username,.psw {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #343a40;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  /*background-color: #343a40;*/
   background-color: green;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}


/* Avatar image */
img.user {
  width: 20%;
  border-radius: 50%;
  margin-left: 0px;
  margin-right: 0px;
}
/*.imgcontainer {
  text-align: center;
  margin: 25px 0 25px 0;
}*/

/* Extra styles for the cancel button */
.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: #FFF8DC; /* Fallback color */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 35%; /* Could be more or less, depending on screen size */
}
@media(max-width:500px){
  .modal-content {
	  width:80%;
  }
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>

<div class="modal-body">


</div>

<div id="id01" class="modal">
  
  <form class="modal-content animate" method="post">
 <div class="imgcontainer">
      <br>
   <center>
     <h3>Novisync</h3>
     <img src="images/Novisync.svg" style="width: 80px;"></a>
 
   </center><!-- <img src="user.png" alt="Avatar" class="user"> -->
    </div>

    <div class="container">

      <input type="text" placeholder="Enter Username" name="username" class="username" required>

      <input type="password" placeholder="Enter Password" name="psw" class="psw" required>
        
    <button type="submit" name="Login">Login</button>
    </div>

    <div class="container" style="background-color:#f1f1f1">
    </div>
  </form>
</div>

</body>
</html>

<?php

if(isset($_POST['Login']))
{
include 'dbconnect.php';
$_SESSION['username']=$_POST['username'];
$password =$_POST['psw'];

$_SESSION['pass']=md5($password);
 

$query = mysqli_query($con,"SELECT count(*) as cnt FROM `emsusers` WHERE password='{$_SESSION['pass']}' AND userName='{$_SESSION['username']}'");  
while($fet = mysqli_fetch_assoc($query))
{
  $cnt = $fet['cnt'];
}
echo $cnt;
if($cnt > 0)
{
  echo '<script>window.location.href="home.php"</script>';
}
else
{
  echo  "<script type=\"text/javascript\">
          
         swal({
          title: '',
          text: 'Username or Password Wrong!',
          
          type: 'warning'
        },function() {
                      
        }
        );
      

      </script>";
}
    

}

?>

?>
