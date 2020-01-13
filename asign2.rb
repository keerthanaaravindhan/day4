$a=Array[]
def add
  puts "give value"
  t=gets.to_i
  $a << t  
end

def minimum
  t=$a[0]
  $a.each do |i|
    if i<t
      t=i
    end
  end
  puts "Minimum is: #{t}"
end

def maximum
  t=$a[0]
  $a.each do |i|
    if i>t
      t=i
    end
  end
  puts "Maximum is: #{t}"
end

def sum
  s=0
  $a.each do |i|
    s=s+i
  end
 
  puts "Sum is: #{s}"
end

def avg
  s=0
  $a.each do |i|
    s=s+i
  end
  s=s.to_f
  puts "Sum is: #{(s/$a.length())}"
end
  
def search(x)
   n=$a.length()
   for i in 0..n do
      if $a[i]==x
        puts "value in #{i+1}"
      end
   end
end

def delind(x)
   $a.delete_at(x)
end

def delval(x)
   $a.delete(x)
end

def disp
  $a.each do |i|
    puts i
  end
end

while(true)
puts"Enter 1.Add,2:Min,3:Max,4:Sum,5:Avg,6:Search,7:Display,8:Delete by index,9:Delete value,10:exit"
x=gets.to_i

case x
when 1
	add()	
when 2
	minimum()
when 3
	maximum()
when 4 
	sum()
when 5
        avg()
when 6
        puts "Give the value to be searched:"
        b=gets.to_i
        search(b)
when 8
        puts "Give the pos to be deleted:"
        b=gets.to_i
        delind(b-1)
when 7
        disp()
when 9
       puts "Give the value to be deleted:"
       b=gets.to_i
       delval(b)
when 10
       exit()
else
     puts "invalid"
end
end



