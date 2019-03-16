import java.util.Scanner;

/**
 * Calculates numbers of the Fibonacci sequence.
 */
public class Fibonacci {
    public static void main(String[] args) {
        new Fibonacci().run();
    }

    private void run() {
        System.out.print("Enter the number of the fibonacci to calculate: ");
        int value = new Scanner(System.in).nextInt();
        for (int i = 0; i <= value; i++) {
            System.out.println(
                String.format("The fibonacci %d is %d", i, fibonacci(i))
            );
        }
    }

    private int fibonacci(int n) {
        if (n <= 1) {
            return n;
        }

        return fibonacci(n - 1) + fibonacci(n - 2);
    }
}
