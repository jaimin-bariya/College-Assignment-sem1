/*
 * 
c. w.a.p in Java to create a class Animal to Implement Final Methods the general 
characteristics of an Animal along with the constant variables to store the number of legs, ears eyes, 
and whether the animal has a tail. Create a subclass wolf to display the additional characteristics.
 */

class Animal {
    // Final variables to store general characteristics
    final int numberOfLegs;
    final int numberOfEars;
    final int numberOfEyes;
    final boolean hasTail;

    // Constructor to initialize general characteristics
    public Animal(int legs, int ears, int eyes, boolean hasTail) {
        this.numberOfLegs = legs;
        this.numberOfEars = ears;
        this.numberOfEyes = eyes;
        this.hasTail = hasTail;
    }

    // Final method displaying general characteristics of the animal
    public final void displayGeneralCharacteristics() {
        System.out.println("General Characteristics of the Animal:");
        System.out.println("Number of Legs: " + numberOfLegs);
        System.out.println("Number of Ears: " + numberOfEars);
        System.out.println("Number of Eyes: " + numberOfEyes);
        System.out.println("Has Tail: " + (hasTail ? "Yes" : "No"));
    }
}

// Subclass Wolf inheriting from Animal
class Wolf extends Animal {
    // Additional characteristics specific to Wolf
    final String furColor;
    final boolean isPackAnimal;

    // Constructor to initialize Wolf-specific characteristics
    public Wolf(int legs, int ears, int eyes, boolean hasTail, String furColor, boolean isPackAnimal) {
        super(legs, ears, eyes, hasTail);
        this.furColor = furColor;
        this.isPackAnimal = isPackAnimal;
    }

    // Method to display Wolf-specific characteristics
    public void displayAdditionalCharacteristics() {
        System.out.println("\nAdditional Characteristics of the Wolf:");
        System.out.println("Fur Color: " + furColor);
        System.out.println("Is a Pack Animal: " + (isPackAnimal ? "Yes" : "No"));
    }
}

public class _9_lastC {
    public static void main(String[] args) {
        // Creating an instance of Wolf and displaying characteristics
        Wolf wolf = new Wolf(4, 2, 2, true, "Gray", true);
        wolf.displayGeneralCharacteristics();
        wolf.displayAdditionalCharacteristics();
    }
}
