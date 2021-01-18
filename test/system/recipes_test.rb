require 'test_helper'

class RecipesTest < ActionDispatch::SystemTestCase
  def setup
    @recipe = ContentfulApi.recipes.first
    @welcome_text = "See our recipes and pick your favourites!"
  end

  test "check information about a recipe on index page" do
    visit root_path
    assert_text @welcome_text
    assert_text @recipe.fields[:title]
    assert_selector(:xpath, "//img[@src='#{@recipe.photo.url}']")
  end

  test "check information about a recipe on show page" do
    visit recipe_path(@recipe.id)
    refute_text @welcome_text
    assert_text @recipe.fields[:title]
    assert_selector(:xpath, "//img[@src='#{@recipe.photo.url}']")
  end

  test "check layout for the app" do
    visit root_path
    assert_text @welcome_text
    click_on @recipe.fields[:title]
    refute_text @welcome_text
    click_on 'Cooking App'
    assert_text @welcome_text
  end
end
