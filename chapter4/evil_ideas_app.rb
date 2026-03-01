require_relative "wordlist"

def encodes_idea
  print "Enter your new idea: "
  idea = gets
  
  # Swap evil idea in code words
  CODE_WORDS.each do |real, code|
    idea.gsub!( real, code)
  end
  
  # Save the jibberish to a new file
  print "File encoded. Please enter a name for this idea: "
  idea_name = gets.strip
  File::open( "./ideas/idea-" + idea_name + ".txt", "w") do |f|
    f << idea.upcase.reverse.gsub!(" ", "")
  end
end

def decode_ideas
  # Print each idea with the words fixed
  Dir["./ideas/idea-*.txt"].each do |file_name|
    idea = File::read (file_name)
    idea.downcase!
    idea.reverse!
    
    CODE_WORDS.each do |real, code|
      idea.gsub!(code.gsub(" ", "").downcase, real)
    end
    
    puts idea
  end
end

# encodes_idea
decode_ideas
