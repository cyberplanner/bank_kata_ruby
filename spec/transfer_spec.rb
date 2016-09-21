require 'transfer'

describe Transfer do
  let(:transfer) { Transfer.new }

  it "has a date" do
    allow(transfer).to receive(:date) { "20/09/2016" }
    # transfer.stub(:date).and_return("20/09/2016")
    expect(transfer.date).to eq "20/09/2016"
  end

  it 'has an amount' do
    expect(subject.amount).to eq(0)
  end
  it { is_expected.to respond_to(:set_amount).with(1).argument }

  it 'has a current balance' do

  end


end
