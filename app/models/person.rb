class Person < ApplicationRecord
  include Financable

  def name
    friendly_name.presence || legal_name.presence
  end
end
