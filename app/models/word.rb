class Word < ActiveRecord::Base
  # Remember to create a migration!

  def self.get_word_of_size(integer)
    # puts "integer is #{integer}"
    Word.where("size = #{integer}")
  end 


  def self.anagrams_for(word)
    # puts "word is #{word}"
    primary_hash = Word.string_to_hash(word)
    results_array = []
    words = Word.get_word_of_size(word.size + 1)
    words.each do |e| 
    # puts Word.string_to_hash(e.body)  
    results_array << e.body if Word.string_to_hash(e.body) == primary_hash
    end 
    # puts "hi"
    results_array
  end

  def self.string_to_hash(word)
    string_hash = {}
    dc_string = word.downcase
    dc_string.each_char do |let|
      if string_hash[let]
         string_hash[let] += 1
      else
        string_hash[let] = 1
      end 
    end 
    string_hash
  end 

end
