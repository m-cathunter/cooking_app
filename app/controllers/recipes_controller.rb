class RecipesController < ApplicationController
  def index
    @recipes = ContentfulApi.recipes
  end

  def show
    @recipe = ContentfulApi.client.entry(params[:id])
  end
end
