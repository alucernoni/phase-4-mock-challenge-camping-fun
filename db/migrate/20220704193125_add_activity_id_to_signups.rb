class AddActivityIdToSignups < ActiveRecord::Migration[6.1]
  def change
    add_column :signups, :activity_id, :integer
  end
end
