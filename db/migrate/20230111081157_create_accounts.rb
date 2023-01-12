class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :title
      t.integer :content
      t.datetime :start_time
      t.timestamps
    end
  end
end
