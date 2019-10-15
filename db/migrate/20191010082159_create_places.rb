class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :access
      t.text :detail
      t.integer :variation

      t.timestamps
    end
  end
end
