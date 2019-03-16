#include <iostream>

using namespace std;

int fib(int n) {
    if (n <= 1) {
        return n;
    }

    return fib(n - 1) + fib(n - 2);
}

int main() {
    int value;
	cout << "Enter the number of the fibonacci to calculate: ";
    cin >> value;
    for (int i = 0; i <= value; i++) {
		cout << "The fibonacci " << i << " is " << fib(i) << endl;
    }
    return 0;
}
