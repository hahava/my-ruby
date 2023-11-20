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

a = [1, 'cat', 3.14]
p a

a[2] = nil
p a
a = ['kalin', 'halin', "hahava"]
p a

a = %w[kalin halin hahava]
p a

company = {
  'dunamu' => a,
  'nts' => '2',
  'naver' => 3
}

radiation = 4000

if radiation > 3000
  puts "Danger"
end

puts "Danger" if radiation > 3000

def call_block
  puts "Start of method"
  yield
  yield
  puts "End of method"
end

call_block { puts "Hello I am a yield" }

