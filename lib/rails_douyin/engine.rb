require 'rails_com'
module RailsDouyin
  class Engine < ::Rails::Engine

    config.generators do |g|
      g.resource_route false
      g.helper false
      g.templates.unshift File.expand_path('lib/templates', RailsCom::Engine.root)
    end

  end
end
