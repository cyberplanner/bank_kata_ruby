class Transfer
  attr_reader :date
  def initialize
    @date = ""
  end

  def set_date
    @date = Time.new.strftime("%d/%m/%Y")
  end
end
