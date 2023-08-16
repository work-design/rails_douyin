# frozen_string_literal: true

module Douyin::Api
  module App::GoodLife
    BASE = 'https://open.douyin.com/goodlife/v1/'

    def code_prepare(code)
      get 'fulfilment/certificate/prepare/', params: { code: code }, origin: BASE
    end

  end
end
