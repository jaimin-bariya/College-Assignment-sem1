<!DOCTYPE html>
<html>
<head>
    <title>jQuery Effects</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function(){
            $("#hideButton").click(() => $("#hideShowDiv").toggle(1000));
            $("#fadeOutButton").click(() => $("#fadeOutDiv").fadeToggle(1000));
            $("#slideUpButton").click(() => $("#slideUpDiv").slideToggle(1000));
        });
    </script>
</head>
<body>
    <button id="hideButton">Hide/Show</button>
    <button id="fadeOutButton">Fade</button>
    <button id="slideUpButton">Slide</button>
    <div id="hideShowDiv">Hide/Show Effect</div>
    <div id="fadeOutDiv" style="background-color: lightblue;">Fade Effect</div>
    <div id="slideUpDiv" style="height: 100px; background-color: lightgreen;">Slide Effect</div>
</body>
</html>
