class AddUserIdTorecipes < ActiveRecord::Migration[5.2]
  def change
  add_column :recipes, :user_id, :integer
  remove_column :recipes, :chef, :string
  end
end
