<?php

echo " <br> <br> Program no 2 - Write a program to define Static, global and local variable. --------------------------------- <br>";
// local variable
function Myfunc() {
    $localVariable = 10;
    echo "local varianle :- ",  $localVariable ,'<br>';
}
Myfunc();



//  Global Variable
$globalVar = 20; // Global variable
function myFunction() {
    global $globalVar;
    echo "Global Variable :-", $globalVar, "<br>"; // Accessible inside the function
}
myFunction();


// static variable 
function Counter() {
    static $count = 10;
    $count++;
    echo "Static Variable :- ", $count, "<br>"; 
}
Counter();
Counter();

?>
