Rails.application.routes.draw do
  scope RailsCom.default_routes_scope do

    namespace :douyin, defaults: { business: 'douyin' } do
      resources :apps

      namespace :panel, defaults: { namespace: 'panel' } do
        resources :apps
      end
    end

  end
end
