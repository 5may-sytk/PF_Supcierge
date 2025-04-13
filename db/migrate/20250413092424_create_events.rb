class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.references :user #Userモデルとのリレーション
      t.string :title #タイトル
      t.string :location #場所
      t.datetime :start_time #開始時間
      t.datetime :end_time #終了時間
      t.boolean :completed, default: "false" #完了機能
      t.timestamps
    end
  end
end
