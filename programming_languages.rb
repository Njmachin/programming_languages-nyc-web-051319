def reformat_languages(lang)
  new_hash = {}
  
  lang.each do |lan, type|
    type.each do |x, y|
      if new_hash == nil
        new_hash[x] = y
      end
      new_hash[x][:style] = []
      new_hash[x][:style] << lan
    end
  end
  new_hash[:javascript][:style][:]
      
  
end
