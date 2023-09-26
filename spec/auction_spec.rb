require './lib/item'
require './lib/attendee'
require './lib/auction'

RSpec.describe Auction do 
  before (:each) do 
    @auction = Auction.new
    @item1 = Item.new('Chalkware Piggy Bank')
    @item2 = Item.new('Bamboo Picture Frame')
  end

  describe 'Instantiates' do 
    it 'exists' do 
      expect(@auction).to be_a(Auction)
    end
  end

  describe '#items' do 
    it ' checks that item is empty' do
      expect(@auction.items).to eq([])
    end
  end

  describe '#add_item' do 
    it 'adds item to auction' do 
      @auction.add_item(@item1)
      @auction.add_item(@item2)
      expect(@auction.items).to eq([@item1, @item2])
    end
  end

  describe '#item_names' do 
    it ' shows the name of items' do 
      expect(@auction.item_names).to eq([])
      
      @auction.add_item(@item1)
      @auction.add_item(@item2)
      expect(@auction.item_names).to eq(["Chalkware Piggy Bank", "Bamboo Picture Frame"])
    end
  end
end