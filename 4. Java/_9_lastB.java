/*
 * b. w.a.p in java to create a class circle to calculate and display the area of the circle to 
implement Final Variable in Java
 */
class Circle {
    private final double PI = 3.14159; // Final variable for PI
    private double radius;

    public Circle(double radius) {
        this.radius = radius;
    }

    public double calculateArea() {
        return PI * radius * radius; // Calculation of the area of the circle using the final variable PI
    }

    public void displayArea() {
        double area = calculateArea();
        System.out.println("Area of the circle: " + area);
    }
}


public class _9_lastB {
    
    public static void main(String[] args) {
        Circle circle = new Circle(5.0);
        circle.displayArea(); // Display the calculated area of the circle
    }
}
