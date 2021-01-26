class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all

    rescue Contentful::Unauthorized
      @recipes = []
      flash.now[:alert] = "Connection Error"
  end

  def show
    @recipe = Recipe.find(params[:id])

    if !@recipe
      raise ActionController::RoutingError.new('Not Found')
    end
  end
end
