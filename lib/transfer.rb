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
    if valid? && sender.balance >= amount && @status == "pending"
      sender.balance = sender.balance - amount
      receiver.balance = receiver.balance + amount
      @status = "complete"
    elsif !valid? || @status == "complete" || @status == "rejected"
      @status = "rejected"
    end
    "Transaction rejected. Please check your account balance."
  end
  
  def reverse_transfer
    if execute_transaction 
    receiver.balance = receiver.balance - amount
    sender.balance = sender.balance + amount
    @status = "reversed"
  end
  end
 
  
  
  
end
