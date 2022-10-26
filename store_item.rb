# storeitem1 = { item: "Salsa", color: "red", price: 5, shelf_life: "2 months" }
# storeitem2 = { item: "Cheddar Cheese", color: "yellow", price: 4, shelf_life: "2 weeks" }
# storeitem3 = { :item => "corn tortillas", :color => "yellow", :price => 3, :shelf_life => "1 week" }

# puts "Pablo's food store has the best #{storeitem3[:color]} #{storeitem3[:item]} priced at #{storeitem3[:price]} dollars. Eat them quick, as their shelf life is only #{storeitem3[:shelf_life]}!"

# puts "Pablo's food store has #{storeitem1[:color]} #{storeitem1[:item]} in stock, currently priced at #{storeitem1[:price]} dollars, with a shelf life of #{storeitem1[:shelf_life]}."

class Storeitem
  attr_reader :item, :color, :price, :shelf_life

  def initialize(item, color, price, shelf_life, in_stock)
    @item = item
    @color = color
    @price = price
    @shelf_life = shelf_life
    @in_stock = in_stock
  end

  def print
    puts "Pablo's food store has #{color} #{item} currently priced at #{price} dollars, with a shelf life of #{shelf_life}."
  end

  # def item
  #   @item
  # end

  # def color
  #   @color
  # end

  # def price
  #   @price
  # end

  # def shelf_life
  #   @shelf_life
  # end

  # def in_stock
  #   @in_stock
  # end

  def in_stock=(in_stock)
    @in_stock = in_stock
  end

  def add_tax
    @price = 1.08 * price
  end
end

storeitem1 = Storeitem.new("salsa", "red", 5, "2 months", true)
storeitem2 = Storeitem.new("cheddar cheese", "yellow", 4, "2 weeks", true)
storeitem3 = Storeitem.new("corn tortillas", "yellow", 3, "1 week", true)

p storeitem1.print
storeitem1.add_tax
p storeitem1.print
storeitem1.in_stock = false
p storeitem1.print
