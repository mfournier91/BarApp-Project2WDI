class CreateHappyhours < ActiveRecord::Migration[5.0]
  def change
    create_table :happyhours do |t|
      t.string :hours
      t.string :weekday
      t.references :bar, index:true, foreign_key: true

      t.timestamps
    end
  end
end
