class RenamColumnsInUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :email, :e_mail
  end
end
