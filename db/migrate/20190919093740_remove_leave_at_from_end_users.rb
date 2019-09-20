class RemoveLeaveAtFromEndUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :end_users, :leave_at, :datetime
  end
end
