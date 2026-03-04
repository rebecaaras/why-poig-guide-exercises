# Bang version -> alters original sentence
def wipe_mutterings_from!( sentence )
  unless sentence.respond_to? :include? #checks if the object has the include method
    raise ArgumentError,
      "cannot wipe mutterings from a #{ sentence.class }"
  end

  while sentence.include? "("
    open = sentence.index( "(" )
    close = sentence.index( ")", open) #open here is the offset
    sentence[open..close] = "" if close
    sentence.gsub!("  ", " ")
  end
end

# Soft version -> Alters a copy of sentence
def wipe_mutterings_from( sentence )
  unless sentence.respond_to? :include?
    raise ArgumentError,
      "cannot wipe mutterings from a #{ sentence.class }"
  end
  # creates a copy of sentence
  sentence = sentence.dup

  while sentence.include? "("
    open = sentence.index( "(" )
    close = sentence.index( ")", open)
    sentence[open..close] = "" if close
    sentence.gsub!("  ", " ")
  end
  sentence
end

# More elegantly now... avoid infinite loop in case of non matching
# parenthesis
def elegantly_wipe_mutterings_from( sentence )
  unless sentence.respond_to? :gsub
    raise ArgumentError,
      "cannot wipe mutterings from a #{ sentence.class }"
  end

  sentence.gsub(/\([-\w]+\)/, '')
end
