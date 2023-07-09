class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :legal_name
      t.string :friendly_name
      t.string :description

      t.timestamps
    end
  end
end
