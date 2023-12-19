<?php

$number = array(1, 2, 3, 4, 5);
    foreach ($number as $f){
        echo $f;
    }

echo "<br>";

// 1 - array push function 
array_push($number, 6, 7, 8);
echo " <br> 1 - array push function <br>";
    foreach($number as $f){
        echo $f;
    }

echo "<hr>";

// 2 - array pop function 
$lastNumber = array_pop($number);
echo " <br> 2 - array pop function";
echo " <br> last fruit of array / popped element: ", $lastNumber;

echo "<hr>";

// 3 - array reverse function 
$reverseArray = array_reverse($number);
echo "<br> 3 - array reverse function <br>";
    foreach($reverseArray as $f){
        echo $f;
    }

echo " <br> <hr> <br>";

// 4 - array slice function 
$slice = array_slice($number, 2, 4);
print_r($number);
echo " <br> 4 - array slice function ";
    foreach($slice as $s){
        echo $s, " ";
    }

echo " <br> <hr> <br>";


// 5 - count function 
echo " <br> 5 - count function";
$c = count($number);
echo "count = ", $c;


echo " <br> <hr> <br>";



?>
