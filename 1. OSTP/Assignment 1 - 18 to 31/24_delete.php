<?php
$conn = new mysqli("localhost", "your_username", "your_password", "paruluniversity");

if ($conn->connect_error) die("Connection failed: " . $conn->connect_error);

if (isset($_GET['id'])) {
    $stud_id = $_GET['id'];
    $sql = "DELETE FROM MCA WHERE stud_id=$stud_id";

    if ($conn->query($sql) === TRUE) {
        echo "Record deleted successfully";
    } else {
        echo "Error deleting record: " . $conn->error;
    }
} else {
    echo "Please provide an ID for deletion.";
}

$conn->close();
?>
