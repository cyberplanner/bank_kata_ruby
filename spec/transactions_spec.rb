require 'transaction'

describe Transaction do
  let(:transaction) { Transaction.new(0, 0) }

  it "has a date" do
    allow(transaction).to receive(:date) { "20/09/2016" }
    expect(transaction.date).to eq "20/09/2016"
  end

  it 'has an amount of zero' do
    expect(subject.amount).to eq(0)
  end

  it { is_expected.to respond_to(:set_amount).with(1).argument }

  it 'sets the amount' do
    transaction.set_amount(20)
    expect(transaction.amount).to eq(20)
  end

  it "has a current balance of zero" do
    expect(transaction.current_balance).to eq(0)
  end

  it 'sets a current balance' do
    transaction.set_current_balance(20)
    expect(transaction.current_balance).to eq(20)
  end

  it 'initially has zero debit' do
    expect(subject.current_debit).to eq(0)
  end

  it 'can set the current_debit' do
    transaction.set_current_debit(20)
    expect(transaction.current_debit).to eq(20)
  end

end
