class RecipesController < ApplicationController
  def index
    @recipes = ContentfulApi.recipes
  end

  def show
  end
end
