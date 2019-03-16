'''
Calculates numbers of the Fibonacci sequence.
'''


def fib(number):
    '''
    Calculates numbers of the Fibonacci sequence.
    '''
    if number <= 1:
        return number
    return fib(number - 1) + fib(number - 2)


def main():
    '''
    Main entrypoint to the program.
    '''
    print('Enter the number of the fibonacci to calculate')
    data = int(input())
    for number in range(0, data):
        print('Fibonacci of ', number, 'is', fib(number))


if __name__ == "__main__":
    main()
