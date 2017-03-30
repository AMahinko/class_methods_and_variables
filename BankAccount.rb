class BankAccount
  @@interest_rate = 0.05
  @@accounts = []
  @@total_funds = 0

  def initialize
    @balance = 0
    # @number = number
  end

  attr_accessor :balance

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
    name = BankAccount.new
    @@accounts << name
    return name
  end

  def self.accounts
      return @@accounts
  end

  def self.total
    return @@total_funds

  end

  def self.interest_time

    @@accounts.each do |account|
      p account
      p account.balance
      p @@interest_rate
      interest = account.balance + account.balance * @@interest_rate
      account.deposit(interest)
    end

    puts @@accounts

  end

  def self.mass

    @@accounts.each {|account| account.deposit(200)}

  end


end
