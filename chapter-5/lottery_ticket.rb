class LotteryTicket
  NUMERIC_RANGE = 1..25

  attr_reader :picks, :purchased # what does attr_reader do??

  def initialize( *picks )
    if picks.length != 3
      raise ArgumentError, "three numbers must be picked"
    elsif picks.uniq.length != 3
      raise ArgumentError, "three different numbers must be picked"
    elsif picks.detect { |p| not NUMERIC_RANGE.include?(p) }
      raise ArgumentError, "numbers must be in the range of 1 to 25"
    end

    @picks = picks
    @purchased = Time.now
  end
end