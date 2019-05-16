def line(array)
  if array.length < 1
    puts "The line is currently empty."
  elsif array.length > 1
    num = 1
    for i in array
      i.prepend(" #{num}. ")
      num+=1
    end
    line = array.join
    puts "The line is currently:#{line}"
  end
end

def take_a_number(array, name)
  if array.length < 1
    array.unshift("#{name}")
  elsif array.length >= 1
    array.push("#{name}")
  end
   puts "Welcome, #{name}. You are number " + (array.index(name) + 1).to_s + " in line."
end

def now_serving(array)
  if array.length == 0
    puts "There is nobody waiting to be served!"
  elsif array.length >= 1
    puts "Currently serving #{array[0]}."
    array.shift
  end
end
