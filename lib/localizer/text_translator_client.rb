module Localizer
  class TextTranslatorClient
    URL = 'https://text-translator2.p.rapidapi.com'
    X_RAPID_API_KEY = 'b3dbae9531mshbbdab592822f11dp1605bejsnf25649f22823'
    X_RAPID_API_HOST = 'text-translator2.p.rapidapi.com'

    def self.translate(source_language = 'en', target_language, text)
      source_language = source_language.to_s
      target_language = target_language.to_s
      text = text.to_s

      body = {
        source_language: source_language,
        target_language: target_language,
        text: text
      }

      response = connection.post('/translate') do |req|
        req.body = body.to_json
      end

      return [response.status.to_i, 'Failed Request' ] unless response.status.to_i == 200

      response_body = ActiveSupport::JSON.decode(response.body)
      [response.status.to_i, response_body['data']['translatedText']]
    end

    def self.all_languages
      response = connection.get('/getLanguages')
      return [response.status.to_i, 'Failed Request' ] unless response.status.to_i == 200

      response_body = ActiveSupport::JSON.decode(response.body)
      [response.status.to_i, response_body['data']['languages']]
    end

    private

    def connection
      Faraday.new(url: URL, headers: { 'X-RapidAPI-Key': X_RAPID_API_KEY, 'X-RapidAPI-Host': X_RAPID_API_HOST })
    end
  end
end
