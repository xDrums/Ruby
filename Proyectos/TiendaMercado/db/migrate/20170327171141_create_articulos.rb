class CreateArticulos < ActiveRecord::Migration[5.0]
  def change
    create_table :articulos do |t|
      t.string :titulo
      t.text :cuerpo
      t.text :link_mercado
      t.integer :count_vts
      t.string :image

      t.timestamps
    end
  end
end
