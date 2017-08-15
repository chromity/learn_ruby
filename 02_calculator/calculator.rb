def add a1, a2
  a1 + a2
end

def subtract a1, a2
  a1 - a2
end

def sum arr
  arr.inject(0) {|sum, n| sum + n}
end

def multiply arr
  arr.inject(1) {|prod, n| prod * n}
end

def power base, exp
  base ** exp
end

def factorial n
  f,i = n,1

  f = 1 if n == 0

  for i in 1...n do
    f = i * f
  end

  f
end
