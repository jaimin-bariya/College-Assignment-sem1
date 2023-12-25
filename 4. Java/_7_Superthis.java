/*
Declare a variable called x with integer as the data type in base class and subclass. 
Make a method named as show() which displays the value of x in the superclass and subclass.
 */

class Parent {
    public int x = 100;

    }

class Child extends Parent{
    private int x = 200;

    public void show(){
        System.out.println("class variable using this: " + x);
        System.out.println("child class variable using this: " + this.x);
        System.out.println("parent class variable using super: " + super.x);
    }
}


public class _7_Superthis {
    
    public static void main(String[] args) {
        Child child = new Child();
        child.show();
    }
    
}
