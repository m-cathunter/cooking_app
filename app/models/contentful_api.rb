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
end
