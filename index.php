<?php
<<<<<<< HEAD
=======
host = "localhost";
$username = "root";
$password = "";
$database = "tailored_pieces_db.sql";
$conn = new mysqli($host, $username, $password, $database);
if ($conn->connect_error){
    die("Connection failed:".$conn->connect_error);
}
echo "Connected successfully";
$sql = "SELECT*FROM Garments";
$result = $conn->query($sql);
if($result->num_rows>0) {
    echo "Name".
    $row["name"]. " - Email: " . $row["email"]. "<br>";
   }
}else{
    echo "0 results";
}
$conn->closed();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Collect form data
    $name = strip_tags(trim($_POST["name"]));
    $email = filter_var(trim($_POST["email"]), FILTER_SANITIZE_EMAIL);
    $subject = strip_tags(trim($_POST["subject"]));
    $message = strip_tags(trim($_POST["message"]));
    
    // Validate data
   if (empty($name) || empty($message) || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
        http_response_code(400);
        echo "Please complete the form and try again.";
        exit;
>>>>>>> c93d4b6109ad7d59ceb2534a85331502c0f2259d

ini_set('display_errors', 1);
error_reporting(E_ALL);
// Declaration and assignment of parameters
$db_server = "localhost";
$db_user = "root";
$db_password = "";
$db_name = "tailored_pieces_db";

// Attempt to connect to MySQL
$conn = mysqli_connect($db_server, $db_user, $db_password, $db_name);

// Confirm if there was a connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
} else {
    echo "You are connected";
}


$sql = "SELECT name, quantity, unit_price, supplier FROM materials";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table border='1'>
            <tr>
                <th>Material Name</th>
                <th>Quantity</th>
                <th>Unit Price ($)</th>
                <th>Supplier</th>
            </tr>";
    while ($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . htmlspecialchars($row["name"]) . "</td>
                <td>" . htmlspecialchars($row["quantity"]) . "</td>
                <td>" . htmlspecialchars($row["unit_price"]) . "</td>
                <td>" . htmlspecialchars($row["supplier"]) . "</td>
              </tr>";
    }
    echo "</table>";
} else {
    echo "<p>No materials found.</p>";
}
<<<<<<< HEAD
// Close the connection
mysqli_close($conn);
?>

=======
}?>
>>>>>>> c93d4b6109ad7d59ceb2534a85331502c0f2259d
