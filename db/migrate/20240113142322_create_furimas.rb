class CreateFurimas < ActiveRecord::Migration[6.0]
  def change
    create_table :furimas do |t|
      t.string :name, null: false
      t.string :text, null: false
      t.text :image, null: false
      t.timestamps, null: false
    end
  end
end
