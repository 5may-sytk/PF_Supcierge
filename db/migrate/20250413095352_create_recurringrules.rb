class CreateRecurringrules < ActiveRecord::Migration[6.1]
  def change
    create_table :recurringrules do |t|

      t.references :Event #Eventモデルとのリレーション
      t.string :frequency #繰り返し名称
      t.integer :interval #繰り返し間隔
      t.datetime :end_time #終了日
      t.timestamps
    end
  end
end
