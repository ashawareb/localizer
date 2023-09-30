require 'localizer'

RSpec.describe Localizer::TranslatePlusClient do
  context "#translate" do
    it 'should return the translation of a text' do
      source_language = 'en'
      target_language = 'fr'
      text = 'Good Morning!'

      result = Localizer::TranslatePlusClient.translate(source_language, target_language, text)
      expect(result[0]).to eql(200)
      expect(result[1]).to eql('Bonjour!')
    end
  end

  context "#all_languages" do
    it 'should return all languages' do
      result = Localizer::TranslatePlusClient.all_languages
      expect(result[0]).to eql(200)
    end
  end
end
