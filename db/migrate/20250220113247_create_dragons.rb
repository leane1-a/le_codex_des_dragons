class CreateDragons < ActiveRecord::Migration[8.0]
  def change
    create_table :dragons do |t|
      t.string :name
      t.references :universe, null: false, foreign_key: true
      t.string :size
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
