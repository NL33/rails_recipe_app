class RecipesController < ApplicationController
  
  def index
    @recipes = Recipe.all
    if params[:query]
      @tag_results = Tag.basic_search(params[:query]) #note: another way, just find tags with the name submitted, and produce recipes of that tag
      render('recipes/index.html.erb')
    end
    if params[:search]
      @search_results = Recipe.basic_search(params[:search]) 
      render('recipes/index.html.erb')
    end
  end

  def new 
    @recipe = Recipe.new 
    @tags = Tag.all
    render('recipes/new.html.erb')
  end

  def create
    @recipe = Recipe.new(params[:recipe])
    if @recipe.save
      flash[:notice] = "recipe added!"
      redirect_to('/recipes')
    else
      render('recipes/new.html.erb')
    end
  end

  def show
    @recipe = Recipe.find(params[:id]) 
    @tags =Tag.all
    render('recipes/show.html.erb')
  end

  def edit 
    @recipe = Recipe.find(params[:id])
    @tags = Tag.all
    render('recipes/edit.html.erb') 
  end

  def update 
    @recipe = Recipe.find(params[:id])
    if @recipe.update(params[:recipe])

      redirect_to("/recipes/#{@recipe.id}")
    else
      render('recipes/edit.html.erb')
    end
  end

 def destroy 
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
     flash[:notice] = "Recipe Deleted"
    redirect_to("/recipes")
 end

end