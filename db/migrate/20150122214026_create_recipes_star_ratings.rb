class CreateRecipesStarRatings < ActiveRecord::Migration
  def change
    create_table :recipes_star_ratings do |t|
   	  t.belongs_to :recipe, index: true  
      t.belongs_to :star_rating, index: true
    end
  end
end
