def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |lang, type|
    type.each do |x, y|
      if new_hash[x] == nil
        new_hash[x] = y
      end
      new_hash[x][:style] = []
      new_hash[x][:style] << lang
    end
  end
  new_hash[:javascript][:style] << :oo
      
  new_hash
end


languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}
