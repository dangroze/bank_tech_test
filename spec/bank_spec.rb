require 'bank'
RSpec.describe Bank do
  subject(:bank) {described_class.new}

  describe('Can add credit to balance') do
    it('Should have a method to add credit') do
      bank.add_credit(1000)
      expect(subject.balance).to eq(1000)
    end
  end
end