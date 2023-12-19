<?php


echo " <br> <br> Program no 8. Write a program to perform all the string built in functions. --------------------------------- <br>";

$hw = "hello world";
$name = "human";

echo $hw, "<br>";
echo $name, "<br>";


echo " <br> <hr> <br>";

// 1 - str comparision function 
echo "<br> 1 - str comparision functon <br>";
$result = strcmp($hw, $name);
echo "result = ", $result;
// $result will be a negative value


echo " <br> <hr> <br>";

echo "<br> 2 - str replace function <br>";
$newText = str_replace("World", "John", $hw);
echo $hw;

echo " <br> <hr> <br>";


echo "<br> 3 - str length function <br>";
$len = strlen($name);
echo "length = ", $len;


echo " <br> <hr> <br>";

echo "<br> 4 - str reverse function <br>";
$re = strrev($name);
echo $re;


echo " <br> <hr> <br>";


echo "<br> 5 - str to lower function <br>";
$lo = strtolower($name);
echo "lower - ", $lo;


echo " <br> <hr> <br>";


echo "<br> 6 - str to upper function  <br>";
$up = strtoupper($name);
echo "upper - ", $up;


echo " <br> <hr> <br>";


echo "<br> 7 - str ucword function - (uppercase the first character for each word) <br>";
$uc = ucwords($hw);
echo "upper first character - ", $uc;


echo " <br> <hr> <br>";

echo "<br> 8 - word count function <br> ";
$wc = str_word_count($hw);
echo "word count = ", $wc;



?>