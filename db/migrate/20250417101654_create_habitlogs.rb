class CreateHabitlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :habitlogs do |t|
      t.references :user #Userモデルとのリレーション
      t.references :habit #Habitモデルとのリレーション
      t.date :logged_on #スタンプをした日付
      t.timestamps
    end
  end
end
