class Transfer
  attr_reader :date
  attr_reader :amount
  
  def initialize
    @date = Time.new.strftime("%d/%m/%Y")
    @amount = 0
  end

end
