class LotteryTicket
  NUMERIC_RANGE = 1..25

  attr_reader :picks, :purchased # what does attr_reader do?? Sets the getters for instance variables
  private attr_writer :picks

  def initialize( *picks ) # * means any arguments will be passed as an array
    picks = self.class.new_random if picks.empty?
    
    raise ArgumentError, "three numbers must be picked" unless picks.length === 3
    raise ArgumentError, "three different numbers must be picked" unless picks.uniq.length === 3
    raise ArgumentError, "numbers must be in the range of 1 to 25" unless picks.all? { |p| NUMERIC_RANGE.include?(p) }

    @picks = picks
    @purchased = Time.now
  end

  def self.new_random
    Array.new(3) { rand(1..25) }
  end
end