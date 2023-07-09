class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.references :sender, polymorphic: true
      t.references :receiver, polymorphic: true
      t.datetime :sent_at
      t.float :amount
      t.timestamps
    end
  end
end
