class CreateSleeps < ActiveRecord::Migration[7.0]
  def change
    create_table :sleeps do |t|
      t.references :person, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.date :start
      t.date :end
      t.float :price

      t.timestamps
    end
  end
end
