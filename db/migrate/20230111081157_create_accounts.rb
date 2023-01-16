class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :title,null: false
      t.integer :content,null: false
      t.datetime :start_time,null: false
      t.references :user,null: false, foreign_key: true
      t.timestamps
    end
  end
end
