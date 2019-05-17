class Api::RecipesController < ApplicationController
  def index
    if current_user
    @recipes = current_user.recipes

    #@recipes = current_user.recipes

    search_term = params[:search]
      if search_term
      @recipes = @recipes.where("title iLIKE ? OR ingredients iLIKE ?", "%#{search_term}%", "%#{search_term}%")
      end
      render 'index.json.jbuilder'
    else
    render json: []
    end
  end


  def create
    @recipe = Recipe.new(
                         title: params[:title],
                         prep_time: params[:prep_time],
                         ingredients: params[:ingredients],
                         directions: params[:directions],
                         image_url: params[:image_url],
                         user_id: current_user.id
                        )
    @recipe.save
    render 'show.json.jbuilder'
  end

  def show
    @recipe = Recipe.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @recipe = Recipe.find(params[:id])

    @recipe.title = params[:title] || @recipe.title
    @recipe.prep_time = params[:prep_time] || @recipe.prep_time
    @recipe.ingredients = params[:ingredients] || @recipe.ingredients
    @recipe.directions = params[:directions] || @recipe.directions
    @recipe.image_url = params[:image_url] || @recipe.image_url

    @recipe.save
    render 'show.json.jbuilder'
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    render json: {message: "Successfully Destroyed Recipe"}
  end
end

