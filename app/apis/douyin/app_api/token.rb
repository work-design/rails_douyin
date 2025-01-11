# frozen_string_literal: true

class Douyin::AppApi
  module Token
    BASE = 'https://open.douyin.com/oauth/'

    def token
      r = client.with_headers('Content-Type': 'application/json').with(origin: BASE).post(
        'client_token/',
        body: { client_key: @app.appid, client_secret: @app.secret, grant_type: 'client_credential' }.to_json
      )
      r.json['data']
    end
  end
end
