IO.foreach('./db/words') do |word|
  Word.create(:body => word.chomp, :size => word.size)
end
