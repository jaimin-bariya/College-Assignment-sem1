/*
Inheritance
Write a program to create a class Publisher with attributes publisher name and publisher id. 
Derive a subclass Book with attributes bookname, bookid and author name. All these data should be entered by the user. 
Create two methods getdata() and showdata() to display the details of book and publisher.
 
 */

import java.util.Scanner;


class Publisher{
    private String publisherName;
    private int publisherId;

    public void getData(Scanner scan) {


        System.out.println("Enter Publisher Name: ");
        publisherName = scan.nextLine();

        System.out.println("Enter Publisher ID: ");
        publisherId = scan.nextInt();
        scan.nextLine();
        
        
    }

    public void showData() {
        System.out.println("Publisher Name: " + publisherName);
        System.out.println("Publisher Id: " + publisherId);

    }

}


class Book extends Publisher{
    private String bookName;
    private int bookID;
    private String authorName;


    public void getData(Scanner scan) {
        super.getData(scan);

        System.out.println("enter book name: ");
        bookName = scan.nextLine();

        System.out.println("enter book ID: ");
        bookID = scan.nextInt();
        scan.nextLine();
        

        System.out.println("enter Author name: ");
        authorName = scan.nextLine();

        
        
    }


    public void showData(){
        super.showData();

        System.out.println("Book Name: " + bookName);
        System.out.println("Book ID: " + bookID);
        System.out.println("Author Name: " + authorName);
    }



}


public class _5_Inheritance {

    public static void main(String[] args) {


        Scanner scan = new Scanner(System.in);
        Book book01 = new Book();

        book01.getData(scan);
        book01.showData();


        scan.close();
    }
}