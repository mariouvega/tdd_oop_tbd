class BankAccount
	attr_accessor :balance, :account
	@@minimum_balance = 200

	def initialize(balance, account)
		@balance = balance
		@account = account

		raise ArgumentError if balance < @@minimum_balance
	end

	def deposit(amount)
		@balance += amount
	end

	def withdraw(amount)
		@balance -= amount
	end

	def transfer(amount, account)
		withdraw(amount)
		account.deposit(amount)
	end

	def self.minimum_balance=(amount)
		@@minimum_balance = amount
	end

end