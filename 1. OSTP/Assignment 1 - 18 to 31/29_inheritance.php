<?php
class Vehicle {
    public $make;
    public $model;
    public $year;

    public function __construct($make, $model, $year) {
        $this->make = $make;
        $this->model = $model;
        $this->year = $year;
    }
}

class Car extends Vehicle {
    public $numDoors;

    public function __construct($make, $model, $year, $numDoors) {
        parent::__construct($make, $model, $year);
        $this->numDoors = $numDoors;
    }
}

$car = new Car("Toyota", "Corolla", 2022, 4);
?>
