def fibonacci(n)
  n1 = 0
  n2 = 1
  (2..n).each do |n|
    c = n1 + n2
    n1 = n2
    n2 = c
  end
  n2
end

def fibonacci_recursive(n)
  if n == 1
    1
  elsif n == 2
    1
  else
    fibonacci_recursive(n-1) + fibonacci_recursive(n-2)
  end
end
