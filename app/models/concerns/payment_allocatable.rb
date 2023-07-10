module PaymentAllocatable
    extend ActiveSupport::Concern
    
    included do
      has_many :incoming_allocations, class_name: 'PaymentAllocation', as: :service
    end
  
    def total_allocated
      incoming_allocations.sum(:amount)
    end
  end