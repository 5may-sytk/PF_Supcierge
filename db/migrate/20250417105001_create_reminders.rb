class CreateReminders < ActiveRecord::Migration[6.1]
  def change
    create_table :reminders do |t|
      t.string :remindable_type
      t.integer :remaindable_id
      t.datetime :remind_at
      t.string :message
      t.timestamps
    end

    add_index :reminders, [:remindable_type, :remaindable_id]
  end
end
