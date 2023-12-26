<?php
// PHP array
$data = array(
    'name' => 'John Doe',
    'age' => 30,
    'city' => 'New York'
);

// Encoding PHP array to JSON string
$jsonString = json_encode($data);

echo $jsonString; // Output the JSON string
?>
