class Transaction < ApplicationRecord
    belongs_to :sender, polymorphic: true
    belongs_to :receiver, polymorphic: true
    validates :amount, numericality: { greater_than: 0 }
end
