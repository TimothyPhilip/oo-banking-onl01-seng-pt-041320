require 'pry'
class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
 
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @status = 'pending'
    @amount = amount
  end
  
  def valid?
    sender.valid?
    receiver.valid?
  end
  
  def execute_transaction
    1.times do 
    sender.balance = sender.balance - amount
    receiver.balance = receiver.balance + amount
    @status = "complete"
    
 #   binding.pry
  end
  
 # if !sender.valid? 
 #     "Transaction rejected. Please check your account balance."
 #   end
  
  
  
end
