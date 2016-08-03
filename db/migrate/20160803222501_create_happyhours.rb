class CreateHappyhours < ActiveRecord::Migration[5.0]
  def change
    create_table :happyhours do |t|

      t.timestamps
    end
  end
end
