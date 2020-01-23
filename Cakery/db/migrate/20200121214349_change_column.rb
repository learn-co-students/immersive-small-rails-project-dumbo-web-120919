class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :bakeries, :about, :text
  end
end
