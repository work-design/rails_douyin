# frozen_string_literal: true

module Douyin
  module Model::Shop
    extend ActiveSupport::Concern

    included do
      attribute :name, :string
      attribute :appid, :string, index: true
      attribute :poi_id, :string

      belongs_to :organ, class_name: 'Org::Organ', optional: true

      belongs_to :app, foreign_key: :appid, primary_key: :appid

      has_many :orders, primary_key: :appid, foreign_key: :appid
    end

    def api
      return @api if defined? @api
      @api = Api::App.new(app)
    end

    def prepare_order(code)
      r = api.code_prepare(code)
      if r['error_code'] == 0
        order = orders.find_or_initialize_by(uuid: r['order_id'])
        order.code = code
        order.verify_token = r['verify_token']
        order.extra = r['certificates']
        order.save
      end
    end

  end
end
