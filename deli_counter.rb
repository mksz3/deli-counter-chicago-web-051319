def line(deli_line)
  if deli_line.size == 0 
    puts 'The line is currently empty.'
    return
  else 
    output = 'The line is currently: '
    count = 0
    while count < deli_line.length
      count == deli_line.length - 1 ? output += "#{count+1}. #{deli_line[count]}": output += "#{count+1}. #{deli_line[count]} "
    # output+= "#{count+1}. #{deli_line[count]}"
      count += 1
    end
  end
  puts output
end

def take_a_number(line, name)
  line.push(name)
  puts "Welcome, #{name}. You are number #{line.length} in line."
end

def now_serving(line) 
  if line[0] 
    output = "Currently serving #{line[0]}."
    line.shift
    puts output
  else 
    puts 'There is nobody waiting to be served!'
  end
end