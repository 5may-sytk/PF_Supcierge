class CreateTags < ActiveRecord::Migration[6.1]
  def change
    create_table :tags do |t|
      t.references :user 
      t.string :name
      t.string :color #タグの色
      t.timestamps
    end
  end
end
