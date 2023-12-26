<?php
// Defining a class
class Car {
    // Properties
    public $make;
    public $model;
    public $year;

    // Constructor
    public function __construct($make, $model, $year) {
        $this->make = $make;
        $this->model = $model;
        $this->year = $year;
    }

    // Method to display car details
    public function displayDetails() {
        echo "Car Details: Make - {$this->make}, Model - {$this->model}, Year - {$this->year}";
    }
}

// Creating an object (instance) of the class
$carObj = new Car("Toyota", "Corolla", 2022);

// Accessing object properties and methods
$carObj->displayDetails();
?>
