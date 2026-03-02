require './endertromb'

# Grants wishes
  # 
  # @param wish [String] the wish
  # wish should be <= 10 characters
  # 
  # E.g.
  # wishmaker = Wishmaker::new
  # wishmaker.grant('some_bucks')
  # wishmaker.grant('rest')
  # wishmaker.grant('popscicle')
  # wishmaker.grant('kitty')
class WishMaker  
  def initialize
    @energy = rand( 6 )
  end
  def grant( wish )
    if wish.length > 10 or wish.include? ' '
      raise ArgumentError, "Bad wish."
    end
    if @energy.zero?
      raise Exception, "No energy left."
    end
    @energy -= 1
    Endertromb::make( wish , @energy)
  end
end