# frozen_string_literal: true

def IsPrime(num)
  div = 2
  while div * div <= num
    if num % div == 0
      return false 
    end
      div += 1
  end
  return true
end

def AllPrime(num)
  for i in (2..num)
    if(IsPrime(i))
      puts(i)
    end
  end
end

AllPrime(100)
