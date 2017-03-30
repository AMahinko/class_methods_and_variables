class BankAccount
  @@interest_rate = 0.05
  @@accounts = []
  @@total_funds = 0

  def initialize
    @balance = 0
    # @number = number
  end

  attr_accessor :balance, :number

  def deposit(amount)
    if amount > 0
      @balance += amount
      @@total_funds += amount
    end
  end
  def withdraw(amount)
    if amount > 0
      @balance -= amount
      @@total_fund -= amount
    end
  end

  def self.create
    # puts "Input an account number:"
    # number = gets
    @@accounts << BankAccount.new
  end

  def self.accounts
      return @@accounts
  end

  def self.total
    return @@total_funds

  end


end
