<?php

$ab = 4;




for ($i = 1; $i <= $ab; $i++){
    for ($j = 1; $j <= $i; $j++){
        echo $j;   
    }
    echo "<br>";
}


echo " <br> <hr> <br>";

for ($i = 1; $i <= $ab; $i++){
    for ($j = 1; $j <= $i; $j++){
        echo $i;   
    }
    echo "<br>";
}


echo " <br> <hr> <br>";


for ($i = $ab; $i >= 0; $i--){
    for ($j = 1; $j <= $i; $j++){
        echo $j;   
    }
    echo "<br>";
}


echo " <br> <hr> <br>";


for ($i = $ab; $i >= 0; $i--){
    for ($j = 1; $j <= $i; $j++){
        echo $i;   
    }
    echo "<br>";
}




?>