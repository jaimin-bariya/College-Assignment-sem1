/*
d. Write a Java program to create an abstract class BankAccount with abstract methods deposit() 
and withdraw(). Create subclasses: SavingsAccount and CurrentAccount that extend the BankAccount class 
and implement the respective methods to handle deposits and withdrawals for each account type.
 */


abstract class BankAccount {
    double balance;
    public abstract void deposit(double amount);
    public abstract void withdraw(double amount);
}

class SavingsAccount extends BankAccount {
    public void deposit(double amount) { /* Logic for deposit */ }
    public void withdraw(double amount) { /* Logic for withdraw */ }
}

class CurrentAccount extends BankAccount {
    public void deposit(double amount) { /* Logic for deposit */ }
    public void withdraw(double amount) { /* Logic for withdraw */ }
}

public class _9_lastD {
    public static void main(String[] args) {
        SavingsAccount savingsAccount = new SavingsAccount();
        savingsAccount.deposit(5000);
        savingsAccount.withdraw(2000);

        CurrentAccount currentAccount = new CurrentAccount();
        currentAccount.deposit(10000);
        currentAccount.withdraw(5000);
    }
}
