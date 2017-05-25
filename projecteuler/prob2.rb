sum = 0
n1, n2 = 1, 2
next_num = n1+n2
sum += n2
while next_num < 4000000
  if next_num%2==0
    sum += next_num
  end
  n1 = n2
  n2 = next_num
  next_num = n1+n2
end
puts sum
