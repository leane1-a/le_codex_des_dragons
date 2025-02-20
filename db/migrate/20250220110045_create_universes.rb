class CreateUniverses < ActiveRecord::Migration[8.0]
  def change
    create_table :universes do |t|
      t.string :name
      t.integer :release_date
      t.text :description_universe

      t.timestamps
    end
  end
end
