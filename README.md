# Localizer

Welcome to your new gem! **Localize** will help you localizing your system to any language you want and create localization files in any format

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'localizer'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install localizer

## Usage
You can get benefit of **Localize** features by following this guide:
1. **translate any text you want to any language**
```RUBY
Localizer::TranslatePlusClient.translate(source_language, target_langue, text)
```
Example
```RUBY
Localizer::TranslatePlusClient.translate('en', 'fr', 'Good Morning!')
# [200, "Bonjour!"]
```

2. get all the supported languages
```RUBY
Localizer::TranslatePlusClient.all_languages
# [200, {"Auto Detect"=>"auto", "Afrikaans"=>"af", "Albanian"=>"sq", "Amharic"=>"am", "Arabic"=>"ar", "Armenian"=>"hy", "Azerbaijani"=>"az", "Basque"=>"eu", "Belarusian"=>"be", "Bengali"=>"bn", "Bosnian"=>"bs", "Bulgarian"=>"bg", "Catalan"=>"ca", "Cebuano"=>"ceb", "Chinese (Simplified)"=>"zh-CN", "Chinese (Traditional)"=>"zh-TW", "Corsican"=>"co", "Croatian"=>"hr", "Czech"=>"cs", "Danish"=>"da", "Dutch"=>"nl", "English"=>"en", "Esperanto"=>"eo", "Estonian"=>"et", "Finnish"=>"fi", "French"=>"fr", "Frisian"=>"fy", "Galician"=>"gl", "Georgian"=>"ka", "German"=>"de", "Greek"=>"el", "Gujarati"=>"gu", "Haitian Creole"=>"ht", "Hausa"=>"ha", "Hawaiian"=>"haw", "Hebrew"=>"iw", "Hindi"=>"hi", "Hmong"=>"hmn", "Hungarian"=>"hu", "Icelandic"=>"is", "Igbo"=>"ig", "Indonesian"=>"id", "Irish"=>"ga", "Italian"=>"it", "Japanese"=>"ja", "Javanese"=>"jv", "Kannada"=>"kn", "Kazakh"=>"kk", "Khmer"=>"km", "Kinyarwanda"=>"rw", "Korean"=>"ko", "Kurdish (Kurmanji)"=>"ku", "Kurdish (Sorani)"=>"ckb", "Kyrgyz"=>"ky", "Lao"=>"lo", "Latin"=>"la", "Latvian"=>"lv", "Lithuanian"=>"lt", "Luxembourgish"=>"lb", "Macedonian"=>"mk", "Malagasy"=>"mg", "Malay"=>"ms", "Malayalam"=>"ml", "Maltese"=>"mt", "Maori"=>"mi", "Marathi"=>"mr", "Mongolian"=>"mn", "Myanmar (Burmese)"=>"my", "Nepali"=>"ne", "Norwegian"=>"no", "Nyanja (Chichewa)"=>"ny", "Odia (Oriya)"=>"or", "Pashto"=>"ps", "Persian"=>"fa", "Polish"=>"pl", "Portuguese (Portugal, Brazil)"=>"pt", "Punjabi"=>"pa", "Romanian"=>"ro", "Russian"=>"ru", "Samoan"=>"sm", "Scots Gaelic"=>"gd", "Serbian"=>"sr", "Sesotho"=>"st", "Shona"=>"sn", "Sindhi"=>"sd", "Sinhala (Sinhalese)"=>"si", "Slovak"=>"sk", "Slovenian"=>"sl", "Somali"=>"so", "Spanish"=>"es", "Sundanese"=>"su", "Swahili"=>"sw", "Swedish"=>"sv", "Tagalog (Filipino)"=>"tl", "Tajik"=>"tg", "Tamil"=>"ta", "Tatar"=>"tt", "Telugu"=>"te", "Thai"=>"th", "Turkish"=>"tr", "Turkmen"=>"tk", "Ukrainian"=>"uk", "Urdu"=>"ur", "Uyghur"=>"ug", "Uzbek"=>"uz", "Vietnamese"=>"vi", "Welsh"=>"cy", "Xhosa"=>"xh", "Yiddish"=>"yi", "Yoruba"=>"yo", "Zulu"=>"zu"}]
```

