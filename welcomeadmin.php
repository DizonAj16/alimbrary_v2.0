<?php
// Start session
session_start();

// Check if the user is logged in and is an admin, if not then redirect to login page
if (!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true || $_SESSION["user_type"] !== "admin") {
  header("location: login.php");
  exit;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Welcome</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="titlestyle.css">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400&display=swap" rel="stylesheet">
  <style>
    nav {
      font-family: 'Montserrat', sans-serif;
    }

    .navbar {
      background: linear-gradient(#87CEEB, #1E90FF);
      border-bottom: 2px solid #007bff;
      border-radius: 10px 10px 10px 10px;
    }

    .navbar-toggler {
      border-color: #fff;
    }

    .navbar-nav .nav-link {
      color: #fff;
      padding: 10px 15px;
      transition: 0.3s;
    }

    .navbar-nav .nav-link:hover {
      background-color: rgba(255, 255, 255, 0.1);
      border-radius: 5px;
    }

    .navbar-nav .active {
      background-color: rgba(255, 255, 255, 0.2);
      border-radius: 5px;
    }

    .dropdown-menu {
      border: 1px solid #007bff;
      border-radius: 5px;
    }

    .dropdown-item {
      color: #007bff;
    }

    .dropdown-item:hover {
      background-color: rgba(0, 123, 255, 0.1);
    }
  </style>
</head>

<body style="position: relative;">

  <!-- Carousel -->
  <div id="demo" class="carousel slide" data-bs-ride="carousel">
    <!-- Indicators/dots -->
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
      <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
      <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
    </div>

    <!-- The slideshow/carousel -->
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="Images\custom-upload-1681454804.webp" alt="Los Angeles" class="d-block" style="width: 100%; height: 100vh;">
      </div>
      <div class="carousel-item">
        <img src="Images\istockphoto-1437365584-1024x1024.jpg" alt="Chicago" class="d-block" style="width: 100%; height: 100vh;">
      </div>
      <div class="carousel-item">
        <img src="Images\School-Library-Management-Software-01-1024x555.png" alt="New York" class="d-block" style="width: 100%; height: 100vh;">
      </div>
    </div>

    <!-- Left and right controls/icons -->
    <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
      <span class="carousel-control-prev-icon"></span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
      <span class="carousel-control-next-icon"></span>
    </button>
  </div>

  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top">

    <div class="container-fluid">
      <div class="title rounded-3 p-1">
        <span class="letter-a">A</span>
        <span class="letter-l">l</span>
        <span class="letter-i">i</span>
        <span class="letter-m">m</span>
        <span class="letter-b">b</span>
        <span class="letter-r">r</span>
        <span class="letter-a">a</span>
        <span class="letter-r">r</span>
        <span class="letter-y">y</span>
        <img src="Images/icons8-book-50.png" alt="" style="margin-left: 5px;">
      </div>

      <!-- Toggle Button -->
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <!-- Navbar Links -->
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" href="welcomeadmin.php"><i class="fa fa-home fa-lg"></i> Home
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#"><i class="fa fa-info-circle fa-lg"></i> About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="adminbooks.php"><i class="fa fa-book fa-lg"></i> Manage Books</a>
          </li>
          <li class="nav-item">
            <a class="nav-link " aria-current="page" href="users.php"><i class="fa fa-user-circle fa-lg"></i> Users</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="borrowers.php"><i class="fa fa-users fa-lg"></i> Borrow History</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="returnhistory.php"><i class="fa fa-address-book fa-lg"></i> Return History</a>
          </li>
        </ul>

        <!-- Dropdown -->
        <div class="navbar-nav ml-auto">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              <i class="fa fa-user fa-lg"></i> <?php echo htmlspecialchars($_SESSION["username"]); ?>
            </a>
            <ul class="dropdown-menu dropdown-menu-sm dropdown-menu-end">
              <li><a class="dropdown-item" href="reset-password.php">Reset Password</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item" href="logout.php">Sign out</a></li>
            </ul>
          </li>
        </div>
      </div>
    </div>
  </nav>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>