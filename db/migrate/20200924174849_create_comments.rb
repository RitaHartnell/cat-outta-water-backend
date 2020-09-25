class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :commentor_id
      t.integer :commentee_id
      t.text :comment
      t.timestamps
    end
  end
end
