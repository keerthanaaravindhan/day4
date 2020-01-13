
$a=Array.new

def add
   puts "Give mail id"
   t=gets
   $a << t
end

def disp
   $a.each do |x|
      puts x
   end
end

def disp_edu
   str="edu"
   n=$a.length()
   for i in 0..n-1 do
      if $a[i].include? str
        puts $a[i]
      end
   end
end

def search(str)
    n=$a.length()
    for i in 0..n-1 do
      if $a[i].include? str
        puts "value in #{i+1}"
        puts $a[i]
      end
    end
end  

def del_val(str)
   n=$a.length()
   for i in 0..n-1 do
      if $a[i].include? str
        $a.delete($a[i]s)
      end
   end
end

def count(str)
   t=0
   n=$a.length()
   for i in 0..n-1 do
      if $a[i].include? str
         t+=1
      end
   end
   puts "Count is : #{t}"
end

def disp_dom
  uq=$a.uniq
  puts uq,"\n"
end

#main
while(true)
    if $a.empty?
      puts "Array Empty...Please insert Values"
    end
    puts"Enter 1.Add ,2:Display,3:Display edu mail ids,4:Search,5:Delete mail id by value, 6:Display unique domains od all mail ids,7:count mail ids in given domain,8:exit"
    x=gets.to_i
    
    case x
     when 1
          add()	
     when 2
          disp()
     when 3
          disp_edu()
     when 4 
          puts "Enter id"
          no=gets.chomp
          search(no)
     when 5
        puts "Enter value"
        no=gets
        del_val(no)
     when 6
        disp_dom()
     when 7
        puts "Enter domain"
        no=gets.chomp
        count(no)     
     when 8
        exit()
     else
       puts "invalid"
   end
 end


   
