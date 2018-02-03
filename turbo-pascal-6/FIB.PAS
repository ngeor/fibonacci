program Fibonacci;

function fib(n: Integer): Integer;
begin
  if n <= 1 then
    fib := n
  else
    fib := fib(n - 1) + fib(n - 2);
end;

var
  i, n: Integer;
begin
  Write('Enter the N to calculate the fibonacci ');
  ReadLn(n);
  for i := 0 to n do
    WriteLn('Fibonacci of ', i, ' is ', fib(i));
end.
