class RemoveContactFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :contact_number, :string
    remove_column :users, :dob, :date
  end
end
