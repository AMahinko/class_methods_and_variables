class BankAccount
  @@interest_rate = 0.05
  @@bank_accounts = []

  def initialize
    @acc_balance = 0
  end

  attr_accessor :acc_balance

  def bal_adj(pos_neg, amount)
    @acc_balance += amount
  end

end
