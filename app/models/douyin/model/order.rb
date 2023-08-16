# frozen_string_literal: true

module Douyin
  module Model::Order
    extend ActiveSupport::Concern

    included do
      attribute :appid, :string
      attribute :code, :string
      attribute :verify_id, :string
      attribute :certificate_id, :string
      attribute :origin_code, :string
      attribute :account_id, :string
      attribute :uuid, :string
      attribute :verify_token, :string
      attribute :extra, :json

      belongs_to :app, foreign_key: :appid, primary_key: :appid, optional: true
    end


  end
end
