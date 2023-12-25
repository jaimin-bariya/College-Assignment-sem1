/*
 * Write a program to accept a number from the user through the command line and 
 * display whether the given number is palindrome or not
 * 
 * 
 *  Java Pattern Programs
 *  Right half pytamid pattern
 * 
 * 
 * 
 */

import java.util.Scanner;

public class _2_Looping_and_Control_structure {


    public static void main(String[] args){


    Scanner scanner = new Scanner(System.in); // make one object for scanning


    System.out.println("enter any number here : ");
    int numberPeli = scanner.nextInt(); // save as a integer  155

    int originalNumber = numberPeli;

    int sum = 0;
    int r;
    while (numberPeli > 0) {
        r = numberPeli%10; // 5, 5 , 1 
        sum = (sum*10)+ r; // 5, 55, 551
        numberPeli = numberPeli/10; // 155, 15, 1
   
    }

    if (sum == originalNumber){
        System.out.println(originalNumber + " is the Pelidrome number");
    }
    else {
        System.out.println("not pelidrome number");
    }




    // ------------------------------------ Java Pattern Programs -------------------------------------------------------
    // number triangle pattern 

    System.out.println("enter any number here : ");
    int pattern1 = scanner.nextInt();

    System.out.println("number triabgle pattern");
    for (int i = 1; i <= pattern1; i++){

        for (int j = 1; j <= (pattern1-i); j++){
            System.out.print(" ");

        }

        for (int k = 1; k <= i; k++){
                System.out.print(i + " ");
            }
        System.out.println();
    }
    

    System.out.println();

     // ------------------------------------ Java Pattern Programs -------------------------------------------------------
    // Right hald pyramid pattern

    System.out.println(" Right hald pyramid pattern");


    for (int i = 1; i <= pattern1; i++){
        for (int j = 1; j <= i; j++){
            System.out.print("*");
        }
        System.out.println();
    }

    
    // ------------------------------------ Java Pattern Programs -------------------------------------------------------
    // left hald pyramid pattern

    for (int i = 1; i <= pattern1; i++){
        for (int j = 1; j <= ((pattern1- i)); j++){
            System.out.print(" ");
        }
        for (int k = 1; k <= i; k++){
            System.out.print("*");
        }

    System.out.println();
    }

    System.out.println();
    

    // ------------------------------------ Java Pattern Programs -------------------------------------------------------
    // Reverse right Half pyramid

    System.out.println("Reverse right Half pyramid");


    for (int i = pattern1; i >= 1; i--){
        for (int j = 1; j <= i; j++){
            System.out.print("*");
        }

        System.out.println();

    }
        
    System.out.println("Triangle Star Pattern");

    for (int i = 1; i <= pattern1; i++){

        for (int j = 1; j <= (pattern1 - i); j++){
            System.out.print(" ");
        }

        for (int k = 1; k <= i; k++){
            System.out.print("* ");
        }

        System.out.println();
    }



    }
    
}
