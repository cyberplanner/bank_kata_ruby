require 'account'

describe Account do
  let(:account) { Account.new }

  it 'has a balance of zero' do
    expect(subject.balance).to eq(0)
  end

  it { is_expected.to respond_to(:deposit).with(1).argument }

  it 'can make deposits' do
    account.deposit(10)
    expect(account.balance).to eq(10)
  end
end
