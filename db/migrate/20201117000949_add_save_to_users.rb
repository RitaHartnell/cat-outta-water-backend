class AddSaveToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :save_state, :integer
  end
end
