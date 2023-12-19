<?php

echo "Data using Get method  <br> <hr> <br>";

// retrive the data
$student_name = $_GET["Gstudent_name"];
$enrollment_number = $_GET["Genrollment_number"];
echo "Your name: ", $student_name, "<br>";

echo "Your enrollment number: ", $enrollment_number;

?>