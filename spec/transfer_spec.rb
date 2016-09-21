require 'transfer'

describe Transfer do
  let(:transfer) { Transfer.new }

  it "has a date" do
    expect(transfer.date).to eq ""
  end

  it "sets a date and return it as a string" do
    expect(transfer.date).to eq ""
    transfer.set_date
    expect(transfer.date).to eq "21/09/2016"
  end

end
