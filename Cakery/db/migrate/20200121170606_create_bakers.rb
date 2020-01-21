class CreateBakers < ActiveRecord::Migration[6.0]
  def change
    create_table :bakers do |t|
      t.string :name
      t.string :employment_status
      t.text :bio
      t.string :img_url
      t.string :quote
      t.boolean :star_baker
      t.integer :bakery_id

      t.timestamps
    end
  end
end
