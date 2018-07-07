class Wallet
  attr_accessor :balance, :owner
end

wallet = Wallet.new
wallet.balance = 120
puts wallet.balance
