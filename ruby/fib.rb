def fib(n)
    return n if n <= 1
    fib(n - 1) + fib(n - 2)
end

puts('Enter the number of the fibonacci to calculate')
number = gets().to_i
for i in 0..number do
    puts("The fibonacci of #{i} is #{fib(i)}")
end
