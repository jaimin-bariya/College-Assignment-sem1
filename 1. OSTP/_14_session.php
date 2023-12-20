<?php

echo "program no 14 - session <br>";

// start the session 
session_start();


// set value for session 
$_SESSION['username'] = 'John doe';

// retrive value
$value = $_SESSION['username'];

// print value 
echo "value of session = ", $value;

// destroy session 

session_destroy();


?>