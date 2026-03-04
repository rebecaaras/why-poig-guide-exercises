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

