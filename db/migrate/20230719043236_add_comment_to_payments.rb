class AddCommentToPayments < ActiveRecord::Migration[7.0]
  def change
    add_column :payments, :comments, :string
  end
end
