class Person < ApplicationRecord
  def name
    friendly_name.presence || legal_name.presence
  end
end
