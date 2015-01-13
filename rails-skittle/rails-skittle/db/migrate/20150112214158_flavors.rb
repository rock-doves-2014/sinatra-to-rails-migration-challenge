class Flavors < ActiveRecord::Migration
  def change
    create_table :flavors do |t|
      t.string :name
      t.string :image
      t.references :variety

      t.timestamps
    end
  end
end
