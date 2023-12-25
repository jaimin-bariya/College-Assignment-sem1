
/*Write a program to print the area of a rectangle by creating a class named 'Area' taking the values of its length and breadth as
parameters of its constructor and having a method named 'returnArea' which returns the area of the rectangle. Length and breadth
of rectangle are entered through keyboard. */

import java.util.Scanner;


class Area{

    private int length;
    private int width;

    // constructor
    public Area(int l, int w){
        this.length = l;
        this.width = w;
    }


    public int returnArea(){
        return (length * width);
    }
}




public class _4_Rectangle_program2 {
    
    public static void main(String[] args) {


    Scanner scanner = new Scanner(System.in);

    System.out.println("enter length here : ");
    int length = scanner.nextInt();


    System.out.println("enter width here : ");
    int width = scanner.nextInt();


    // make a class object from class Area
    Area r1 = new Area(length, width);
    System.out.println("area of rectangle from given value is " + r1.returnArea());


        
    scanner.close();
    }
}
