get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do
  @input = params[:input]

  redirect to "/#{@input}"
end 

get '/:word' do
  @word = params[:word]
  @anagrams = Word.anagrams_for(@word)

  erb :anagrams
end
