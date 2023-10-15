class BookInStock
  attr_reader :isbn, :price, :a
  # attr_writer :isbn, :price
  # attr_accessor :isbn

  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price} a: #{@a}"
  end

  def setA(a)
    @a = a
  end

  def price_in_cents=(cents)
    @price = cents / 100.0
  end

  def price_in_cents
    Integer(price * 100 + 0.5)
  end
end

slam_dunk = BookInStock.new("1234", 1234)
naruto = BookInStock.new("1234", 1234)

p slam_dunk.to_s
p naruto.to_s

p slam_dunk.price
p naruto.isbn

naruto.price_in_cents = 100
p naruto.to_s

naruto.price_in_cents
p naruto.price_in_cents

naruto.setA("a")
p naruto.a
