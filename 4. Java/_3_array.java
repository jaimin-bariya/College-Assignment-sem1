/*
 * 3. Array
 * a. Write a program to accept an array of integers from the user through the command line and find prime numbers from the array
 */


import java.util.Scanner;

public class _3_array {


    // make method to check prime or not
    public static boolean isPrime(int number){

        if (number <= 1){
            return false;
        }

        for (int i = 2; i <= Math.sqrt(number); i++){
            if (number%i == 0){
                return false;
            }
        }

        return true;
        
    }


    



    public static void main(String[] args){

    Scanner scann = new Scanner(System.in);

    System.out.println("enter ypur erray here : ");
    String userInput = scann.nextLine();
    String[] userArray = userInput.split(" ");



    // creating a int arry from str array
    int[] numArray = new int[userArray.length]; // decide length of new int array
    for ( int i = 0; i < userArray.length; i++){
        numArray[i] = Integer.parseInt(userArray[i]);
    }


    // check prime or not and print prime number
    for (int each : numArray){
        if (isPrime(each) == true) {
            System.out.print(each + " ");
        }
    }
    System.out.println();



    }


}
    
