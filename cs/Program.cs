using System;

namespace cs
{
    class Program
    {
        static void Main(string[] args)
        {
            new Program().Run();
        }

        void Run()
        {
            Console.Write("Enter the fibonacci number to calculate: ");
            int n = Convert.ToInt32(Console.ReadLine());
            for (var i = 0; i <= n; i++)
            {
                Console.WriteLine("The fibonacci of {0} is {1}", i, Fibonacci(i));
            }
        }

        private int Fibonacci(int number)
        {
            if (number <= 1)
            {
                return number;
            }

            return Fibonacci(number - 1) + Fibonacci(number - 2);
        }
    }
}
