class Recipe
  attr_accessor :id, :title, :description, :photo, :chef, :tags

  def initialize(contentful_entry)
    @id = contentful_entry.id
    @title = contentful_entry.fields[:title]
    @description = contentful_entry.fields[:description]
    @photo = contentful_entry.fields[:photo]&.url

    if contentful_entry.fields[:chef]
      @chef = Chef.new(contentful_entry.fields[:chef])
    end

    if contentful_entry.fields[:tags]
      @tags = contentful_entry.fields[:tags].map(&:name)
    end
  end

  def self.all
    ContentfulApi.recipes.map do |recipe|
      Recipe.new(recipe)
    end
  end

  def self.find(recipe_id)
    recipe = ContentfulApi.find(recipe_id)
    Recipe.new(recipe)
  end
end
