class CreateHerosItems < ActiveRecord::Migration[5.2]
  def change
    create_table :heros_items do |t|
      t.references :hero, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
