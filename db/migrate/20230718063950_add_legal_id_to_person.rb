class AddLegalIdToPerson < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :legal_id, :string
  end
end
