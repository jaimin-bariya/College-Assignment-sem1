/*
9. Final class, abstract class, and interface
*/


/*
a. Write a program to calculate the area, circumference and volume for all shapes. 
[Perform this application using final class, abstract class and interface]
*/

// using final class
final class FinalShapes {
    public double calculateArea() {
        return 0; // Default implementation
    }

    public double calculateCircumference() {
        return 0; // Default implementation
    }

    public double calculateVolume() {
        return 0; // Default implementation
    }
}

// using abstract 
abstract class AbstractShapes {
    public abstract double calculateArea();
    public abstract double calculateCircumference();
    public abstract double calculateVolume();
}

class Circle extends AbstractShapes {
    // Implement methods for calculating area, circumference, and volume for Circle
}

class Square extends AbstractShapes {
    // Implement methods for calculating area, circumference, and volume for Square
}


// using interfaces
interface Shapes {
    double calculateArea();
    double calculateCircumference();
    double calculateVolume();
}

class Triangle implements Shapes {
    // Implement methods for calculating area, circumference, and volume for Triangle
}

class Sphere implements Shapes {
    // Implement methods for calculating area, circumference, and volume for Sphere
}




/*
b. w.a.p in java to create a class circle to calculate and display the area of the circle to 
implement Final Variable in Java
 */
