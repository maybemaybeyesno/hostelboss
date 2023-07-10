class RenameSleepToStay < ActiveRecord::Migration[7.0]
  def up
    rename_table :sleeps, :stays
    PaymentAllocation
      .where(service_type: 'Sleep')
      .update_all(service_type: 'Stay')
  end
  def down
    rename_table :stays, :sleeps
    PaymentAllocation
      .where(service_type: 'Stay')
      .update_all(service_type: 'Sleep')
  end
end
