class BankAccount

  def initialize(balance, interest)
    @balance = balance
    @interest_rate = interest
  end

  def deposit (amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -=amount
  end

  def gain_interest
    @balance *= 1 + @interest_rate
  end

end
