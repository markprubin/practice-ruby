# storeitem1 = { item: "Salsa", color: "red", price: 5, shelf_life: "2 months" }
# storeitem2 = { item: "Cheddar Cheese", color: "yellow", price: 4, shelf_life: "2 weeks" }
# storeitem3 = { :item => "corn tortillas", :color => "yellow", :price => 3, :shelf_life => "1 week" }

# puts "Pablo's food store has the best #{storeitem3[:color]} #{storeitem3[:item]} priced at #{storeitem3[:price]} dollars. Eat them quick, as their shelf life is only #{storeitem3[:shelf_life]}!"

# puts "Pablo's food store has #{storeitem1[:color]} #{storeitem1[:item]} in stock, currently priced at #{storeitem1[:price]} dollars, with a shelf life of #{storeitem1[:shelf_life]}."

class Storeitem
  attr_reader :item, :color, :price, :in_stock
  attr_writer :in_stock

  def initialize(input_options)
    @item = input_options[:item]
    @color = input_options[:color]
    @price = input_options[:price]
    @in_stock = input_options[:in_stock]
  end

  def print
    puts "Pablo's food store has #{color} #{item} currently priced at #{price} dollars. It is currently #{stock_status}."
  end

  def add_tax
    @price = 1.08 * price
  end

  def stock_status
    if @in_stock == true
      p "in stock"
    else
      p "out of stock"
    end
  end
end

storeitem1 = Storeitem.new({ item: "salsa", color: "red", price: 5, shelf_life: "2 months", in_stock: true })
storeitem2 = Storeitem.new({ item: "cheddar cheese", color: "yellow", price: 4, shelf_life: "2 weeks", in_stock: true })
storeitem3 = Storeitem.new({ item: "corn tortillas", color: "yellow", price: 3, shelf_life: "1 week", in_stock: true })

p storeitem1.print

class Shelf_life < Storeitem
  attr_reader :shelf_life

  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end
end
