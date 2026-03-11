class LotteryDraw
  @@tickets = {}
  
  def self.buy( customer, *tickets )
    unless @@tickets.has_key? (customer)
      @@tickets[customer] = [] # pra quê isso?
    end
    @@tickets[customer] += tickets
  end

  def self.tickets;  @@tickets; end
end