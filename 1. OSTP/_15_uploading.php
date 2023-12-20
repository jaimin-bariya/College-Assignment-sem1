<?php
$targetDirectory = "D:/"; // Directory where files will be uploaded
$targetFile = $targetDirectory . basename($_FILES["fileToUpload"]["name"]);
$fileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));

echo "Your ", $fileType ," File is uploaded";


?>
