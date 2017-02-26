#write your code here
def add(x, y)
    x + y
end

def subtract(x, y)
    x - y
end

def sum(a)
    s = 0
    a.each {|x| s += x}
    s
end

def multiply(a)
    prod = 1
    a.each {|x| prod *= x}
    prod
end

def power(base, exp)
    base ** exp
end

def factorial(x)
    if x == 0
        return 1
    end
    x * factorial(x - 1)
end
