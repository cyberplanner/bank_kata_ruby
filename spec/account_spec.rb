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

  it 'has transactions' do
    expect(account.transactions).to eq([])
  end

  it 'keeps track of deposits' do
    account.deposit(10)
    expect(account.transactions.count).to eq(1)
    expect(account.transactions.first.date).to eq("21/09/2016")
    expect(account.transactions.first.amount).to eq(10)
    expect(account.transactions.first.current_balance).to eq(10)
    expect(account.transactions.first.current_debit).to eq(0)
  end

  it 'keeps track of withdrawals' do
    account.withdraw(10)
    expect(account.transactions.count).to eq(1)
    expect(account.transactions.first.date).to eq("21/09/2016")
    expect(account.transactions.first.amount).to eq(10)
    expect(account.transactions.first.current_balance).to eq(-10)
    expect(account.transactions.first.current_debit).to eq(10)
  end

  it 'keeps track of transactions' do
    account.deposit(10)
    account.withdraw(15)
    expect(account.transactions.count).to eq(2)

    expect(account.transactions[0].date).to eq("21/09/2016")
    expect(account.transactions[0].amount).to eq(10)
    expect(account.transactions[0].current_balance).to eq(10)
    expect(account.transactions[0].current_debit).to eq(0)

    expect(account.transactions[1].date).to eq("21/09/2016")
    expect(account.transactions[1].amount).to eq(15)
    expect(account.transactions[1].current_balance).to eq(-5)
    expect(account.transactions[1].current_debit).to eq(5)
  end

end
