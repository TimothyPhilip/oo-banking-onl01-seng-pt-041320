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
    if valid? && sender.balance > amount
      sender.balance = sender.balance - amount
      receiver.balance = receiver.balance + amount
      @status = "complete"
    end
    
   !sender.valid?
      @satus = "rejected"
      "Transaction rejected. Please check your account balance."
    
  
   binding.pry
  end
  
  def reverse_transfer
    receiver.balance = receiver.balance - amount
    sender.balance = sender.balance + amount
    @status = "reversed"
  end
 
  
  
  
end
