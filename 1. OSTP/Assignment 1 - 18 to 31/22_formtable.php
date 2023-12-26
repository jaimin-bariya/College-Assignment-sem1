<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $conn = new mysqli("localhost", "root", "", "paruluniversity");

    if ($conn->connect_error) die("Connection failed: " . $conn->connect_error);

    $sql = "INSERT INTO MCA (stud_enroll, stud_name, stud_gender, stud_mob, stud_dob)
            VALUES ('".$_POST["stud_enroll"]."', '".$_POST["stud_name"]."', '".$_POST["stud_gender"]."', '".$_POST["stud_mob"]."', '".$_POST["stud_dob"]."')";

    echo ($conn->query($sql) === TRUE) ? "New record created successfully" : "Error: " . $sql . "<br>" . $conn->error;
    $conn->close();
}
?>

<h2>Student Record Form</h2>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
    Enrollment: <input type="text" name="stud_enroll"><br>
    Name: <input type="text" name="stud_name"><br>
    Gender: 
    <input type="radio" name="stud_gender" value="Male">Male
    <input type="radio" name="stud_gender" value="Female">Female<br>
    Mobile: <input type="text" name="stud_mob"><br>
    DOB: <input type="date" name="stud_dob"><br>
    <input type="submit" value="Submit">
</form>
