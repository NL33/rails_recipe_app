class AddRecipeIdToRecipesTags < ActiveRecord::Migration
  def change
    add_column :recipes_tags, :recipe_id, :integer
  end
end
