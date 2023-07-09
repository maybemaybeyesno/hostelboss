class Sleep < ApplicationRecord
  include Financable

  belongs_to :person
  belongs_to :room

  def days
    (self.end - self.start).to_i
  end

  def owed
    (price - balance).round(2)
  end
end
