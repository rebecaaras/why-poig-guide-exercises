class ArrayMine < Array
# try in irb
# require 'path/to/array_mine.rb'
# 
# my_arr = ArrayMine.new
# my_arr = ["this", "is not", "some nice try"]
# my_arr.join("**")
# => "this**is not**some nice try"
# rooms = ArrayMine[1, 2, 3]
# print "We have " + rooms.join(", ", "%d bed") + " rooms"


  def join ( sep = $, , format = '%s') # what does this $, meeean? Oh it's the default separator!
    collect do |item|
      sprintf(format, item)
    end.join ( sep )
  end
end

