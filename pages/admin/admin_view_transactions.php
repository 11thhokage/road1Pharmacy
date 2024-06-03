<?php
include '../../database/config.php';
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <?php include 'ham.php'; ?>
    <div class="height-100 bg-light">
        <h2>
            <center><img src='../../img/IMG_5789__1_-removebg-preview.png' class='logo-image-navbar h1' alt='logo'>View Offtake Transactions</center>
        </h2>
        <div class="d-flex flex-row-reverse mt-2">
            <button id='exportExcelBtn' class='btn btn-success mb-2'>Export to Excel</button>
        </div>
        <!-- Filter Dropdowns -->
        <center>
            <select name="transact_by" id="transact_by" class="mb-2 form-select my-select" style="width:15%;">
                <option value='all'>All</option>
                <?php
                $data = "SELECT username FROM accounts WHERE role_as = '2'";
                $result = mysqli_query($conn, $data);
                if (mysqli_num_rows($result) > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {
                        $username = $row['username'];
                        echo "<option value='$username'>$username</option>";
                    }
                } else {
                    echo "<option value=''>No data found!</option>";
                }
                ?>
            </select>
            <select name="payment_mode" id="payment_mode" class="mb-2 form-select my-select" style="width:15%;">
                <option value='all'>All</option>
                <option value='Cash'>Cash</option>
                <option value='Gcash'>Gcash</option>
            </select>
        </center>

        <div id="main">
            <div id="formContent">
                <!-- Content will be loaded here via AJAX -->
            </div>
        </div>
    </div>

    <div class="modal fade custom-fade" id="viewDetailsModal" tabindex="-1" role="dialog" aria-labelledby="viewDetailsModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg custom-modal-center" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="viewDetailsModalLabel">View Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="view_form"></div>
                </div>
            </div>
        </div>
    </div>

    <!-- Load the full jQuery build first -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/xlsx/dist/xlsx.full.min.js"></script>
    <!-- Then load Popper.js and Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4xF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <!-- AJAX Script -->
    <script>
        $(document).ready(function() {
            function loadTransactions(transact_by, payment_mode, page) {
                $.ajax({
                    url: 'load_offtake_transactions.php',
                    type: 'POST',
                    data: {
                        transact_by: transact_by,
                        payment_mode: payment_mode,
                        page: page
                    },
                    success: function(data) {
                        $('#formContent').html(data);
                    }
                });
            }

            $('#transact_by, #payment_mode').change(function() {
                var transact_by = $('#transact_by').val();
                var payment_mode = $('#payment_mode').val();
                loadTransactions(transact_by, payment_mode, 1);
            });

            $('body').on('click', '.pagination a', function(e) {
                e.preventDefault();
                var transact_by = $('#transact_by').val();
                var payment_mode = $('#payment_mode').val();
                var page = $(this).attr('data-page');
                loadTransactions(transact_by, payment_mode, page);
            });

            // Initial load
            loadTransactions('all', 'all', 1);

            // View Details
            $('body').on('click', '.view_details', function(e) {
                e.preventDefault();
                var id = $(this).closest('tr').find('td.id').text();
                var amount = $(this).closest('tr').find('td.amount').text();
                var amount_tendered = $(this).closest('tr').find('td.amount_tendered').text();
                var date_transacted = $(this).closest('tr').find('td.date').text();
                var time_transacted = $(this).closest('tr').find('td.time').text();
                var payment_mode = $(this).closest('tr').find('td.payment_mode').text();
                var transact_by = $(this).closest('tr').find('td.transact_by').text();

                $.ajax({
                    method: "POST",
                    url: "../../actions/admin/admin_view_transactions_details.php",
                    data: {
                        'click_view_details': true,
                        'id': id,
                        'amount': amount,
                        'amount_tendered': amount_tendered,
                        'date_transacted': date_transacted,
                        'time_transacted': time_transacted,
                        'payment_mode': payment_mode,
                        'transact_by': transact_by,
                    },
                    success: function(response) {
                        $('.view_form').html(response);
                        $('#viewDetailsModal').modal('show');
                    }
                });
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            // Export to Excel button click event
            $('#exportExcelBtn').click(function() {
                // Get the table headers
                var tableHeaders = [];
                $('table thead th').each(function(index) {
                    // Exclude the "Actions" column (assuming it is the last column)
                    if (index !== $('table thead th').length - 1) {
                        tableHeaders.push($(this).text());
                    }
                });

                // Get the table data
                var tableData = [tableHeaders]; // Start with the headers
                $('table tbody tr').each(function() {
                    var rowData = [];
                    $(this).find('td').each(function(index) {
                        // Exclude the "Actions" column (assuming it is the last column)
                        if (index !== $(this).parent().find('td').length - 1) {
                            rowData.push($(this).text());
                        }
                    });
                    tableData.push(rowData);
                });

                // Create a new Excel workbook
                var workbook = XLSX.utils.book_new();

                // Add the table data to a new worksheet
                var worksheet = XLSX.utils.aoa_to_sheet(tableData);
                XLSX.utils.book_append_sheet(workbook, worksheet, 'Sheet1');

                // Save the workbook as an Excel file
                XLSX.writeFile(workbook, 'offtake_trans_table.xlsx');
            });
        });
    </script>
    </body>

</html>