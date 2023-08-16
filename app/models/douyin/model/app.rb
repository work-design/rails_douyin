# frozen_string_literal: true

module Douyin
  module Model::App
    extend ActiveSupport::Concern

    included do
      attribute :appid, :string, index: true
      attribute :secret, :string
      attribute :access_token, :string
      attribute :access_token_expires_at, :datetime
      attribute :refresh_token, :string
      attribute :refresh_token_expires_at, :datetime
      attribute :open_id, :string
    end

  end
end
