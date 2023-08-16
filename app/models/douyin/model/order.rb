# frozen_string_literal: true

module Douyin
  module Model::Order
    extend ActiveSupport::Concern

    included do
      attribute :poi_id, :string
      attribute :appid, :string
      attribute :code, :string
      attribute :verify_id, :string
      attribute :certificate_id, :string
      attribute :origin_code, :string
      attribute :account_id, :string
      attribute :uuid, :string
      attribute :verify_token, :string
      attribute :extra, :json
      attribute :verify_results, :json

      belongs_to :shop, foreign_key: :poi_id, primary_key: :poi_id, optional: true
      belongs_to :app, foreign_key: :appid, primary_key: :appid, optional: true
    end

    def encrypted_codes
      extra.map(&->(i){ i['encrypted_code'] })
    end

    def code_verify!
      r = app.api.code_verify(verify_token: verify_token, poi_id: poi_id, encrypted_codes: encrypted_codes, order_id: uuid)
      self.verify_results = r['verify_results']
      self.save
      r
    end

    def code_cancel
      verify_results.map do |result|
        app.api.code_cancel(
          verify_id: result['verify_id'],
          certificate_id: result['certificate_id']
        )
      end
    end


  end
end
