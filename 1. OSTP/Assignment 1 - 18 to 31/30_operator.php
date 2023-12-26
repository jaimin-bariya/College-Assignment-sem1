<?php
class MyClass {
    const MY_CONSTANT = 10;
    public static $staticVar = 20;

    public static function myStaticMethod() {
        return "Static method called";
    }
}

echo MyClass::MY_CONSTANT; // Outputs: 10
echo MyClass::$staticVar; // Outputs: 20
echo MyClass::myStaticMethod(); // Outputs: Static method called
?>
