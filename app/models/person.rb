class Person < ApplicationRecord
  include Financable

  has_many :sleeps

  def name
    friendly_name.presence || legal_name.presence
  end
end
