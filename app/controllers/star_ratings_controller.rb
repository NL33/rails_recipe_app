class StarRatingsController < ApplicationController

  def create
    recipe = Recipe.find(params[:recipe_id])
    @star_rating= StarRating.new(params[:star_rating])
    @star_rating.save
    recipe.star_ratings << @star_rating
	flash[:notice] = "Star Rating Added to #{recipe.name}!"
	redirect_to("/recipes/#{recipe.id}") 
  end

end