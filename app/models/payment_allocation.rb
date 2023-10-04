class PaymentAllocation < ApplicationRecord
  belongs_to :payment
  belongs_to :service, polymorphic: true
  validates :payment, presence: true
  validates :service, presence: true
  validates :amount, presence: true

  def service_gid
    self.service.to_global_id if self.service.present?
  end

  def service_gid=(gid)
    self.service = GlobalID::Locator.locate gid
  end
end
