class CreateEventtags < ActiveRecord::Migration[6.1]
  def change
    create_table :eventtags do |t|
      t.references :user #Userモデルとのリレーション
      t.references :event #Eventモデルとのリレーション
      t.timestamps
    end
  end
end
