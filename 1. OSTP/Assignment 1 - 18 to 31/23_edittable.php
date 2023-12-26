<?php
$conn = new mysqli("localhost", "root", "", "paruluniversity");

if ($conn->connect_error) die("Connection failed: " . $conn->connect_error);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Your update query remains unchanged
}

if (isset($_GET['id'])) {
    $stud_id = $_GET['id'];
    $sql = "SELECT * FROM MCA WHERE stud_id=$stud_id";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
?>
        <form method="post">
            <!-- Your form inputs here -->
        </form>
<?php
    } else {
        echo "No record found";
    }
} else {
    echo "Please provide an ID for editing.";
}

$conn->close();
?>
