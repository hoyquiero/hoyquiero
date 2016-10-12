class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def contentful
    contentful_config = ContentfulConfig.where(name: ENV['CONTENTFUL_ENV']).first

    @client = Contentful::Client.new(
      space: contentful_config.space_id,
      access_token: contentful_config.access_token,
      dynamic_entries: :auto,
      raise_errors: true
    )
  end
end
