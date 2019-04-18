require 'statement'

RSpec.describe Statement do
  let(:bank) { instance_double('a Bank', transactions: [['12/03/2019', 1000, ' ', 1000]]) }
  subject(:statement) { described_class.new(bank.transactions) }
  
  it('Prints the formatted statement') do
    # statement.print(bank.transactions)

    expect { statement.print(bank.transactions) }.to output('date || credit || debit || balance
12/03/2019 || 1000 ||   || 1000
').to_stdout
  end
end