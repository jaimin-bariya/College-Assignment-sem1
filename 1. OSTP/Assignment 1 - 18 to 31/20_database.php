<?php
$c = new mysqli("localhost", "root", "");

if ($c->connect_error) {
    die("Connection failed: " . $c->connect_error);
}

$c->query("CREATE DATABASE IF NOT EXISTS paruluniversity");
$c->select_db("paruluniversity");

$c->query("CREATE TABLE IF NOT EXISTS MCA (
    stud_id INT AUTO_INCREMENT PRIMARY KEY,
    stud_enroll VARCHAR(20) NOT NULL,
    stud_name VARCHAR(50) NOT NULL,
    stud_gender ENUM('Male', 'Female', 'Other') NOT NULL,
    stud_mob VARCHAR(15) NOT NULL,
    stud_dob DATE NOT NULL
)");

$c->multi_query("INSERT INTO MCA (stud_enroll, stud_name, stud_gender, stud_mob, stud_dob)
VALUES 
('MCA001', 'John Doe', 'Male', '1234567890', '1995-05-15'),
('MCA002', 'Jane Smith', 'Female', '9876543210', '1998-10-25'),
('MCA003', 'Alex Johnson', 'Male', '5555555555', '1997-03-08')");

if ($c->error) {
    echo "Error: " . $c->error;
} else {
    echo "Database 'paruluniversity' and table 'MCA' created, records inserted successfully!";
}

$c->close();
?>
