<?php
// Start session
session_start();

// Check if the user is logged in and is an admin, if not then redirect to login page
if (!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true || $_SESSION["user_type"] !== "admin") {
    header("location: login.php");
    exit;
}

// Include config file
require_once "config.php";

// Define SQL query to fetch return history data
$return_history_sql = "SELECT return_history.return_id, borrowed_books.borrow_date, users.username, books.title, return_history.returned_date_time 
                        FROM return_history
                        JOIN users ON return_history.user_id = users.id
                        JOIN books ON return_history.book_id = books.book_id
                        JOIN borrowed_books ON return_history.borrow_id = borrowed_books.borrow_id
                        ORDER BY return_history.returned_date_time DESC";

// Execute the query
$result = mysqli_query($conn, $return_history_sql);

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
    <link rel="stylesheet" href="navigation.css">
    <link rel="stylesheet" href="fa-css/all.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
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
            padding: 10px;
            /* Adjusted padding */
            text-align: center;
            /* Center align text */
            vertical-align: middle;
            /* Align content vertically center */
            border: 1px solid #dee2e6;
        }

        th {
            background-color: #007bff;
            color: #fff;
            vertical-align: middle;
            /* Align header content vertically center */
        }

        tbody tr:hover {
            background-color: rgba(0, 123, 255, 0.1);
        }

        #backToTopBtn {
            display: none;
            position: fixed;
            bottom: 20px;
            right: 20px;
            z-index: 99;
            font-size: 18px;
            border: none;
            outline: none;
            background-color: rgba(0, 0, 0, 0.5);
            color: white;
            cursor: pointer;
            border-radius: 50%;
        }

        #backToTopBtn:hover {
            background-color: rgba(0, 0, 0, 0.7);
        }
    </style>
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">

        <div class="container-fluid">
            <div class="title p-1">
                <img class="logo" src="Images/logo.png" alt="">
            </div>

            <!-- Toggle Button -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Navbar Links -->
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="welcomeadmin.php"><i class="fa fa-home fa-lg"></i> Home
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><i class="fa fa-info-circle fa-lg"></i> About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="adminbooks.php"><i class="fa fa-book fa-lg"></i> Manage Books</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="users.php"><i class="fa fa-user-circle fa-lg"></i> Users</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="borrowhistory.php"><i class="fa fa-users fa-lg"></i> Borrow History</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="returnhistory.php"><i class="fa fa-address-book fa-lg"></i> Return History</a>
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

    <div class="container" style="margin-top:95px;">
        <div class="card mt-2">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h3 class="fw-bold mb-0">Return History</h3>
                <div class="input-group" style="max-width: 200px;">
                    <input type="text" class="form-control" id="searchInput" placeholder="Search by username...">
                </div>
            </div>

            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover mb-0" id="returnHistoryTable">
                        <thead>
                            <tr>
                                <th>Return ID</th>
                                <th>User</th>
                                <th>Book Title</th>
                                <th>Date Borrowed</th>
                                <th>Date Returned</th>
                                <th>Days Borrowed</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            // Loop through each row in the result set
                            // Loop through each row in the result set
                            while ($row = mysqli_fetch_assoc($result)) {
                                echo "<tr>";
                                echo "<td>" . $row['return_id'] . "</td>";
                                echo "<td>" . $row['username'] . "</td>";
                                echo "<td class='fw-bold'>" . $row['title'] . "</td>";
                                echo "<td>" . $row['borrow_date'] . "</td>";
                                echo "<td>" . $row['returned_date_time'] . "</td>";

                                // Calculate the days borrowed
                                $date1 = strtotime($row['borrow_date']);
                                $date2 = strtotime($row['returned_date_time']);
                                $diff = abs($date2 - $date1);
                                $days_borrowed = floor($diff / (60 * 60 * 24));

                                // Convert days borrowed into months and remaining days if it exceeds 30 days
                                if ($days_borrowed >= 30) {
                                    $months = floor($days_borrowed / 30);
                                    $remaining_days = $days_borrowed % 30;
                                    echo "<td>$months month(s) $remaining_days day(s)</td>";
                                } else {
                                    // Display "Less than a day" if days borrowed is 0
                                    if ($days_borrowed == 0) {
                                        echo "<td>Less than a day</td>";
                                    } else {
                                        echo "<td>$days_borrowed day(s)</td>";
                                    }
                                }
                                echo "</tr>";
                            }

                            ?>
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>

    <script>
        // Function to perform live search
        function liveSearch() {
            // Get the search query from the input field
            var searchQuery = document.getElementById('searchInput').value.trim();

            // Send the search query to the server using AJAX
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    // Update the table with the filtered results
                    document.getElementById("returnHistoryTable").innerHTML = this.responseText;
                }
            };
            xhttp.open("GET", "search_return_history.php?q=" + searchQuery, true);
            xhttp.send();
        }

        // Trigger live search on input change
        document.getElementById('searchInput').addEventListener('input', liveSearch);
    </script>


    <button id="backToTopBtn" title="Go to top" style="height: 50px; width:50px;"><i class="fas fa-arrow-up"></i></button>
    <script src="jquery/jquery-3.5.1.min.js"></script>
    <script>
        $(document).ready(function() {

            $(window).scroll(function() {
                if ($(this).scrollTop() > 100) {
                    $('#backToTopBtn').fadeIn();
                } else {
                    $('#backToTopBtn').fadeOut();
                }
            });


            $('#backToTopBtn').click(function() {
                $('html, body').animate({
                    scrollTop: 0
                }, 'slow');
                return false;
            });
        });
    </script>

</body>

</html>

<?php
// Close connection
mysqli_close($conn);
?>