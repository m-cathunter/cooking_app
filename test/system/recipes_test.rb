require 'test_helper'

class RecipesTest < ActionDispatch::SystemTestCase
  def setup
    @recipe = ContentfulApi.recipes.first
  end

  test "check information about a recipe" do
    visit root_path
    assert_text @recipe.fields[:title]
    assert_selector(:xpath, "//img[@src='#{@recipe.photo.url}']")
  end
end
