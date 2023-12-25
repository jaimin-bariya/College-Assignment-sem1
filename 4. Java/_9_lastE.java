/*
 * 
e. Write a Java program to create an abstract class Shape3D with abstract methods calculateVolume() 
and calculateSurfaceArea(). Create subclasses Sphere and Cube that extend the Shape3D class and implement 
the respective methods to calculate the volume and surface area of each shape.
 */




abstract class Shape3D {
    public abstract double calculateVolume();
    public abstract double calculateSurfaceArea();
}

class Sphere extends Shape3D {
    public double calculateVolume() { /* Calculation for volume of Sphere */ }
    public double calculateSurfaceArea() { /* Calculation for surface area of Sphere */ }
}

class Cube extends Shape3D {
    public double calculateVolume() { /* Calculation for volume of Cube */ }
    public double calculateSurfaceArea() { /* Calculation for surface area of Cube */ }
}

public class Main {
    public static void main(String[] args) {
        Sphere sphere = new Sphere();
        double sphereVolume = sphere.calculateVolume();
        double sphereSurfaceArea = sphere.calculateSurfaceArea();

        Cube cube = new Cube();
        double cubeVolume = cube.calculateVolume();
        double cubeSurfaceArea = cube.calculateSurfaceArea();
    }
}


