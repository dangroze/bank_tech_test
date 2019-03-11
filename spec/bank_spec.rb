require 'bank'
RSpec.describe Bank do
  subject(:bank) {described_class.new}

  context('When depositing money') do
    it('Increases balance') do
      bank.deposit(1000)
      expect(subject.balance).to eq(1000)
    end
  end
  context('When withdrawing money') do
    it('Decreases balance') do
      bank.deposit(1000)
      bank.withdraw(500)
      expect(bank.balance).to eq(500)
    end
  end
end