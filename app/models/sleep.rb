class Sleep < ApplicationRecord
  include PaymentAllocatable

  belongs_to :person
  belongs_to :room

  validates :start, presence: true
  validates :end, presence: true
  validates :price, presence: true

  def name
    "[sleep] #{person.name} on #{start}"
  end

  def days
    (self.end - self.start).to_i
  end

  def owed
    (price - total_allocated).round(2)
  end
end
