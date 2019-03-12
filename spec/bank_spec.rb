require 'bank'
RSpec.describe Bank do
  subject(:bank) {described_class.new}
  let(:an_amount) { 1000 }
  let(:a_date) { '12/03/2019' }
  let(:type) { ' ' }

  context('When depositing money') do
    it('Increases balance') do
      bank.deposit(an_amount)
      expect(subject.balance).to eq(an_amount)
    end
  end
  context('When withdrawing money') do
    it('Decreases balance') do
      bank.deposit(an_amount)
      bank.withdraw(an_amount)
      expect(bank.balance).to eq(0)
    end
  end
  context('transaction details') do
    it('records date, amount, debit and balance on deposit') do
      allow(bank).to receive(:date).and_return(a_date)
      bank.deposit(an_amount)
      expect(bank.transactions).to eq([[a_date, an_amount, type, bank.balance]])
    end
  end
end