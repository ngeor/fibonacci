#include <stdio.h>

int fib(int n) {
    if (n <= 1) {
        return n;
    }

    return fib(n - 1) + fib(n - 2);
}

int main() {
    int value;
    printf("Enter the number of the fibonacci to calculate: ");
    scanf("%d", &value);
    for (int i = 0; i <= value; i++) {
        printf(
            "The fibonacci %d is %d\n", i, fib(i)
        );
    }
    return 0;
}
