class RemoveRecipieIdFromRecipesTags < ActiveRecord::Migration
  def change
    remove_column :recipes_tags, :recipie_id, :integer
  end
end
