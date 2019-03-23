# Iterate over the hash and build a new hash that has the languages as keys that point to a value of a hash that describes the type and style.

def reformat_languages(languages)
  # your code here
  hash = {}
  languages.each do |type, description|
    description.each do |language, type|
      if hash.has_key?(language)
        hash[language][:type] << type
        
      else
        hash[language] = type
        hash[language][:type] = [type]
      end
    end
  end
  hash
end
