require 'thor/group'

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
          template(File.dirname(__FILE__ ) + '/templates/models.en.yml', "#{destination_path}/models.#{language_code}.yml")
          template(File.dirname(__FILE__ ) + '/templates/common.en.yml', "#{destination_path}/common.#{language_code}.yml")
          template(File.dirname(__FILE__ ) + '/templates/en.rb', "#{destination_path}/#{language_code}.rb")
        else
          template(source_file, "#{destination_path}/#{language_code}.#{extension}")
        end
      end
    end
  end
end
