class Sleep < ApplicationRecord
  include Payable

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
    (price - balance).round(2)
  end
end
