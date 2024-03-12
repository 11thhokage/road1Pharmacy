<?php
include '../../actions/session_check.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
<?php
    include "ham.php";
?>


<?php
include '../../database/config.php';


$data= "SELECT * FROM accounts";
$result = mysqli_query($conn, $data);

echo"  <div class='container'>
            <div class='row'>";
            

// Check if the query was successful
if (!$result) {
    die('Error in query: ' . mysqli_error($conn));
}

if(mysqli_num_rows($result)> 0){
    while($row=mysqli_fetch_assoc($result)){
        $id=$row['id'];
        if($id >2 ){
        $username=$row['username'];
        $email=$row['email'];
        $picture=$row['picture'];

        echo "
      
                <div class='col-md-4'>
                    <div class='card' style='width: 18rem;'>
                        <img src='../../img/$picture' class='card-img-top' alt='Profile Picture' style= 'width:100%; height:50%'>
                        <div class='card-body'>
                            <h5 class='card-title '>$username</h5>
                          ID:  <p class='card-text id'> $id</p>
                            <p class='card-text'>Email: $email</p>
                            <a href='#' class='btn btn-secondary edit_user'>Edit</a>
                            <a href='admin_delete_users.php?' class='btn btn-danger'>Delete</a>
                        </div>
                    </div>
                </div>";
 
        }else{
        }
    }
}else{
    echo"Database is EMPTY";
}

echo"<a href='register.php' class='btn btn-primary '>Add User</a><br/>";
echo"            </div>
        </div>";
?>


<div class="modal fade custom-fade" id="editEmailModal" tabindex="-1" role="dialog" aria-labelledby="editEmailModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg custom-modal-center" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editEmailModalLabel">Edit Credentials</h5>
      </div>
      <div class="modal-body">
        <div class="edit_form">


        </div>
      </div>
    </div>
  </div>
</div>
</body>
 
  
</body>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

<!-- Then load Popper.js and Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="admin.js"></script>
<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>

<script>
$(document).ready(function(){
  $('.edit_user').click(function(e){
    e.preventDefault();
    var id = $(this).closest('div').find('p.id').text();
   
    // console.log(id);

    $.ajax({
        method:"POST",
        url: "../../actions/admin/admin_edit_users.php",
        data:{
            'click_edit_user': true,
            'id' : id,
        },
        success: function(response){
            

            $('.edit_form').html(response);
            $('#editEmailModal').modal('show');
        }
    });
  });
});
</script>