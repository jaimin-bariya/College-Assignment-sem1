
/*
a. Write a Java program to create a class called Shape with a method called getArea(). 
Create a subclass called Rectangle that overrides the getArea() method to calculate the area of a rectangle.
*/
class Shape {

    public void getArea() {
        System.out.println("parent method");
    }
}

class Rectangle extends Shape{
    
    public void getArea() {
        System.out.println("child method");
    }
}



/*
b. Write a Java program to create a class called Employee with methods called work() and getSalary().
Create a subclass called HRManager that overrides the work() method and adds a new method called addEmployee().
*/



class Employee {
    public void work() {
        System.out.println("Employee is working.");
    }

    public double getSalary() {
        return 50000.0; // Sample salary for an employee
    }
}

class HRManager extends Employee {
    @Override
    public void work() {
        System.out.println("HR Manager is working differently."); // Overriding work() method
    }

    public void addEmployee() {
        System.out.println("HR Manager is adding an employee."); // New method in HRManager
    }
}



/*
c. Write a Java program to create a class known as Person with methods called getFirstName() and getLastName(). 
Create a subclass called Employee that adds a new method named getEmployeeId() and overrides the getLastName() 
method to include the employee's job title.
*/

class Person {
    private String firstName;
    private String lastName;

    public Person(String firstName, String lastName) {
        this.firstName = firstName;
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }
}

class Employees extends Person {
    private int employeeId;
    private String jobTitle;

    public Employees(String firstName, String lastName, int employeeId, String jobTitle) {
        super(firstName, lastName);
        this.employeeId = employeeId;
        this.jobTitle = jobTitle;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    @Override
    public String getLastName() {
        return super.getLastName() + " (" + jobTitle + ")"; // Overrides getLastName() to include job title
    }
}



/*
d. Write a Java program to create a class called Shape with methods called getPerimeter() and getArea(). 
Create a subclass called Circle that overrides the getPerimeter() and getArea() methods to calculate the area and 
perimeter of a circle.
*/

class Shapes {
    public double getPerimeter() {
        return 0.0; // Default implementation for perimeter
    }

    public double getArea() {
        return 0.0; // Default implementation for area
    }
}

class Circle extends Shapes {
    private double radius;

    public Circle(double radius) {
        this.radius = radius;
    }

    @Override
    public double getPerimeter() {
        return 2 * Math.PI * radius; // Calculates perimeter of circle
    }

    @Override
    public double getArea() {
        return Math.PI * radius * radius; // Calculates area of circle
    }
}

        


public class _8_Methodoverriding {
    
    public static void main(String[] args) {
        


        // 1 -----------------------------------------------------------------------------
        Rectangle r1 = new Rectangle();
        r1.getArea();



        // 2 - -----------------------------------------------------------------------------
        Employee emp = new Employee();
        emp.work(); // Output: Employee is working.
        System.out.println("Salary: " + emp.getSalary()); // Output: Salary: 50000.0

        HRManager hrManager = new HRManager();
        hrManager.work(); // Output: HR Manager is working differently.
        System.out.println("Salary: " + hrManager.getSalary()); // Output: Salary: 50000.0
        hrManager.addEmployee(); // Output: HR Manager is adding an employee.



        // 3 -----------------------------------------------------------------------------
        Person person = new Person("John", "Doe");
        System.out.println("First Name: " + person.getFirstName());
        System.out.println("Last Name: " + person.getLastName());

        Employees employee = new Employees("Alice", "Smith", 1001, "Manager");
        System.out.println("First Name: " + employee.getFirstName());
        System.out.println("Last Name: " + employee.getLastName());
        System.out.println("Employee ID: " + employee.getEmployeeId());




        // 4 ---------------------------------------------------------------------------------
        Circle circle = new Circle(5.0);
        System.out.println("Area of the circle: " + circle.getArea());
        System.out.println("Perimeter of the circle: " + circle.getPerimeter());
    }

}







