module RecipesHelper
  def find_chef(recipe)
    if @recipe.fields[:chef]
      ContentfulApi.client.entry(recipe.chef.id)
    end
  end

  def find_tags(recipe)
    # Return array of tags ids
    tags_ids = (recipe.fields[:tags] || []).map { |tag| tag.id }
    # Array of entry tag objects
    tags_ids.map { |tag_id| ContentfulApi.client.entry(tag_id) }
  end
end
