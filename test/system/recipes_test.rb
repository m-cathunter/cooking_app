require 'test_helper'

class RecipesTest < ActionDispatch::SystemTestCase
  def setup
    @recipe = ContentfulApi.recipes.first
  end

  test "check information about a recipe on index page" do
    visit root_path
    assert_text @recipe.fields[:title]
    assert_selector(:xpath, "//img[@src='#{@recipe.photo.url}']")
  end

  test "check information about a recipe on show page" do
    visit recipe_path(@recipe.id)
    assert_text @recipe.fields[:title]
    assert_selector(:xpath, "//img[@src='#{@recipe.photo.url}']")
    assert_text @recipe.fields[:description]
  end
end
