class Auction
  attr_reader :items
  def initialize
    @items =[]
  end

  def add_item(item)
    @items << item
  end

  def item_names
   item_names = @items.map do |item|
      item.name
    end
    item_names
  end

  
end