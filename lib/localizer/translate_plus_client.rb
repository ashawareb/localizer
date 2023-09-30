require 'faraday'
require 'json'
require 'active_support'

module Localizer
  class TranslatePlusClient
    URL = 'https://translate-plus.p.rapidapi.com'
    X_RAPID_API_KEY = 'b3dbae9531mshbbdab592822f11dp1605bejsnf25649f22823'
    X_RAPID_API_HOST = 'translate-plus.p.rapidapi.com'

    def self.translate(source, target, text)
      source_language = source.to_s
      target_language = target.to_s
      text = text.to_s

      connection = faraday_connection
      response = connection.post('/translate') do |req|
        req.body = { source: source_language, target: target_language, text: text }.to_json
      end
      response_body = ActiveSupport::JSON.decode(response.body)

      return [response.status.to_i, response_body] unless response.status.to_i == 200

      [response.status.to_i, response_body['translations']['translation']]
    end

    def self.all_languages
      connection = faraday_connection
      response = connection.get('/')
      response_body = ActiveSupport::JSON.decode(response.body)

      return [response.status.to_i, response_body] unless response.status.to_i == 200

      [response.status.to_i, response_body['supported_languages']]
    end

    def self.faraday_connection
      Faraday.new(url: URL, headers: { 'content-type': 'application/json', 'X-RapidAPI-Key': X_RAPID_API_KEY, 'X-RapidAPI-Host': X_RAPID_API_HOST })
    end
  end
end
