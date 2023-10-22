p a = [3.141519, "pie", 99]

p a.class

p a.length

p a[0]

p a[1]

p a[1]
p a[2]
p a[3]

b = Array.new
b.class
b.length

b[1] = "array"
p b

a = [1, 3, 5, 7, 9]
p a[1, 3]
p a[3, 1]
p a[-3, 2]

p a[1..3]
p a[1...3]
p a[3..3]
p a[-3..-1]

a[2, 2] = 'cat'
p a

a.push "red"
a.pop

p a

a.insert(0, "dog")
a.pop 1

p a

a.shift
p a

some_array = [1, 3, 5, 7, 9]

some_array.each { |value| p value * 3 }

sum = 0
some_array.each do |value|
  sum += value
  p value / sum
end

sum = 0
[1, 2, 3, 4].each do |value|
  square = value * value
  sum += square
end

p sum

square = "some shape"
sum = 0

[1, 2, 3, 4].each do |value; square |
  square = value * value
  sum += square
end

p square
p sum
