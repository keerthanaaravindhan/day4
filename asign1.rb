class Calculator
 @@x=0
 @@y=0
 def add(x,y)
  puts"The sum is #{x+y}\n"
 end

 def sub(x,y)
  puts"The difference is #{x-y}\n"
 end

 def mul(x,y)
  puts"The product is #{x*y}\n"
 end

 def div(x,y)
  puts"The quotient is #{x/y}\n"
 end

 def mod(x,y)
  puts"The remainder is #{x%y}\n"
 end
end  

c=Calculator.new
while(true)
 puts"Enter 1.Add 2.Sub 3.Multiply 4.Division 5.Modulo"
 a=gets.to_i
 puts"Enter the no. in order"
 x=gets.to_i
 y=gets.to_i
 case a
 when 1
	c.add(x,y)	
 when 2
	c.sub(x,y)
 when 3
	c.mul(x,y)
 when 4 
	c.div(x,y)
 else
	c.mod(x,y)
 end
end
