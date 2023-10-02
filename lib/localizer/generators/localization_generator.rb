require 'thor/group'
require 'localizer/generators/formats/yml_parser'

module Localizer
  module Generators
    class LocalizationGenerator < Thor::Group
      include Thor::Actions

      argument :language_code, type: :string
      argument :source_file, type: :string
      argument :extension, type: :string
      argument :destination_path, type: :string

      def self.source_root
        Bundler.root
      end

      def copy_keys
        unless File.exist?(source_file)
          template(File.dirname(__FILE__ ) + '/templates/en.yml', "#{destination_path}/#{language_code}.yml")
        else
          template(source_file, "#{destination_path}/#{language_code}.#{extension}")
        end

        Localizer::Generators::Formats::YMLParser.parse("#{destination_path}/#{language_code}.yml", 'en', language_code)
      end
    end
  end
end
