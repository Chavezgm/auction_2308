class Item
  attr_reader :name,  :bids
  def initialize(name)
    @name = name 
    @bids = Hash.new(0)
  end

  def add_bid(attendee,quantity)
    @bids[attendee] += quantity
  end
end