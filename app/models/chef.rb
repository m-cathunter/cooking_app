class Chef
  attr_accessor :id, :name

  def initialize(contentful_entry)
    @id = contentful_entry.id
    @name = contentful_entry.fields[:name]
  end
end
