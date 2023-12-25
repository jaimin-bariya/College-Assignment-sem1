
class Stack{
    private int[] stackArray; // creating a stack array to store data int
    private int Top; 

    public Stack(){
        stackArray = new int[10];
        Top = -1;
    }

    public void Push(int number){
        if (Top == 9){
            System.out.println("stack is full");
            return;
        }
        else{
            
            stackArray[++Top] = number;
        }
    }

    public int Pop(){
        if (Top == -1){
            System.out.println("stack is empty - underflow");
            return -1;
        }
        else{
            return stackArray[Top--];
        }

        
        
    }





}



public class _4_classtopic {
    
    public static void main(String[] args) {
     
    Stack stack = new Stack(); // initialize a object form Stack class

    stack.Push(10);
    stack.Push(20);
    stack.Push(30);
    stack.Push(40);
    stack.Push(50);


    System.out.println(stack.Pop());
    System.out.println(stack.Pop());
    
        

    }

}
