def menu
  puts `clear`
  puts "***CalcIt***"
  print "(b)asic, (a)dvanced, bm(i) or (q)uit: "
  gets.chomp.downcase
end


def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp.downcase
  print "first number: "
  a = gets.to_f
  print "second number: "
  b = gets.to_f

  case operation
  when 'a'
    puts "#{a + b}"
  when 's'
    puts "#{a - b}"
  when 'm'
    puts "#{a * b}"
  when 'd'
    puts "#{a / b}"
  end

  gets
end


def advanced_cal
  print "(p)ower, (s)qrt: "
  operation = gets.chomp.downcase
  print "first number: "
  a = gets.to_f

  if operation == 's'
    puts "#{Math.sqrt(a)}"
  else
    print "second number: "
    b = gets.to_f
    puts "#{a**b}"
  end

  gets
end


def trip_calc
  print "distance: "
  distance = gets.to_f
  print "mpg: "
  mpg = gets.to_f
  print "fuel price per gallon: "
  cost = gets.to_f
  print "speed: "
  speed = gets.to_f
  mpg = mpg_utility(speed, mpg)
  puts "It will take you #{distance/speed} hours at a cost of $#{(distance/mpg)*cost}"
  gets
end

def mpg_utility(speed, mpg)
  if speed > 60
    mpg - ((speed - 60) * 2)
  else
    mpg
  end
end

def bmi_calc
  puts "Do you want to enter your details in (m)etric or (i)mperial?"
  measurement = gets.chomp.downcase

  case measurement
    when 'i'
      print "weight pounds: "
      weight = gets.to_f
      print "height in inches: "
      height = gets.to_f
      puts "Your BMI is #{(weight/(height**2))*703}"
    when 'm'
      print "weight kilograms: "
      weight = gets.to_f
      print "height in meters: "
      height = gets.to_f
      puts "Your BMI is #{(weight/(height**2))}"
    else
      puts "invalid option"
  end
  gets
end

response = menu

while response != 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  when 'i'
    bmi_calc
  end

  response = menu
end





