# frozen_string_literal: true

module Douyin::Api
  module App::GoodLife
    BASE = 'https://open.douyin.com/goodlife/v1/'

    def code_prepare(code)
      r = get 'fulfilment/certificate/prepare/', params: { code: code }, origin: BASE
      r['data']
    end

    def code_verify(verify_token:, poi_id:, encrypted_codes:, order_id:)
      r = post(
        'fulfilment/certificate/verify/',
        verify_token: verify_token,
        poi_id: poi_id,
        encrypted_codes: encrypted_codes,
        order_id: order_id,
        origin: BASE
      )
      r['data']
    end

    def code_cancel(verify_id:, certificate_id:)
      r = post 'fulfilment/certificate/cancel/', verify_id: verify_id, certificate_id: certificate_id, origin: BASE
      r['data']
    end

  end
end
