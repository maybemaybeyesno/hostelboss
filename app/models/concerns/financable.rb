module Financable
  extend ActiveSupport::Concern
  
  included do
    has_many :outgoing_transactions, class_name: 'Transaction', as: :sender
    has_many :incoming_transactions, class_name: 'Transaction', as: :receiver
  end

  def total_earned
    incoming_transactions.sum(:amount)
  end

  def total_spent
    outgoing_transactions.sum(:amount)
  end

  def balance
    total_earned - total_spent
  end
end