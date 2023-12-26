<!DOCTYPE html>
<html>
<head>
    <title>jQuery Events</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function(){
            // Click event
            $("#clickButton").click(function(){
                alert("Click event occurred");
            });

            // Keypress event
            $("#keypressInput").keypress(function(){
                console.log("Keypress event occurred");
            });

            // Submit event
            $("#submitForm").submit(function(){
                alert("Form submitted");
            });
        });
    </script>
</head>
<body>
    <!-- Click event -->
    <button id="clickButton">Click me</button><br><br>

    <!-- Keypress event -->
    <input type="text" id="keypressInput" placeholder="Keypress event"><br><br>

    <!-- Submit event -->
    <form id="submitForm">
        <input type="submit" value="Submit">
    </form>
</body>
</html>
