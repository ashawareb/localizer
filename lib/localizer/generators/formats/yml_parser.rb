require 'yaml'

module Localizer
  module Generators
    module Formats
      class YMLParser
        def self.parse(file_path, source_language, target_language)
          return puts 'File does not exist' unless File.exist?(file_path)

          yml_content = YAML.load(File.read(file_path))
          translated_content = keys_iterator(yml_content, source_language, target_language)

          File.open(file_path, "w") { |file| file.write(translated_content.to_yaml) }
        end

        private

        def self.keys_iterator(keys, source_language, target_language)
          translated_keys = keys

          translated_keys.each_pair do |k, v|
            if v.is_a?(Hash)
              keys_iterator(v, source_language, target_language)
            else
              v.replace(TranslatePlusClient.translate(source_language, target_language, v)[1])
            end
          end

          translated_keys
        end
      end
    end
  end
end
