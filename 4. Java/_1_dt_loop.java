/*
 * -----------------------------------------------------A------------------------------------------------------------------ 
 * WAP for swapping  
 * find a factorial value
 * Perform swapping without using a third variable.
 * 
 *-----------------------------------------------------B------------------------------------------------------------------
 * Number is even or odd 
 * 
 * 
 * -----------------------------------------------------c------------------------------------------------------------------
 * Write a Java program to check whether a number is prime or not
 * 
 *-----------------------------------------------------D------------------------------------------------------------------
 * WAP print a Fibonacci series with user input.
 * 
 * 
 * -----------------------------------------------------E------------------------------------------------------------------
 * Write a Java Program to Check the Armstrong Number
 * 
 * 
 *  * -----------------------------------------------------F------------------------------------------------------------------
 *  Swapping Two Numbers in Java Using Third Variabl
 */



import java.util.Scanner; 


public class _1_dt_loop {

    public static void main(String[] args){
        


        // WAP for swapping 
        int a = 10, b = 20;
        System.out.println("value of a is " + a + " and b is " + b);
        int c = b;
        b = a;
        a = c;
        System.out.println("value of a is " + a + " and b is " + b);



        // WAP to get factorial of a numbers
        Scanner scanner = new Scanner(System.in); // create scanner object (create scanner object one time and can use multiple time in same code)

        System.out.println("enter number here : "); 
        int num = scanner.nextInt();
        
        long factorial_value = 1;
        for (int i = 1; i <= num; i++){
            factorial_value *= i;
        }

        System.out.println("Factorial value is " + factorial_value);



        // WAP to swap without third variable 

        int x = 5, y = 10;
        System.out.println("x and y before swapping "+ x + " " + y);
        x = x+y; // 5 + 10 = 15
        y = x-y;  // 15-5 = 10
        x = x-y;
        System.out.println("x and y after swapping "+ x + " " + y);







    // -----------------------------------------------------B------------------------------------------------------------------
    // number is evern and odd


    System.out.println("enter number here to check even or odd : ");
    int check_even_odd = scanner.nextInt();

    if (check_even_odd%2 == 0){
        System.out.println(check_even_odd + " number is even");
    }
    else{
        System.out.println(check_even_odd + " is odd");
    }


    



    //  * -----------------------------------------------------c------------------------------------------------------------------
    // * Write a Java program to check whether a number is prime or not

    System.out.println("enter your number here to check prime or not");
    int prime_or_not = scanner.nextInt();

    boolean isPrime = true;

    if (prime_or_not <= 1){
        isPrime = false;
    }
    else{
        for (int i = 2; i <= Math.sqrt(prime_or_not); i++){
            if (prime_or_not % i == 0){
                isPrime = false;
                break;
            }
            
        }
    
    }

    if (isPrime){
        System.out.println(prime_or_not + " number is prime");
    }
    else {
        System.out.println(prime_or_not + " number is not prime");
    }





    //  *-----------------------------------------------------D------------------------------------------------------------------
    // * WAP print a Fibonacci series with user input.

    System.out.println("enter any number here to print Nth numbers of fibonacci series");
    int fibo = scanner.nextInt();

    int firstterm = 0, secondterm = 1;
    System.out.print("Fibonacci series : ");

    for (int i = 1; i <= fibo; i++){
        
        System.out.print(firstterm + " ");
        int nextterm = firstterm + secondterm; 
        firstterm = secondterm;
        secondterm = nextterm;
        
    
    } 
    System.out.println(); // just a new line




    

    //  * -----------------------------------------------------E------------------------------------------------------------------
    // * Write a Java Program to Check the Armstrong Number

    System.out.println("check your number is armstrong or not : ");
    int arm = scanner.nextInt();
    int originalNumber = arm;

    // make int in string to find total number of digit in number
    String str_arm = Integer.toString(arm);
    int base = str_arm.length();

    long sum = 0; // count the sum of value

    while (arm > 0){
        int digit = arm%10;
        sum += Math.pow(digit, base);
        arm = arm/10;
    }
    

    if (sum == originalNumber){
        System.out.println(originalNumber + " number is the armstrong number");
    }
    else {
        System.out.println(originalNumber + " number is not armstrong number");
    }





    //  *  * -----------------------------------------------------F------------------------------------------------------------------
    // *  Swapping Two Numbers in Java Using Third Variabl


    System.out.println("enter first number here : ");
    int firstNumber = scanner.nextInt();

    System.out.println("enter second number here : ");
    int secondNumber = scanner.nextInt();

    System.out.println("before swapping = " + firstNumber + " and " + secondNumber);
    int thirdNumber = secondNumber;
    secondNumber = firstNumber;
    firstNumber = thirdNumber;
    System.out.println("After swapping = " + firstNumber + " and " + secondNumber);




    }

}