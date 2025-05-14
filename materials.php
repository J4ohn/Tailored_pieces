<?php

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
// Close the connection
mysqli_close($conn);
?>
