module Douyin
  class Panel::ShopsController < Panel::BaseController
    before_action :set_app
    before_action :set_new_shop, only: [:new, :create]

    private
    def set_new_shop
      @shop = @app.shops.build(shop_params)
    end

    def shop_params
      params.fetch(:shop, {}).permit(
        :name,
        :poi_id
      )
    end

  end
end
