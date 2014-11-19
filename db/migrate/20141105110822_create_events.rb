class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.decimal :lat, precision: 10, scale: 6
      t.decimal :lon, precision: 10, scale: 6
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
