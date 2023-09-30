require 'thor'
require 'localizer'

module Localizer
  class CLI < Thor
    desc 'translate text', 'translate text to desired langugae'
    method_option :source, type: :string, required: true
    method_option :target, type: :string, required: true
    method_option :text, type: :string, required: true
    def translate
      puts Localizer::TranslatePlusClient.translate(options[:source], options[:target], options[:text])[1]
    end

    desc 'all_languages', 'get all the supported languages'
    def all_languages
      puts Localizer::TranslatePlusClient.all_languages[1]
    end

    desc 'language_code language', 'get the language code for specific language'
    method_option :language, type: :string, required: true
    def language_code
      supported_languages = Localizer::TranslatePlusClient.all_languages[1]
      language = options[:language]

      if supported_languages[language].nil?
        puts 'Invalid Language Name'
      else
        puts supported_languages[language]
      end
    end

    desc 'supported code', 'check if language is supported'
    method_option :code, type: :string, required: true
    def supported
      supported_languages = Localizer::TranslatePlusClient.all_languages[1]
      puts supported_languages.has_value?(options[:code])
    end
  end
end
