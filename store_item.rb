# storeitem1 = { item: "Salsa", color: "red", price: 5, shelf_life: "2 months" }
# storeitem2 = { item: "Cheddar Cheese", color: "yellow", price: 4, shelf_life: "2 weeks" }
# storeitem3 = { :item => "corn tortillas", :color => "yellow", :price => 3, :shelf_life => "1 week" }

# puts "Pablo's food store has the best #{storeitem3[:color]} #{storeitem3[:item]} priced at #{storeitem3[:price]} dollars. Eat them quick, as their shelf life is only #{storeitem3[:shelf_life]}!"

# puts "Pablo's food store has #{storeitem1[:color]} #{storeitem1[:item]} in stock, currently priced at #{storeitem1[:price]} dollars, with a shelf life of #{storeitem1[:shelf_life]}."


class Storeitem
  def initialize (item, color, price, shelf_life)
    @item = item
    @color = color
    @price = price
    @shelf_life = shefl_life
  end
  
  def print_info
    puts "Pablo's food store has #{color} #{item} in stock, currently priced at #{price} dollars, with a shelf life of #{shelf_life}."

  def item
    @item
  end

  def color
    @color
  end

  def price
    @price
  end

  def shelf_life
    @shelf_life
  end

  def add_tax
    @price = 1.08 * price
end

storeitem1 = Storeitem.new("Salsa", "red", 5, "2 months")
storeitem2 = Storeitem.new("Cheddar Cheese", "yellow", 4, "2 weeks")
storeitem3 = Storeitem.new("Corn Tortillas", "yellow", 3, "1 week")