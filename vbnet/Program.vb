Imports System

Module Program
    Sub Main(args As String())
        Console.Write("Enter the fibonacci number to calculate: ")
        Dim n = Convert.ToInt32(Console.ReadLine())
        For i = 0 To n
            Console.WriteLine("The fibonacci of {0} is {1}", i, Fibonacci(i))
        Next
    End Sub

    Function Fibonacci(n as Integer)
        If n <= 1 Then
            Return n
        End If

        Return Fibonacci(n - 1) + Fibonacci(n - 2)
    End Function
End Module
