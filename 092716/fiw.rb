def fiw number

#create a hash pair
#data.each do |attribute, value|#  puts "#{attribute}: #{value}"
 #set zero as nill 
  zero = ""
  numbers_name_pair = {1000000000000=>"trillion",1000000000 =>"billion",1000000 => "million",1000 => "thousand", 100 => "hundred", 90 => "ninety",  80 => "eighty",  70 => "seventy",
   60 => "sixty", 50 => "fifty",40 => "forty", 30 => "thirty", 20 => "twenty", 19=>"nineteen",18=>"eighteen",17=>"seventeen", 16=>"sixteen", 15=>"fifteen", 14=>"fourteen",13=>"thirteen",
     12=>"twelve",11 => "eleven",10 => "ten",9 => "nine", 8 => "eight", 7 => "seven", 6 => "six", 5 => "five",  4 => "four", 3 => "three", 2 => "two",1 => "one"
    }
   
 #iterate through the number pair
  numbers_name_pair.each do |num, name|

    if number < 0 
      return "please remove that *%$ negative"

    else 
       # for zero
        if number == 0
          return zero

          #for 1 to 9 give value to key
        elsif number.to_s.length == 1 && number/num > 0
          return zero + "#{name}"   
          # for numbers less than 100// use % to get rems giving values to key
          
        elsif number < 100 && number/num > 0
          return zero + "#{name}" if number%num == 0
          return zero + "#{name} " + fiw(number%num)


        elsif number/num > 0
          return zero + fiw(number/num) + " #{name} " + fiw(number%num)

        end
      end
    end
end

