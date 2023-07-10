class Transaction < ApplicationRecord
    belongs_to :sender, polymorphic: true
    belongs_to :receiver, polymorphic: true
    validates :sender, presence: true
    validates :receiver, presence: true
    validates :amount, numericality: { greater_than: 0 }

    def sender_gid
      self.sender.to_global_id if self.sender.present?
    end

    def sender_gid=(sender_gid)
      self.sender = GlobalID::Locator.locate sender_gid
    end

    def receiver_gid
      self.receiver.to_global_id if self.receiver.present?
    end

    def receiver_gid=(receiver_gid)
      self.receiver = GlobalID::Locator.locate receiver_gid
    end
end
