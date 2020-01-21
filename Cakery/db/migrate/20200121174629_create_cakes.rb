class CreateCakes < ActiveRecord::Migration[6.0]
  def change
    create_table :cakes do |t|
      t.string :name
      t.string :category
      t.string :description
      t.integer :serving_size
      t.string :dietary_restrictions
      t.string :img_url
      t.string :occasion
      t.integer :bakery_id
      t.integer :baker_id
    end
  end
end
