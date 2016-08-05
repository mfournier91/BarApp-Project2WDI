class CreateMenuItems < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :price
      t.references :happyhour, index:true, foreign_key: true

      t.timestamps
    end
  end
end
