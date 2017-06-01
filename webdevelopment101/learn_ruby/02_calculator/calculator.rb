#write your code here
def add(n1,n2)
	n1+n2
end

def subtract(n1,n2)
	n1-n2
end

def sum(array)
	sum = 0
	array.each do |num|
		sum += num
	end
	return sum
end

def multiply(array)
	sum = 1
	array.each do |num|
		sum *= num
	end
	return sum
end

def power(n1,n2)
	sum = n1
	(n2-1).times do
		sum *= n1
	end
	return sum
end

def factorial(num)
	if (num <= 1)
		1
	else
		num * factorial(num-1)
	end
end
