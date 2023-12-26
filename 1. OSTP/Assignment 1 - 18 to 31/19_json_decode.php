<?php
// JSON string
$jsonString = '{"name":"John Doe","age":30,"city":"New York"}';

// Decoding JSON string to PHP array
$data = json_decode($jsonString, true); // Passing true as the second argument to get an associative array

// Accessing decoded data
echo "Name: " . $data['name'] . "<br>";
echo "Age: " . $data['age'] . "<br>";
echo "City: " . $data['city'] . "<br>";
?>
