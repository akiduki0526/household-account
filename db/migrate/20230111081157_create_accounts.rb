class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.integer :content,null: false
      t.datetime :start_time,null: false
      t.references :user,null: false, foreign_key: true
      t.integer :title_id, null: false
      t.timestamps
    end
  end
end
