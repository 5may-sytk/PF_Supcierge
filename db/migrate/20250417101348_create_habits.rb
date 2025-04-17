class CreateHabits < ActiveRecord::Migration[6.1]
  def change
    create_table :habits do |t|
      t.references :user #Userモデルとのリレーション
      t.string :name
      t.text :description #説明
      t.timestamps
    end
  end
end
