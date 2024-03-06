<?php
// Initialize the session
session_start();

// Check if the user is logged in, if not then redirect him to login page
if (!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true) {
    header("location: login.php");
    exit;
}

// Include config file
require_once "config.php";

// Check if book_id is provided in the query string
if (!isset($_GET["book_id"])) {
    header("location: userbook.php");
    exit;
}

$book_id = $_GET["book_id"];

// Check if the book is available
$sql = "SELECT availability FROM books WHERE book_id = ?";
$stmt = mysqli_prepare($conn, $sql);
mysqli_stmt_bind_param($stmt, "i", $book_id);
mysqli_stmt_execute($stmt);
mysqli_stmt_bind_result($stmt, $availability);
mysqli_stmt_fetch($stmt);
mysqli_stmt_close($stmt);

// If the book is not available, display an alert message and redirect
if ($availability !== 'Available') {
    echo '<script>alert("The book is not available for borrowing."); window.location.href = "userbook.php";</script>';
    exit;
}

// Processing form data when form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Validate return date
    $return_date = trim($_POST["return_date"]);
    if (empty($return_date)) {
        $return_date_err = "Please enter return date.";
    }

    // Check if return date is in the future
    if (strtotime($return_date) <= strtotime(date("Y-m-d"))) {
        $return_date_err = "Return date must be in the future.";
    }

    // Check if there are no errors before inserting into database
    if (empty($return_date_err)) {
        // Begin a transaction
        mysqli_begin_transaction($conn);

        // Update availability status to 'Not Available'
        $update_sql = "UPDATE books SET availability = 'Not Available' WHERE book_id = ?";
        $update_stmt = mysqli_prepare($conn, $update_sql);
        mysqli_stmt_bind_param($update_stmt, "i", $book_id);
        mysqli_stmt_execute($update_stmt);
        mysqli_stmt_close($update_stmt);

        // Insert borrowing record into borrowed_books table
        $borrow_date = date("Y-m-d");
        $insert_sql = "INSERT INTO borrowed_books (user_id, book_id, borrow_date, return_date) VALUES (?, ?, ?, ?)";
        $insert_stmt = mysqli_prepare($conn, $insert_sql);
        mysqli_stmt_bind_param($insert_stmt, "iiss", $_SESSION["id"], $book_id, $borrow_date, $return_date);
        mysqli_stmt_execute($insert_stmt);
        mysqli_stmt_close($insert_stmt);

        // Commit the transaction
        mysqli_commit($conn);

        // Redirect to the books page
        header("location: userbook.php");
        exit;
    }
}

// Close the connection
mysqli_close($conn);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Borrow Book</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Include Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 50px;
        }

        .card {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background-color: #007bff;
            color: #fff;
            font-weight: bold;
        }

        .btn-primary, .btn-secondary {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        Borrow Book
                    </div>
                    <div class="card-body">
                        <form id="borrowForm" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]) . '?book_id=' . $book_id; ?>" method="post">
                            <div class="form-group">
                                <label for="borrow_date">Borrow Date:</label>
                                <input type="date" id="borrow_date" name="borrow_date" class="form-control" value="<?php echo date('Y-m-d'); ?>" readonly>
                            </div>
                            <div class="form-group">
                                <label for="return_date">Return Date:</label>
                                <input type="date" id="return_date" name="return_date" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#confirmationModal">Borrow</button>
                                <a href="userbook.php" class="btn btn-secondary">Cancel</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Confirmation Modal -->
    <div class="modal fade" id="confirmationModal" tabindex="-1" role="dialog" aria-labelledby="confirmationModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="confirmationModalLabel">Confirmation</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Are you sure you want to borrow this book?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                    <button type="button" class="btn btn-primary" onclick="document.getElementById('borrowForm').submit();">Yes</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Include Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

