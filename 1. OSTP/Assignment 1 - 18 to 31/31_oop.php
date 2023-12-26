<?php
class Database {
    private $conn;

    public function __construct($host, $username, $password, $database) {
        $this->conn = new mysqli($host, $username, $password, $database);
        if ($this->conn->connect_error) die("Connection failed: " . $this->conn->connect_error);
    }

    public function query($sql) {
        return $this->conn->query($sql);
    }

    public function select($table) {
        $sql = "SELECT * FROM $table";
        $result = $this->conn->query($sql);
        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function insert($table, $columns, $values) {
        $sql = "INSERT INTO $table ($columns) VALUES ($values)";
        return $this->query($sql);
    }

    public function update($table, $set, $condition) {
        $sql = "UPDATE $table SET $set WHERE $condition";
        return $this->query($sql);
    }

    public function delete($table, $condition) {
        $sql = "DELETE FROM $table WHERE $condition";
        return $this->query($sql);
    }

    public function close() {
        $this->conn->close();
    }
}

// Usage
$db = new Database("localhost", "your_username", "your_password", "your_database");

// Insert
$db->insert("users", "name, email", "'John Doe', 'john@example.com'");

// Update
$db->update("users", "name='Jane Smith', email='jane@example.com'", "id=1");

// Select
$data = $db->select("users");
print_r($data);

// Delete
$db->delete("users", "id=1");

$db->close();
?>
