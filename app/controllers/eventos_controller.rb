class EventosController < ApplicationController
  # GET /
  def index
    @eventos = contentful.entries(content_type: 'evento', include: 5)
  end
end
