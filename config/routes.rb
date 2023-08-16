Rails.application.routes.draw do
  scope RailsCom.default_routes_scope do

    namespace :douyin, defaults: { namespace: 'douyin' } do

    end

  end
end
