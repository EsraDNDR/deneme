class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.integer :debt
      t.integer :credit
      t.integer :friend_id
      t.datetime :from_time
      t.datetime :due_time

      t.timestamps
    end
  end
end
