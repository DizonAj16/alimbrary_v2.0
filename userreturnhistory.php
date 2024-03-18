<?php
// Start session
session_start();

// Check if the user is logged in and is an admin, if not then redirect to login page
if (!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true || $_SESSION["user_type"] !== "user") {
    header("location: login.php");
    exit;
}

// Include config file
require_once "config.php";

// Get the user ID of the currently logged-in user
$user_id = $_SESSION["id"];

// Define SQL query to fetch return history data for the logged-in user
$return_history_sql = "SELECT return_history.return_id, borrowed_books.borrow_date, users.username, books.title, return_history.returned_date_time 
                        FROM return_history
                        JOIN users ON return_history.user_id = users.id
                        JOIN books ON return_history.book_id = books.book_id
                        JOIN borrowed_books ON return_history.borrow_id = borrowed_books.borrow_id
                        WHERE users.id = ?
                        ORDER BY return_history.returned_date_time DESC";

// Prepare the query
if ($stmt = mysqli_prepare($conn, $return_history_sql)) {
    // Bind the user ID parameter
    mysqli_stmt_bind_param($stmt, "i", $user_id);

    // Execute the query
    mysqli_stmt_execute($stmt);

    // Get the result set
    $result = mysqli_stmt_get_result($stmt);

    // Close the statement
    mysqli_stmt_close($stmt);
}
?>

<?php
// Include config file
require_once "config.php";

// Fetch user's profile image path from the database
$user_id = $_SESSION["id"];
$sql = "SELECT image FROM users WHERE id = ?";
$stmt = mysqli_prepare($conn, $sql);
mysqli_stmt_bind_param($stmt, "i", $user_id);
mysqli_stmt_execute($stmt);
mysqli_stmt_bind_result($stmt, $profile_image);
mysqli_stmt_fetch($stmt);
mysqli_stmt_close($stmt);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Return History</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script defer src="js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="titlestyle.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="navstyle.css">
    <link rel="stylesheet" href="fa-css/all.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }

        .card {
            margin-bottom: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            border-radius: 10px;
            overflow: hidden;
        }

        .card-header {
            background-color: #007bff;
            color: #fff;
            border-bottom: none;
            border-radius: 10px 10px 0 0;
        }

        .card-body {
            padding: 0;
        }

        table {
            margin-bottom: 0;
            width: 100%;
            border-collapse: collapse;
        }

        .table th,
        .table td {
            padding: 15px;
            text-align: left;
            border: 1px solid #dee2e6;
        }

        th {
            background-color: #007bff;
            color: #fff;
        }

        tbody tr:hover {
            background-color: rgba(0, 123, 255, 0.1);
        }
    </style>
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">

        <div class="container-fluid">
            <div class="title p-1">
                <img src="Images/logo.png" alt="" style="height:50px;">
            </div>

            <!-- Toggle Button -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Navbar Links -->
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="userwelcome.php"><i class="fa-solid fa-home fa-lg"></i> Home
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><i class="fa fa-info-circle fa-lg"></i> About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="userbook.php"><i class="fa fa-book fa-lg"></i> Books</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="borrowedbooks.php"><i class="fas fa-book-reader fa-lg"></i> Borrowed Books</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="userreturnhistory.php"><i class="fa fa-book fa-lg"></i> Returned Books</a>
                    </li>
                </ul>

                <!-- Dropdown -->
                <div class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <?php
                            // Display user's profile image or default user icon
                            if (!empty($profile_image)) {
                                echo '<img src="' . htmlspecialchars($profile_image) . '" alt="Profile Image" class="rounded-circle" style="width: 32px; height: 32px;">';
                            } else {
                                echo '<i class="fa fa-user fa-lg"></i>';
                            }
                            ?>
                            <?php echo htmlspecialchars($_SESSION["username"]); ?>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-sm dropdown-menu-end">
                            <li><a class="dropdown-item" href="reset-password.php"><i class="fas fa-undo"></i> Reset Password</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="myprofile.php"><i class="fas fa-id-card"></i> My Profile</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="logout.php"><i class="fas fa-sign-out-alt"></i> Sign out</a></li>
                        </ul>
                    </li>
                </div>
            </div>
        </div>
    </nav>

    <div class="container-fluid" style="margin-top:85px">
        <?php if (mysqli_num_rows($result) === 0) : ?>
            <div class="alert alert-info p-4 mt-2 text-danger fs-5" role="alert">
                No returned books found.
            </div>
        <?php else: ?>
        <div class="card mt-2">
            <div class="card-header">
                <h2 class="fw-bold">Return History</h2>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover mb-0">
                        <thead>
                            <tr>
                                <th>Return ID</th>
                                <th>Title</th>
                                <th>Borrow Date</th>
                                <th>Date Returned</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            // Loop through each row in the result set
                            while ($row = mysqli_fetch_assoc($result)) {
                                echo "<tr>";
                                echo "<td>" . $row['return_id'] . "</td>";
                                echo "<td class='fw-bold'>" . $row['title'] . "</td>";
                                echo "<td>" . $row['borrow_date'] . "</td>";
                                echo "<td>" . $row['returned_date_time'] . "</td>";
                                echo "</tr>";
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <?php endif; ?>
    </div>

</body>

</html>

<?php
// Close connection
mysqli_close($conn);
?>