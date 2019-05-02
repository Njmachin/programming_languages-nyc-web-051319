def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |lang, type|
    type.each do |x, y|
      if new_hash == nil
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
This is the hash you will be operating on and reformatting, programmatically––meaning you will not simply re-write the hash in order to get the tests passing.

Iterate over the hash and build a new hash that has the languages as keys that point to a value of a hash that describes the type and style.

It should match the following format:

{
  :ruby => {
    :type => "interpreted",
    :style => [:oo]
  },
  :javascript => {
    :type => "interpreted",
    :style => [:oo, :functional]
  },
  :python => {
    :type => "interpreted",
    :style => [:oo]
  },
  :java => {
    :type => "compiled",
    :style => [:oo]
  },
  :clojure => {
    :type => "compiled",
    :style => [:functional]
  },
  :erlang => {
    :type => "compiled",
    :style => [:functional]
  },
  :scala => {
    :type => "compiled",
    :style => [:functional]
  }
}
