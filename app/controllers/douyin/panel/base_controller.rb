module Douyin
  class Panel::BaseController < PanelController

    private
    def set_app
      @app = App.find params[:app_id]
    end
  end
end
