class CreateBakeries < ActiveRecord::Migration[6.0]
  def change
    create_table :bakeries do |t|
      t.string :name
      t.string :location
      t.string :phone
      t.string :hours
      t.string :about
      t.string :email
      t.string :password
      t.string :img_url

      t.timestamps
    end
  end
end
