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
    if sender.balance == 1000
      sender.balance = sender.balance - amount
      receiver.balance = receiver.balance + amount
    end
      @status = "complete"
 #   !sender.valid?
  #    "Transaction rejected. Please check your account balance."
  
  
#    binding.pry
  end
  
 
  
  
  
end
