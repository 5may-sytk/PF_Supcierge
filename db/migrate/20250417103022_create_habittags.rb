class CreateHabittags < ActiveRecord::Migration[6.1]
  def change
    create_table :habittags do |t|
      t.references :user #Userモデルとのリレーション
      t.references :habit #Habitモデルとのリレーション
      t.timestamps
    end
  end
end
