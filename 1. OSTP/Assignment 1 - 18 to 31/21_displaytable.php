<?php
$c = new mysqli("localhost", "root", "", "paruluniversity");

if ($c->connect_error) {
    die("Connection failed: " . $c->connect_error);
}

$result = $c->query("SELECT DISTINCT stud_name, stud_gender, stud_enroll, stud_mob, stud_dob FROM MCA");

if ($result->num_rows > 0) {
    echo "<table border='1'>";
    echo "<tr><th>Enrollment</th><th>Name</th><th>Gender</th><th>Mobile</th><th>DOB</th></tr>";

    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row["stud_enroll"] . "</td>";
        echo "<td>" . $row["stud_name"] . "</td>";
        echo "<td>" . $row["stud_gender"] . "</td>";
        echo "<td>" . $row["stud_mob"] . "</td>";
        echo "<td>" . $row["stud_dob"] . "</td>";
        echo "</tr>";
    }

    echo "</table>";
} else {
    echo "0 results";
}

$c->close();
?>
