# frozen_string_literal: true

module Douyin::Api
  module App::GoodLife
    BASE = 'https://open.douyin.com/goodlife/v1/'

    def code_prepare(code)
      r = get 'fulfilment/certificate/prepare/', params: { code: code }, origin: BASE
      r['data']
    end

  end
end
