class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  private

  def serialize(obj, with: nil)
    serializer = with || begin
      model = obj.try(:model) || obj.class
      "#{model.name}Serializer".constantize
    end
    serializer.new(obj).serialize
  end

  def per_page
    ::Settings.app.items_per_page
  end

  def page
    [ params[:page].to_i, 0 ].max
  end
end
