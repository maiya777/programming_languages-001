def reformat_languages(languages)
  new_hash = {}
  languages.each {|style, lang_hash| 
  lang_hash.each {|k, v| if !(new_hash.key?(k))
    new_hash [k] = v
  end
    if !(new_hash[k].key?(:style)) 
        new_hash[k][:style] = []
    end
    if !(new_hash[k][:style].include?(style))
      new_hash[k][:style]<<style
    end

     }
  }
  new_hash
end
