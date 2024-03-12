

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Login Form</title>

   <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
   <!-- SweetAlert2 CSS -->
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10"></link>
   <!-- SweetAlert2 JS -->
   <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
   <!-- Optional Bootstrap JS -->
   <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>

<div class="container">
   <div class="row justify-content-center">
      <div class="col-md-6">
         <div class="card mt-5">
            <div class="card-body">
                <img src="" alt="logo">
                <h5 class="text-center">Your One Stop Healthcare Pharmacy</h5>
               <form  method="post" action="../actions/login.php">
                  <h3 class="text-center">Login Now</h3>
                  <?php
                    if(isset($error) && !empty($error)){
                      echo '<div class="alert alert-danger">';
                      foreach($error as $message){
                          echo "<p>$message</p>";
                      }
                      echo '</div>';
                    }
                  ?>
                  <div class="form-group">
                     <label for="username">Username</label>
                     <input type="text" class="form-control" name="username" required placeholder="Enter your username">
                  </div>
                  <div class="form-group">
                     <label for="password">Password</label>
                     <input type="password" class="form-control" name="password" required placeholder="Enter your password">
                  </div>
                  <button type="submit" name="submit" class="btn btn-primary btn-block">Login Now</button>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>

</body>
</html>