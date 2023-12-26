<?php
// Defining a class
class MyClass {
    // Constructor
    public function __construct() {
        echo "Constructor called! Object created.<br>";
    }

    // Destructor
    public function __destruct() {
        echo "Destructor called! Object destroyed.";
    }
}

// Creating an object (instance) of the class
$obj = new MyClass();

// The object will be automatically destroyed at the end of the script
?>
