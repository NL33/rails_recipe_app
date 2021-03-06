class TagsController < ApplicationController

  def create
    recipe = Recipe.find(params[:recipe_id])
    @tag= Tag.new(params[:tag])
    @tag.save
    recipe.tags << @tag
	flash[:notice] = "Tag Added to #{recipe.name}!"
	redirect_to("/recipes/#{recipe.id}") 
  end

  def update
    recipe = Recipe.find(params[:recipe_id])
    @tags = Tag.all
    @tag= Tag.find(params[:id])
    @tag.save
    @tag.recipes << recipe
  flash[:notice] = "Tag Added to #{recipe.name}!"
  redirect_to("/recipes/#{recipe.id}") 
  end

  def show
    @tag = Tag.find(params[:id]) 
    render('tags/show.html.erb')
  end

end