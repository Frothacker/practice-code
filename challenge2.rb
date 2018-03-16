# Return the sum of all the multiples of 3 and 5 below the number entered.
# Note: If the number is a multiple of both 3 and 5, only count it once.
def solution(number)
  number -=1 and sum = 0 and for x in number.downto(0) do x%5 == 0 ? (sum = sum+x) : if(x%3 == 0) then sum = sum+x   
  end end and return sum 
end 



