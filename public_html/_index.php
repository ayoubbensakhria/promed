<h1>Hello Folks</h1>
<h4>Attempting MySQL connection from php...</h4>
<?php
// I assume that you've created a new username and password
$host = 'localhost';
$user = 'yoctob58_root';
$pass = '8UbVyRXqIP7C';
$conn = new mysqli($host, $user, $pass);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
  echo "Connected to MySQL successfully!";
}
?>