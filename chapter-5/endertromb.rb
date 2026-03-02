require_relative "minds"
module Endertromb
  def self.make(wish, energy)
    puts "✨ Granting wish: #{wish}"
    puts "#{energy} wishes left!"
  end

  def self.scan_for_sentience
    [AlienMind.new, RobotMind.new, LadyBugMind.new]
  end
end