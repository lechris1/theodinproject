def prime?(factor)
  (2..factor/2).each do |num|
    if factor%num==0
      return false
    end
  end
  return true
end

def prime_factor(n)
  (1..n/2).each do |num|
    if n%num==0
      up_factor = n/num
      if prime?(up_factor)
        return up_factor
      end
    end
  end
end

n = 600851475143
puts prime_factor(n)
