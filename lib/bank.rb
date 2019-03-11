class Bank
  attr_reader :balance
  DEFAULT_BALANCE = 0;
  
  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end