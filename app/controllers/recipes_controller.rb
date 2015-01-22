class RecipesController < ApplicationController
  
  def index
    @recipes = Recipe.all
    render('recipes/index.html.erb')
  end
#
  def new 
    @recipe = Recipe.new 
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
    render('recipes/show.html.erb')
  end

  def edit 
    @recipe = Recipe.find(params[:id])
    render('recipes/edit.html.erb') 
  end

  def update 
    @recipe = Recipe.find(params[:id])
    if @recipe.update(:number => params[:number], 
                      :name => params[:name], 
                      :text => params[:text])

      redirect_to("/recipes/#{@recipe.id}")
    else
      render('recipes/edit.html.erb')
    end
  end

 def destroy 
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
     flash[:notice] = "recipe deleted"
    redirect_to("/chapters")
 end

end