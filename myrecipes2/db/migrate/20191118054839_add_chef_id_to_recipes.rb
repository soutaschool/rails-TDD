class AddChefIdToRecipes < ActiveRecord::Migration[5.2]
  def change
  	add_column :recipes, :chef_id, :integer
  end
end
# $ rails g migration add_chef_id_to_recipes