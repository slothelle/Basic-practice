class Controller
  def initialize(card_deck)
    @card_deck = card_deck
  end 
end 

class Deck # creates deck
  attr_reader :card_deck

  def initialize
    @card_deck = []
    @deck_contents = []
  end 

  def load_deck_from(filename)
    File.open(filename).each_line do |line|
      next if line =~ /^\n/
      @deck_contents << line.gsub("\n", "")
    end
  end 

  def build_card_deck
    @deck_contents.each_with_index do |item, index|
      if index == 0 || index % 2 == 0
        card_hash = {}
        card_hash[:definition] = item
        card_hash[:term] =  @deck_contents[index + 1]
        add_card(card_hash)
      end 
    end 
  end 

  def add_card(card_hash)
    @card_deck << Card.new(card_hash)
  end 
end 

class Card
  attr_reader :definition, :term

  def initialize(card_hash)
    @term = card_hash[:term]
    @definition = card_hash[:definition]
  end 
end