### CLI usage
Also you can get benefits of these features in your terminal
1. **translate any text you want to any languag**
```RUBY
$ bundle exec exe/localize translate --source="en" --target="fr" --text="Good Morning!"
# Bonjour!
```
2. **get all the supported languages**
```RUBY
$ bundle exec exe/localize all_languages
# {"Auto Detect"=>"auto", "Afrikaans"=>"af", "Albanian"=>"sq", "Amharic"=>"am", "Arabic"=>"ar", "Armenian"=>"hy", "Azerbaijani"=>"az", "Basque"=>"eu", "Belarusian"=>"be", "Bengali"=>"bn", "Bosnian"=>"bs", "Bulgarian"=>"bg", "Catalan"=>"ca", "Cebuano"=>"ceb", "Chinese (Simplified)"=>"zh-CN", "Chinese (Traditional)"=>"zh-TW", "Corsican"=>"co", "Croatian"=>"hr", "Czech"=>"cs", "Danish"=>"da", "Dutch"=>"nl", "English"=>"en", "Esperanto"=>"eo", "Estonian"=>"et", "Finnish"=>"fi", "French"=>"fr", "Frisian"=>"fy", "Galician"=>"gl", "Georgian"=>"ka", "German"=>"de", "Greek"=>"el", "Gujarati"=>"gu", "Haitian Creole"=>"ht", "Hausa"=>"ha", "Hawaiian"=>"haw", "Hebrew"=>"iw", "Hindi"=>"hi", "Hmong"=>"hmn", "Hungarian"=>"hu", "Icelandic"=>"is", "Igbo"=>"ig", "Indonesian"=>"id", "Irish"=>"ga", "Italian"=>"it", "Japanese"=>"ja", "Javanese"=>"jv", "Kannada"=>"kn", "Kazakh"=>"kk", "Khmer"=>"km", "Kinyarwanda"=>"rw", "Korean"=>"ko", "Kurdish (Kurmanji)"=>"ku", "Kurdish (Sorani)"=>"ckb", "Kyrgyz"=>"ky", "Lao"=>"lo", "Latin"=>"la", "Latvian"=>"lv", "Lithuanian"=>"lt", "Luxembourgish"=>"lb", "Macedonian"=>"mk", "Malagasy"=>"mg", "Malay"=>"ms", "Malayalam"=>"ml", "Maltese"=>"mt", "Maori"=>"mi", "Marathi"=>"mr", "Mongolian"=>"mn", "Myanmar (Burmese)"=>"my", "Nepali"=>"ne", "Norwegian"=>"no", "Nyanja (Chichewa)"=>"ny", "Odia (Oriya)"=>"or", "Pashto"=>"ps", "Persian"=>"fa", "Polish"=>"pl", "Portuguese (Portugal, Brazil)"=>"pt", "Punjabi"=>"pa", "Romanian"=>"ro", "Russian"=>"ru", "Samoan"=>"sm", "Scots Gaelic"=>"gd", "Serbian"=>"sr", "Sesotho"=>"st", "Shona"=>"sn", "Sindhi"=>"sd", "Sinhala (Sinhalese)"=>"si", "Slovak"=>"sk", "Slovenian"=>"sl", "Somali"=>"so", "Spanish"=>"es", "Sundanese"=>"su", "Swahili"=>"sw", "Swedish"=>"sv", "Tagalog (Filipino)"=>"tl", "Tajik"=>"tg", "Tamil"=>"ta", "Tatar"=>"tt", "Telugu"=>"te", "Thai"=>"th", "Turkish"=>"tr", "Turkmen"=>"tk", "Ukrainian"=>"uk", "Urdu"=>"ur", "Uyghur"=>"ug", "Uzbek"=>"uz", "Vietnamese"=>"vi", "Welsh"=>"cy", "Xhosa"=>"xh", "Yiddish"=>"yi", "Yoruba"=>"yo", "Zulu"=>"zu"}
```
3. **get the langugae code for any language**
```RUBY
$ bundle exec exe/localize language_code --language="French"
# fr
```
4. **check if language is supported or not**
```Ruby
$ bundle exec exe/localize supported --code="fr"
# true
```
5. **generate localization files** (in progress)
 - supported formats: `yml`
```RUBY
$ bundle exec exe/localize generate_locale language_code source_file_path format destination_path
```
Example
If we want to create a localization file for our keys file, we need to do the following:
```RUBY
$ bundle exec exe/localize generate_locale "fr" "config/locales/en.yml" "yml" "config/locales"
# create  config/locales/fr.yml
```
if the source file does not exist, we will create localization files same as our provided templates
```RUBY
$ bundle exec exe/localize generate_locale "fr" "config/locales/en.yml" "yml" "config/locales"
# create  config/locales/fr.yml
```

```RUBY
# en.yml
---
en:
  email_texts:
    common:
      good_morning: Good Morning!

# fr.yml
---
fr:
  email_texts:
    common:
      good_morning: Bonjour!

```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ashawareb/localizer.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
