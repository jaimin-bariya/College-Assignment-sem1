<?php
$to_email = "recipient@example.com"; // Recipient's email address
$subject = "Test Email"; // Email subject
$body = "This is a test email sent from a PHP script."; // Email body
$headers = "From: sender@example.com"; // Sender's email address

// Sending email
if (mail($to_email, $subject, $body, $headers)) {
    echo "Email sent successfully to $to_email";
} else {
    echo "Email sending failed...";
}
?>
