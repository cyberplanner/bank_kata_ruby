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

  it { is_expected.to respond_to(:withdraw).with(1).argument }

  it 'can make withdrawals' do
    account.deposit(10)
    account.withdraw(5)
    expect(account.balance).to eq(5)
  end

  it 'can provide debit if balance is in minus' do
    account.deposit(10)
    account.withdraw(15)
    expect(account.debit).to eq(5)
  end

end
