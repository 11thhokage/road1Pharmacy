<?php
include '../../actions/session_check.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <?php include "ham.php"; ?>
    
<?php
include '../../database/config.php';

?>
<div class="modal fade custom-fade" id="editItemModal" tabindex="-1" role="dialog" aria-labelledby="editItemModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg custom-modal-center" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editItemModalLabel">Edit Item Price</h5>
      </div>
      <div class="modal-body">
        <div class="edit_form">


        </div>
      </div>
    </div>
  </div>
</div>
</body>



<!-- Load the full jQuery build first -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

<!-- Then load Popper.js and Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<!-- Your custom script -->
<script src="admin.js"></script>
</html>

<script>
$(document).ready(function(){
  $('.edit_item').click(function(e){
    e.preventDefault();
    var code = $(this).closest('tr').find('.code').text();
   
    

    $.ajax({
        method:"POST",
        url: "../../actions/admin/admin_edit_item.php",
        data:{
            'click_edit_item': true,
            'code' : code,
        },
        success: function(response){
            

            $('.edit_form').html(response);
            $('#editItemModal').modal('show');
        }
    });
  });
});
</script>