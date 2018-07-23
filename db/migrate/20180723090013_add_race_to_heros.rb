class AddRaceToHeros < ActiveRecord::Migration[5.2]
  def change
    add_column :heros, :race, :string
  end
end
