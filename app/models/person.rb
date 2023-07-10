class Person < ApplicationRecord
  include Payable

  has_many :sleeps

  def name
    friendly_name.presence || legal_name.presence
  end
end
