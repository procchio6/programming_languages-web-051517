def reformat_languages(languages)
  new_languages = {}
  languages.each do |oo_or_functional, programming_languages|
    programming_languages.each do |language, data|
      new_languages[language] = {} if new_languages[language].nil?
      if new_languages[language][:style].nil?
        new_languages[language][:style] = []
      end
      new_languages[language][:style] << oo_or_functional
      data.each do |key, value|
        new_languages[language][key] = value
      end
    end
  end
  new_languages
end
