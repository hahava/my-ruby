puts "halin, lee".length
puts "halin".index "l"
puts 42.even?

num = -1234
positive = num.abs

puts positive

def say_goodnight(name)
  result = "Good night, " + name
  return result
end

# def say_goodnight(name)
#   result = "Good night, " + name
#   result
# end

puts say_goodnight("kalin")

puts(say_goodnight("kalin"))

def capitalized(word)
  "#{word.capitalize}"
end

puts capitalized("hello \nworld")
puts capitalized('hello \n world')