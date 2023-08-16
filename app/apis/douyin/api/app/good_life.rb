# frozen_string_literal: true

module Douyin::Api
  module App::GoodLife
    BASE = 'https://open.douyin.com/goodlife/v1/'

    def code_prepare(code)
      r = get 'fulfilment/certificate/prepare/', params: { code: code }, origin: BASE
      r['data']
    end

    def code_verify(verify_token, poi_id)
      r = post 'fulfilment/certificate/verify/', verify_token: verify_token, poi_id: poi_id, origin: BASE
      r['data']
    end

  end
end
