class CreateTodotags < ActiveRecord::Migration[6.1]
  def change
    create_table :todotags do |t|
      t.references :user #Userモデルとのリレーション
      t.references :todo #Todoモデルとのリレーション
      t.timestamps
    end
  end
end
