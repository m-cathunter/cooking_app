class ContentfulApi
  # Create contentful client
  def self.client
    @client ||= Contentful::Client.new(
      access_token: ENV['ACCESS_TOKEN'],
      space: ENV['SPACE'],
      dynamic_entries: :auto,
      raise_errors: true
    )
  end

  # Return only objects with content type - recipe
  def self.recipes
    client.entries(content_type: 'recipe')
  end
end
