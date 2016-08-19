class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    # really cool that you added a custom attribute to your devise model!
    add_column :users, :name, :string
  end
end
