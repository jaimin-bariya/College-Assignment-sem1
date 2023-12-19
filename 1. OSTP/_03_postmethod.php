<?php
echo "Data using Post method  <br> <hr> <br>";

// retrive the data
$student_name = $_POST["Pstudent_name"];
$enrollment_number = $_POST["Penrollment_number"];
echo "Your name: ", $student_name, "<br>";

echo "Your enrollment number: ", $enrollment_number;

?>