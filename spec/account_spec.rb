require 'account'

describe Account do
  let(:account) { Account.new }
  
  describe '#balance' do
    it 'displays the current balance' do
      expect(account.balance).to eq('£0')
    end
  end

  describe '#deposit' do
    it 'deposits and updates the balance' do
      account.deposit(1000)
      expect(account.balance).to eq('£1000')
    end

    it 'returns an error message string if deposit amount is equal to or below 0' do
      expect(account.deposit(-1000)).to eq('Invalid amount. Please enter a value over 0')
    end
  end

  describe '#withdraw' do
    it 'withdraws and updates the balance' do
      account.deposit(1000)
      account.withdraw(500)
      expect(account.balance).to eq('£500') 
    end

    it 'returns an error message string if withdrawal amount exceeds balance' do
      expect(account.withdraw(500)).to eq('Insufficient funds')
    end
  end

end