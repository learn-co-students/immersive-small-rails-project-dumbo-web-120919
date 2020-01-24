class ChangeDietColumn < ActiveRecord::Migration[6.0]
  def change
    change_column_default :cakes, :dietary_restrictions, "[]"
  end
end
