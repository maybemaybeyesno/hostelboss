class CreatePaymentAllocations < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_allocations do |t|
      t.references :payment, null: false, foreign_key: true
      t.references :service, polymorphic: true, null: false
      t.float :amount

      t.timestamps
    end
  end
end
