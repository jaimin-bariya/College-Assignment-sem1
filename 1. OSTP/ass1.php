<!DOCTYPE html>


<html>

<head>
    
    <title> PHP Tutorial </title>

</head>

<body>

    This is my first PHP Website <br> <br>
    <?php


    // 1 - First program 
    echo "program no 1 ----------------------------------Print hello world------------------------------------------- <br> ";
    echo "Hello world <br>";



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


    echo " <br> <br> Program no 4.	Write a program to perform arithmetic operators. --------------------------------- <br>";
    $a = 10;
    $b = 20;


    "<br>";
    echo $a + $b,  "<br>";
    echo $b - $a ,"<br>";
    echo $a - $b ,"<br>";
    echo $b / $a, "<br>";
    echo $a * $b, "<br>";
    echo $a ** $b, "<br>";


    echo " <br> <br> Program no 5. Write a program to perform conditional structure. --------------------------------- <br>";

    $x = 10;

    if ($x < 15){
        echo "You are under 20";
    }
    elseif ($x >= 20) {
        echo "you are over 20";
    }
    else {
        echo "else";
    }







    echo " <br> <br> Program no 6. Write a program to perform looping structure. --------------------------------- <br>";

    
    $counter = 0;

    while ($counter < 5) {
        echo "Count: $counter<br>";
        $counter++;
    } 




echo " <br> <br> Program no 7. Write a program to perform all the array built in function. --------------------------------- <br>";

    $fruits = array("apple", "banana", "orange");
    foreach ($fruits as $f){
        echo $f, "<br>";
    }



 echo " <br> <br> Program no 8. Write a program to perform all the string built in functions. --------------------------------- <br>";

    $s = "hello world <br>";
    echo $s;



/*
9.	Pattern:
1
12
123
1234

*/


    $ab = 4;

    for ($i = 1; $i <= $ab; $i++){
        for ($j = 1; $j <= $i; $j++){
            echo $j;   
        }
        echo "<br>";
    }


    /*
    10.	Pattern :
1
22
333
4444

    */

    for ($i = 1; $i <= $ab; $i++){
        for ($j = 1; $j <= $i; $j++){
            echo $i;   
        }
        echo "<br>";
    }

/*
11.	Pattern:
1234
123
12


*/

    for ($i = $ab; $i >= 0; $i--){
        for ($j = 1; $j <= $i; $j++){
            echo $j;   
        }
        echo "<br>";
    }




    for ($i = $ab; $i >= 0; $i--){
        for ($j = 1; $j <= $i; $j++){
            echo $i;   
        }
        echo "<br>";
    }



    

    ?>





</body>

</html>