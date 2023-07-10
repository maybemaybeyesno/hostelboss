class Person < ApplicationRecord
  include Payable

  has_many :stays

  def name
    friendly_name.presence || legal_name.presence
  end
end
