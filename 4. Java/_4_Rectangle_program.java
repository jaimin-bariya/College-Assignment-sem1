/*Write a program to print the area of two rectangles having sides (4,5) and (5,8) respectively by creating a class named
'Rectangle' with a method named 'Area' which returns the area and length and breadth passed as parameters to its constructor. */



class Rectangle{

    private int length;
    private int width;


    // constructor 
    public Rectangle(int l, int w){
        this.length = l;
        this.width = w;
    }


    public int Area(){
        return (width * length);
    }

}






public class _4_Rectangle_program {
    
    public static void main(String[] args) {


        Rectangle r1 = new Rectangle(4, 5);
        Rectangle r2 = new Rectangle(5, 8);


        System.out.println("area of r1 is " + r1.Area());
        System.out.println("area of r2 is " + r2.Area());
    
        
    }

    
    


}
