module Payable
  extend ActiveSupport::Concern
  
  included do
    has_many :outgoing_payments, class_name: 'Payment', as: :sender
    has_many :incoming_payments, class_name: 'Payment', as: :receiver
  end

  def total_earned
    incoming_payments.sum(:amount)
  end

  def total_spent
    outgoing_payments.sum(:amount)
  end

  def balance
    total_earned - total_spent
  end
end