class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.references :user
      t.string :notifyable_type
      t.integer :notifyable_id
      t.string :message #通知内容
      t.datetime :notified_at #通知が出た時間
      t.boolean :read, default:false #既読フラグ
      t.timestamps
    end
  end
end
