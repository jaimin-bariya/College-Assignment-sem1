/*
a. Write a program to create a class with two methods with same name addfunc(), 
one accepting two integer parameters and other accepting two double parameters. When method is called, 
the appropriate method should be selected depending on parameters passed(method overloading. 
*/

class Calculator {
    public int addfunc(int a, int b){
        return a+b;
    }

    public int addfunc(int a, int b, int c){
        return a+b+c;
    }

}


public class _6_Methodoverloading {

    public static void main(String[] args) {
        Calculator cal = new Calculator();
        int ans1 = cal.addfunc(10, 20);
        int ans2 = cal.addfunc(100, 200, 300);


    System.out.println(ans1);
    System.out.println(ans2);
    }
    
}
